@setlocal enabledelayedexpansion && py -x "%~f0" %* & exit /b !ERRORLEVEL!
#start python code here (tested on Python 2.7.4)
import os, string, datetime
import easygui # to install: pip install EasyGUI

result = easygui.enterbox(msg="Blog Post Title", title="Name query")
postname = result.lower().strip().replace(" ", "-")
postname = datetime.date.today().strftime("%Y-%m-%d-") + postname + ".md"

slugline = """---
layout: post
published: false
title: %s
---

""" % string.capwords(result)

with open(postname, 'w') as f:
    f.write(slugline)

os.startfile(postname) # Windows only, but there's a Mac equivalent
