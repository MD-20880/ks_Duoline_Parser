#!/usr/bin/python3

import argparse
import glob
import os
import re

if not __debug__:
    from src import constants
    from src import decode, encode
    from src import text_decode,text_encode
    from src import config
    from src.log import Log
else:
    import constants
    import decode, encode
    from src import text_decode,text_encode
    import config
    from log import Log
    import json_decode
    import json


def __main__():
    parser = argparse.ArgumentParser()
    parser.add_argument('--input', dest='input_dir', required=True, nargs=1, type=str, help='Input dir')
    parser.add_argument('--output', dest='output_dir', required=True, nargs=1, type=str, help='Output dir')
    parser.add_argument('--mode', dest='mode', required=True, choices=[constants.MODE_ENCODE, constants.MODE_DECODE,constants.MODE_DUOLINE_DECODE,constants.MODE_DUOLINE_ENCODE])
    parser.add_argument('--nolog', dest='nolog', required=False, action='store_true', default=False)
    parser.add_argument('--silent', '-s', dest='silent', required=False, action='store_true', default=False)
    args = parser.parse_args()

    input_dir = args.input_dir[0]
    output_dir = args.output_dir[0]
    mode = args.mode.upper()
    Log.should_log = args.nolog
    Log.silent = args.silent

    Log.find_next_log_file_path()  # Find next path for log file

    config.read_config()

    files = find_files(mode, input_dir)

    Log.log_to_file(True, 'Found {} files\n'.format(len(files)))

    if mode == constants.MODE_DECODE:
        for ks_file in files:
            decoded = decode.decode(ks_file)

            if decoded is None:
                Log.log_to_file(True, 'Failed to decode input file \"{}\"?!'.format(ks_file))
                continue

            write_file(output_dir, ks_file, mode, decoded)
            continue
        return
    elif mode == constants.MODE_ENCODE:
        for ks_json_file in files:
            encoded = encode.encode(ks_json_file)
            write_file(output_dir, ks_json_file, mode, encoded)
            continue
        return
    elif mode == constants.MODE_DUOLINE_DECODE:
        for ks_file in files:
            decoded = decode.decode(ks_file)

            if decoded is None:
                Log.log_to_file(True, 'Failed to decode input file \"{}\"?!'.format(ks_file))
                continue
            write_file(output_dir,ks_file,constants.MODE_DECODE,decoded)
            decodedText = text_encode.encode_to_text(decoded)
            if decodedText == "":
                Log.log_to_file(True, 'Failed to decode input file \"{}\"?!'.format(ks_file))
                continue

            write_file(output_dir,ks_file,mode,decodedText)

    elif mode == constants.MODE_DUOLINE_ENCODE:
        for ks_file in files:
            textContent = ""
            try:
                with open(ks_file+".txt") as f:
                    textContent = f.read()
            except:
                continue
            textContent = textContent.replace("\n","\r\n")
            decoded = decode.decode(ks_file);
            encoded_js = text_decode.decode_from_text(textContent,decoded)
            encoded_json = json.loads(encoded_js)
            encoded = json_decode.decode_from_json(encoded_json)
            write_file(output_dir, ks_file, mode, encoded)
            continue
        return


    Log.close_log_file()
    return


def find_files(mode, _dir):
    if mode == constants.MODE_DECODE or mode == constants.MODE_DUOLINE_DECODE or mode == constants.MODE_DUOLINE_ENCODE:
        ks_files = []
        for root_dir, subdirs, files in os.walk(_dir):
            if len(files) < 1:  # Skip dirs with no files
                continue
            for ks in glob.iglob(root_dir + constants.SEPARATOR + '*.ks'):
                ks_files.append(ks)
                continue
        return ks_files

    elif mode == constants.MODE_ENCODE:
        json_files = []
        for root_dir, subdirs, files in os.walk(_dir):
            if len(files) < 1:  # Skip dirs with no files
                continue
            for ks_json in glob.iglob(root_dir + constants.SEPARATOR + '*.ks.json'):
                json_files.append(ks_json)
                continue
        return json_files




def write_file(output_dir, file_to_write, mode, data):
    out_file_name = file_to_write
    index = file_to_write.rindex(constants.SEPARATOR)
    if index != -1:
        out_file_name = file_to_write[index + 1:]
        pass

    if mode == constants.MODE_DECODE:
        out_file_name += '.json'
        pass
    elif mode == constants.MODE_ENCODE:
        out_file_name = data['file_name']
        pass
    elif mode == constants.MODE_DUOLINE_DECODE:
        out_file_name += '.txt'
        pass
    elif mode == constants.MODE_DUOLINE_ENCODE:
        out_file_name += '.result'

    out_file_path = output_dir + constants.SEPARATOR + out_file_name
    wtf_dir = out_file_path[:out_file_path.rindex(constants.SEPARATOR)]

    try:
        os.makedirs(wtf_dir)
        pass
    except FileExistsError:
        pass

    if mode == constants.MODE_DECODE:
        out_file = open(out_file_path, 'w+t', encoding='utf8')  # Write file as utf-8 for universal use
        pass
    elif mode == constants.MODE_ENCODE or mode == constants.MODE_DUOLINE_ENCODE:
        out_file = open(out_file_path, 'w+t', encoding=config.cfg.input_file_encoding)  # Write file with specified encoding from cfg
        pass
    elif mode == constants.MODE_DUOLINE_DECODE:
        out_file = open(out_file_path, 'w+t', encoding='utf8')
        pass
    else:
        Log.log_to_file(True, 'Unknown mode selected?!')
        breakpoint()
        return None

    if mode == constants.MODE_DECODE:
        out_file.write(data)
        pass
    elif mode == constants.MODE_ENCODE or mode == constants.MODE_DUOLINE_ENCODE:
        if data is not None:
            out_file.writelines(data['decoded_lines'])
            pass
        pass
    elif mode == constants.MODE_DUOLINE_DECODE:
        out_file.write(data)
        pass
    out_file.close()

    if mode == constants.MODE_DECODE:
        chosen_mode = 'decoded'
        pass
    elif mode == constants.MODE_ENCODE:
        chosen_mode = 'encoded'
        pass
    elif mode == constants.MODE_DUOLINE_DECODE:
        chosen_mode = 'duoline_decode'
        pass
    else:
        chosen_mode = " "



    Log.log_to_file(True, 'Wrote {0} file \"{1}\"\n'.format(chosen_mode, out_file_name))
    return


if __name__ == '__main__':
    __main__()
    pass
