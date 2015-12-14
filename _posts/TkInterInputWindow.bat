@setlocal enabledelayedexpansion && python -x "%~f0" %* & exit /b !ERRORLEVEL!
#start python code here (tested on Python 2.7.4)
# Using Python's built-in Tkinter to create an input window:
import Tkinter
from tkSimpleDialog import askstring
root = Tkinter.Tk()
root.withdraw()
title = askstring('Blog Post Title', 'Title')
print title
raw_input()