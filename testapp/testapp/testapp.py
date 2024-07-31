#!/usr/bin/env python3

import click
import sys

from subprocess import check_call

@click.command()
def main():
    """Testapp"""
    print("Calling dput...")
    check_call(["dput", "-h"])

if __name__ == "__main__":
    sys.exit(main())
