# csvfix

This is the source for the `csvfix` command and its supporting `alib` library.
These were written by Neil Butterworth and licensed under a permissive [MIT License](https://opensource.org/licenses/MIT).
With this command, you can parse csv files from a [POSIX](https://opensource.com/article/19/7/what-posix-richard-stallman-explains) terminal.

For example, you can show columns selectively:

```
$ csvfix order -f 1,2,3 example.csv
"foo","bar","baz"
$ csvfix order -f 1,3,6 example.csv
"foo","baz","quux"
```

You can export to XML, import from XML, join, pivot, and much much more.

## How to build

Building requires a GCC installation.
To build, enter the command `make linux` for a Linux build, `make windows` for a Windows build, or `make macos` for a MacOS build.

