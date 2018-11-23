#! /usr/bin/env python3
# Not really so 'common' right now, but it is a start

import os
import re
import subprocess
import socket
import json
import math


def get_work_dir(max_len):
    work_dir = os.getcwd()
    homedir = os.path.expanduser('~')
    work_dir = work_dir.replace(homedir, '~', 1)
    if len(work_dir) <= max_len:
        return work_dir
    rep_file = open('{}/.common_prompt.json'.format(homedir), 'r')
    reps = json.load(rep_file)
    for rename in reps['DirectoryAliasing']['FirstPass']:
        work_dir = work_dir.replace(rename['LongName'], rename['ShortName'])
    if len(work_dir) <= max_len:
        return work_dir
    for regs in reps['DirectoryAliasing']['SecondPass']:
        work_dir = re.sub(regs['RegEx'], regs['Replacement'], work_dir)
    if len(work_dir) <= max_len:
        return work_dir
    # split available characters from front and back
    split_chars = math.floor((max_len - 3)/2)
    work_dir = work_dir[:split_chars]+'...'+work_dir[-split_chars:]
    return work_dir


def main():
    colour_string = '%F{{{}}}'
    main_colour = colour_string.format(188)
    background = '%K{24}'
    reset_background = '%k'
    reset_forground = '%f'
    host_colour = colour_string.format(208)
    user_colour = colour_string.format(154)
    work_dir_colour = colour_string.format(214)
    prompt_char = '▶'
    prompt_colour = '%(?.%F{2}.%F{1})'
    fill_char = '─'
    left_char = '┤'
    right_char = '├'

    prompt = ''
    rows, columns = subprocess.check_output(['stty', 'size']).decode().split()
    rows = int(rows)
    columns = int(columns)
    tmux = os.getenv('TMUX')
    ppid = os.getppid()
    prompt += '{}{}'.format(main_colour, background)
    prompt_len = 0
    if tmux is None:
        non_local_format = '{}{} {}{}{}@{}{}{} {}'
        user = os.getenv('USER')
        hostname = socket.gethostname()
        prompt += non_local_format.format(
                fill_char,
                left_char,
                user_colour,
                user,
                main_colour,
                host_colour,
                hostname,
                main_colour,
                right_char)
        prompt_len += len(user) + len(hostname)
        prompt_len += len(non_local_format.format(
            fill_char, left_char, '', '', '', '', '', '', right_char))
    work_dir_fmt = '{} {}{}{} {}'
    work_fmt_len = len(work_dir_fmt.format(left_char, '', '', '', right_char))
    max_work_dir_len = (columns
                        - prompt_len
                        - work_fmt_len
                        - 2)
    work_dir = get_work_dir(max_work_dir_len)
    cols_remaining = (columns - len(work_dir) - work_fmt_len)
    half_cols = math.floor(cols_remaining / 2)
    if (half_cols > prompt_len):
        prompt += fill_char * (half_cols - prompt_len)
    else:
        prompt += fill_char
    prompt += work_dir_fmt.format(
            left_char, work_dir_colour, work_dir, main_colour, right_char)
    remainder = half_cols + cols_remaining % 2
    if (half_cols < prompt_len):
        remainder += (half_cols - prompt_len - 1)
    prompt += fill_char * remainder
    prompt += fill_char * 2
    prompt += '{}{}{}{} '.format(
            prompt_colour,
            prompt_char,
            reset_background,
            reset_forground)
    print(prompt)


if __name__ == '__main__':
    main()
