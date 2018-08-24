#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

def getParam(filename, var1, var2, var3):
    print('filename: {}'.format(filename))
    print('first: {}'.format(var1))
    print('second: {}'.format(var2))
    print('third: {}'.format(var3))


if __name__ == '__main__':
    filename = sys.argv[0]
    var1 = sys.argv[1]
    var2 = sys.argv[2]
    var3 = sys.argv[3]
    getParam(filename, var1, var2, var3)
    