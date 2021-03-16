"""
    index(a, x)

Locate the leftmost value exactly equal to `x` in `a`.
"""
function index(a, x)
    i = bisect_left(a, x)
    return i != length(a) + 1 && a[i] == x ? i : nothing
end

"""
    find_lt(a, x)

Find rightmost value less than `x` in `a`.
"""
function find_lt(a, x)
    i = bisect_left(a, x)
    return i > 1 ? a[i-1] : nothing
end

"""
    find_le(a, x)

Find rightmost value less than or equal to `x` in `a`.
"""
function find_le(a, x)
    i = bisect_right(a, x)
    return i > 1 ? a[i-1] : nothing
end

"""
    find_gt(a, x)

Find leftmost value greater than `x` in `a`.
"""
function find_gt(a, x)
    i = bisect_right(a, x)
    return i != length(a) + 1 ? a[i] : nothing
end

"""
    find_ge(a, x)

Find leftmost item greater than or equal to `x` in `a`.
"""
function find_ge(a, x)
    i = bisect_left(a, x)
    return i != length(a) + 1 ? a[i] : nothing
end
