import os
from pathlib import Path
import subprocess
import socket

# def is_open(ip, port):
#     s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#     try:
#         s.connect((ip, int(port)))
#         s.shutdown(2)
#         return True
#     except:
#         return False
#

# book="fd . ~/PDFs/Math -t f -e pdf -0 | fzf read0 --print0 | xargs -0 -n1 zathura"
# book="fd . ~/PDFs/Math -t f -e pdf | fzf"

# TERMINAL='kitty'
# open kitty
# fzf the textbook
# create new subprocess call for zathura, using the captured selection

if os.path.isdir(f"{Path.home()}/PDFs"):
    subprocess.Popen('kitty -c ~/code/repos/dotfiles/.config/kitty/prompt.conf --listen-on=tcp:localhost:12345', shell=True)
    # print(is_open("localhost", "12345"))

#     # subprocess.run(f'kitten @ --to tcp:localhost:12345 send-text {book}', shell=True)
#     # kitty --class=script-prompt -c=\"~/code/repos/dotfiles/.config/kitty/prompt.conf\"
#     print('hi')
