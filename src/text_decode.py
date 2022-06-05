#!/usr/bin/python3
import json
import re
import constants
from line import *

def decode_from_text(stext,sjson):
    jsondata = json.loads(sjson)
    scriptdata = stext

    original = []
    translated = []
    lineList = scriptdata.split(constants.END_LINE)
    for lineNo in range(0,len(lineList),3):
        try:
            originaltext = re.findall("[[](.*)[]](.*)",lineList[lineNo+0])
            original.append(originaltext[0][0])
            splitOrigin = originaltext[0][1].split("/n")
            original.extend(splitOrigin)

            translatedtext = re.findall("[[](.*)[]](.*)",lineList[lineNo+1])
            translated.append(translatedtext[0][0])
            #splitTranslated = [translatedtext[0][1]]
            splitTranslated = [translatedtext[0][1][i:i+30] for i in range(0,len(translatedtext[0][1]),30)]
            #确保翻译后与翻译前行数一致
            while len(splitTranslated) < len(splitOrigin):
                splitTranslated.append(" ")
            translated.extend(splitTranslated)
        except:
            break

    translated.reverse()

    #替换JSON文件对应位置
    jsonLineList = jsondata["lines"]
    currentText = translated.pop()
    for line in jsonLineList[1:]:
        if isAnnotation(line) and line["line"]["name"] == "Talk":
            line["line"]["params"][0]["value"] = currentText
            currentText = translated.pop()
        elif isText(line):

            line["line"]["value"] = currentText
            try:
                currentText = translated.pop()
            except:
                break

    return json.dumps(jsondata,indent=4,sort_keys=True)
