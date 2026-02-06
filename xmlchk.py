#!/usr/bin/env python3
"""
Download Python from: https://www.python.org/downloads/windows/
Further Info: https://wiki.python.org/moin/BeginnersGuide/Download

Usage: python xmlchk.py
"""

import pathlib
import xml.etree.ElementTree as ET

def check_file(path: pathlib.Path):
    try:
        ET.parse(path)
    except Exception as e:
        print(f"{path.name}: FAILED")
        print(f"{type(e).__module__}.{type(e).__name__}: {e}\n")
    """
    else:
        print(f"{path.name}: OK")
    """

def main():
    p = pathlib.Path('.')
    xml_files = sorted(p.glob('*.xml'))
    for f in xml_files:
        check_file(f)
    print(f"\nXML Check Complete!")

if __name__ == "__main__":
    main()