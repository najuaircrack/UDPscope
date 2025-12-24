#!/usr/bin/env python3
"""
UDPscope command-line entry point
Legacy entry point for backward compatibility
"""
import sys
import warnings

warnings.warn(
"The cmd.udpscope.main entry point is deprecated. Use 'udpscope' directly instead.",
DeprecationWarning,
stacklevel=2
)

# Re-export main function from the new CLI

from udpscope.cli import main

if __name__ == "__main__":
    main()