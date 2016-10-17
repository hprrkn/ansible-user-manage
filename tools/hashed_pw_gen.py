# coding:utf-8
import getpass
import crypt

get_pass = getpass.getpass('input your password: ')
confirm_pass = getpass.getpass('Retype new password to comfirm: ')

print

if get_pass == confirm_pass:
	    print "  ↓↓↓hashed password↓↓↓"
	    print crypt.crypt(get_pass, "$1$SomeSalt$")
else:
	    print "Sorry, passwords do not match."
