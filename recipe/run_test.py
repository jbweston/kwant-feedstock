import os.path
from pytest import main
import kwant

def test():
    kwant_path = os.path.dirname(os.path.abspath(kwant.__file__))
    return main([kwant_path, "-x", "-v"])

test()
