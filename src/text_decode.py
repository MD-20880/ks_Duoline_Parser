import json
from line import *


with open("result/script/00_01.ks.json", 'r') as f:
    data = json.load(f)

lines = data["lines"]
lineList = [] #存储着所有与翻译相关的行

#这个For循环提取所有@Talk 和 text行
for line in lines:
    if isAnnotation(line) and line["line"]["name"] == "Talk":
        lineList.append(line)
    elif isText(line):
        lineList.append(line)

#reverse，为了pop做准备
lineList.reverse()

#EditingText 最终文档，其格式为
#[name] CONTENTS \n     原文行
#[name] CONTENTS \n     翻译行
#\n
# ......
#其中，若原文行中出现换行，则由/n表示
EditingText = ""
currentLine = lineList.pop()
while len(lineList) > 0:
    name = ""
    text = []
    #此if 块
    if isAnnotation(currentLine):
        name = getName(currentLine)
        currentLine = lineList.pop()
        while not isAnnotation(currentLine):
            text.append(getText(currentLine))
            try:
                currentLine = lineList.pop()
            except:
                break
        EditingText += ("[" + name + "]" + "/n".join(text) + "\n" )*2 + "\n"
    else:
        currentLine = lineList.pop()

with open("result/test",'w') as f:
    f.write(EditingText)




