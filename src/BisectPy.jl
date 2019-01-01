"""
# module BisectPy



# Examples

```jldoctest
julia>
```
"""
module BisectPy

using Reexport: @reexport

include("Bisect.jl")
@reexport using .Bisect

include("Find.jl")

end # module
