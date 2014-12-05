#!/usr/bin/env python
import sys
from jinja2 import Environment, FileSystemLoader

def generate(template, username):
    env = Environment(loader=FileSystemLoader('.'))
    template = env.get_template(template)

    template.render()

    print template.render(user = username)

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print 'error: no user provided. Usage is: %s templatefile username' % sys.argv[0]
        sys.exit(1)
    else:
        generate(sys.argv[1], sys.argv[2])
