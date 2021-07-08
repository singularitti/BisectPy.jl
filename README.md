# BisectPy: array bisection algorithm

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://singularitti.github.io/BisectPy.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://singularitti.github.io/BisectPy.jl/dev)
[![Build Status](https://github.com/singularitti/BisectPy.jl/workflows/CI/badge.svg)](https://github.com/singularitti/BisectPy.jl/actions)
[![Build Status](https://travis-ci.com/singularitti/BisectPy.jl.svg?branch=master)](https://travis-ci.com/singularitti/BisectPy.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/singularitti/BisectPy.jl?svg=true)](https://ci.appveyor.com/project/singularitti/BisectPy-jl)
[![Build Status](https://cloud.drone.io/api/badges/singularitti/BisectPy.jl/status.svg)](https://cloud.drone.io/singularitti/BisectPy.jl)
[![Build Status](https://api.cirrus-ci.com/github/singularitti/BisectPy.jl.svg)](https://cirrus-ci.com/github/singularitti/BisectPy.jl)
[![Coverage](https://codecov.io/gh/singularitti/BisectPy.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/singularitti/BisectPy.jl)
[![Coverage](https://coveralls.io/repos/github/singularitti/BisectPy.jl/badge.svg?branch=master)](https://coveralls.io/github/singularitti/BisectPy.jl?branch=master)
[![Open in Visual Studio Code](https://open.vscode.dev/badges/open-in-vscode.svg)](https://open.vscode.dev/organization/repository)

This is a package that migrates Python's [`bisect` module](https://docs.python.org/3.7/library/bisect.html#module-bisect) to Jula.

Note that since Julia's array index starts from `1` but Python starts from `0`, the returned index of either `bisect_left`
or `bisect_right` is always their Python's correspondence plus `1`!

Also, the behavior of Python's `a[:i]` where `a` is an array is also different from Julia: Julia array includes the `i`th item
but Python does not!
