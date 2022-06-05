def isAnnotation(line):
    return line["line"]["type"] == "annotation"

def isText(line):
    return line["line"]["type"] == "text"

def getName(line):
    return line["line"]["params"][0]["value"];

def getText(line):
    return line["line"]["value"];
