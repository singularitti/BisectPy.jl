module BisectPy

include("bisect.jl")
include("insort.jl")

function index(a, x)
    i = bisect_left(a, x)
    return i != length(a) && a[i] == x ? i : error("Index not found!")
end

end
