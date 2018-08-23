"""
# module Bisect

- Julia version: 1.0
- Author: qz
- Date: 2018-08-23

# Examples

```jldoctest
julia>
```
"""
module Bisect

"""
    bisect_left(a, x, lo=0, hi=length(a))

Return the index where to insert item `x` in array `a`, assuming `a` is sorted.

The return value i is such that all e in `a[:i]` have `e < x`, and all `e` in
`a[i:]` have `e >= x`.  So if `x` already appears in the array, `a.insert(x)` will
insert just before the leftmost `x` already there.

- Julia version: 1.0
- Author: qz
- Date: 2018-08-23

# Arguments
Optional args `lo` (default `0`) and `hi` (default `length(a)`) bound the
slice of `a` to be searched.

# Examples

```jldoctest
julia>
```
"""
function bisect_left(a, x, lo=0, hi=nothing)
    lo < 0 && error("The lower bound `lo` must be greater than 0!")
    hi == nothing && (hi = length(a))

    while lo < hi
        mid = (lo + hi) ÷ 2
        a[mid] < x ? lo = mid + 1 : hi = mid
    end
    lo
end

"""
    bisect_right(a, x, lo=0, hi=length(a))

Return the index where to insert item `x` in array `a`, assuming `a` is sorted.

The return value `i` is such that all `e` in `a[:i]` have `e <= x`, and all `e` in
`a[i:]` have `e > x`.  So if `x` already appears in the array, `a.insert(x)` will
insert just after the rightmost `x` already there.

- Julia version: 1.0
- Author: qz
- Date: 2018-08-23

# Arguments
Optional args `lo` (default `0`) and `hi` (default `length(a)`) bound the
slice of a to be searched.

# Examples

```jldoctest
julia>
```
"""
function bisect_right(a, x, lo=0, hi=nothing)
    lo < 0 && error("The lower bound `lo` must be greater than 0!")
    hi == nothing && (hi = length(a))

    while lo < hi
        mid = (lo + hi) ÷ 2
        x < a[mid] ? hi = mid : lo = mid+1
    end
    lo
end

end