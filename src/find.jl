"Locate the leftmost value exactly equal to x."
function index(a, x)
    i = bisect_left(a, x)
    return i != length(a) + 1 && a[i] == x ? i : nothing
end

"Find rightmost value less than x."
function find_lt(a, x)
    i = bisect_left(a, x)
    return i > 1 ? a[i-1] : nothing
end

"Find rightmost value less than or equal to x."
function find_le(a, x)
    i = bisect_right(a, x)
    return i > 1 ? a[i-1] : nothing
end

"Find leftmost value greater than x."
function find_gt(a, x)
    i = bisect_right(a, x)
    return i != length(a) + 1 ? a[i] : nothing
end

"Find leftmost item greater than or equal to x."
function find_ge(a, x)
    i = bisect_left(a, x)
    return i != length(a) + 1 ? a[i] : nothing
end
