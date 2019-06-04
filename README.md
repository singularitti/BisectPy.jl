# BisectPy.jl

[![Build Status](https://travis-ci.com/singularitti/BisectPy.jl.svg?branch=master)](https://travis-ci.com/singularitti/BisectPy.jl)

This is a package that migrates Python's [`bisect` module](https://docs.python.org/3.7/library/bisect.html#module-bisect) to Jula.

Note that since Julia's array index starts from `1` but Python starts from `0`, the returned index of either `bisect_left`
or `bisect_right` is always their Python's correspondence plus `1`!

Also, the behavior of Python's `a[:i]` where `a` is an array is also different from Julia: Julia array includes the `i`th item
but Python does not!
