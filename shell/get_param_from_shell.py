#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
从bash执行sh脚本的时候就传入一个参数，然后再sh脚本里面为py脚本传入了剩下的参数!
"""

import sys

def getParam(filename, var, var1, var2, var3):
    print('filename: {}'.format(filename))
    print('传入的: {}'.format(var))
    print('first: {}'.format(var1))
    print('second: {}'.format(var2))
    print('third: {}'.format(var3))


if __name__ == '__main__':
    filename = sys.argv[0]
    var = sys.argv[1]
    var1 = sys.argv[2]
    var2 = sys.argv[3]
    var3 = sys.argv[4]
    getParam(filename, var, var1, var2, var3)
    