function index(a, x)
    i = bisect_left(a, x)
    (i != length(a) && a[i] == x) ? i : error("Index not found!")
end
