# coding:utf-8
import sys
import crypt


argv = sys.argv
print crypt.crypt(argv[1], "$1$SomeSalt$")
