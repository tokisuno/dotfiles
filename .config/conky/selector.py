import json
from random import choice

with open('quotes.json') as fp:
    content = json.loads(fp.read())

quote = choice(content)
print("${color lightgrey}" + quote['quote'] + " ~ " + quote['author'] + " ")
