#!/usr/bin/python3
import json
import re
from line import *

with open("result/script/00_01.ks.json", 'r') as f:
    jsondata = json.load(f)
with open("result/test",'r') as f:
    scriptdata = f.read()

original = []
translated = []
lineList = scriptdata.split("\n")
for lineNo in range(0,len(lineList),3):
    try:
        print(lineNo)
        originaltext = re.findall("[[](.*)[]](.*)",lineList[lineNo+0])
        original.append(originaltext[0][0])
        splitOrigin = originaltext[0][1].split("/n")
        original.extend(splitOrigin)
        translatedtext = re.findall("[[](.*)[]](.*)",lineList[lineNo+1])
        translated.append(translatedtext[0][0])
        splitTranslated = [translatedtext[0][1][i:i+20] for i in range(0,len(translatedtext[0][1]),20)]
        while len(splitTranslated) < len(splitOrigin):
            splitTranslated.append("")

        translated.extend(splitTranslated)
    except:
        break



translated.reverse()


jsonLineList = jsondata["lines"]
current = translated.pop()
for line in jsonLineList[1:]:
    if isAnnotation(line) and line["line"]["name"] == "Talk":
        line["line"]["params"][0]["value"] = current
        current = translated.pop()
    elif isText(line):
        line["line"]["value"] = current
        current = translated.pop()

print (jsonLineList)
with open("result/script/00_01.ks.json", 'w') as f:
    json.dump(jsondata,f,indent=4,sort_keys=True)
