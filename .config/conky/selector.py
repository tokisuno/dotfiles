import json
import os
from random import choice

home = os.path.expanduser('~')

with open(home + '/.config/conky/quotes.json') as fp:
    content = json.loads(fp.read())

quote = choice(content)
print("${color lightgrey}" + quote['quote'] + " ~ " + quote['author'] + " ")
