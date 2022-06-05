if not __debug__:
    from src import  text_encode

else:

    import text_encode


def decode(input_file):
    with open(input_file) as f:
        read_input_data = f.read()

    read_lines = read_input_data

    if read_lines is None:
        return None

    return text_encode.encode_to_text(read_lines)