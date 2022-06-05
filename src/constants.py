#!/usr/bin/python3

import sys

MODE_DECODE = 'DECODE'
MODE_ENCODE = 'ENCODE'
MODE_DUOLINE_DECODE = "DUOLINE_DECODE"
MODE_DUOLINE_ENCODE = "DUOLINE_ENCODE"

JSON_INDENT = 2

END_LINE = '\r\n'

if sys.platform == 'linux':
    SEPARATOR = '/'
    pass
elif sys.platform == 'darwin':
    SEPARATOR = '/'
    pass
else:
    SEPARATOR = '\\'
    pass
