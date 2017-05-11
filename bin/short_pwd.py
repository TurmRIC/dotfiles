#! /usr/bin/env python3

import os
import re

pwd = os.getcwd()
homedir = os.path.expanduser('~')
pwd = pwd.replace(homedir, '~', 1)
pwd = pwd.replace('4D_Tintagel', '4D')
pwd = pwd.replace('4D_Overlay', '4D_O')
pwd = pwd.replace('4P_Galiano', '4P')
pwd = pwd.replace('4P2_Parker', '4P2')
pwd = pwd.replace('4P_Overlay', '4P_O')
pwd = pwd.replace('target_src', 't_s')
pwd = pwd.replace('build_tools', 'b_t')
pwd = pwd.replace('test_tools', 't_t')
if len(pwd) > 40:
    pwd = re.sub(r'\bbin\b', 'b', pwd)
    pwd = re.sub(r'\blib\b', 'b', pwd)
    pwd = re.sub(r'\bsrc\b', 's', pwd)
    pwd = re.sub(r'\btest\b', 't', pwd)
    if len(pwd) > 40:
        pwd = pwd[:10]+'...'+pwd[-27:] # first 10 chars+last 27 chars
print(pwd)
