var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = BisectPy","category":"page"},{"location":"#BisectPy","page":"Home","title":"BisectPy","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"This is a package that migrates Python's bisect module to Jula.","category":"page"},{"location":"","page":"Home","title":"Home","text":"Note that since Julia's array index starts from 1 but Python starts from 0, the returned index of either bisect_left or bisect_right is always their Python's correspondence plus 1!","category":"page"},{"location":"","page":"Home","title":"Home","text":"Also, the behavior of Python's a[:i] where a is an array is also different from Julia: Julia array includes the ith item but Python does not!","category":"page"},{"location":"#main-index","page":"Home","title":"Index","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"Modules = [BisectPy]","category":"page"},{"location":"#BisectPy.bisect_left","page":"Home","title":"BisectPy.bisect_left","text":"bisect_left(a, x, lo = 1, hi = length(a) + 1)\n\nReturn the index where to insert item x in array a, assuming a is in an non-decreasing order.\n\nThe return value i is such that all e in a[:(i - 1)] have e < x, and all e in a[i:] have e >= x.  So if x already appears in the array, insert!(a, i, x) will insert just before the leftmost x already there.\n\nArguments\n\nOptional args lo (default 1) and hi (default length(a) + 1) bound the slice of a to be searched.\n\nExamples\n\njulia> bisect_left([1, 2, 3, 4, 5], 3.5)\n4\n\njulia> bisect_left([1, 2, 3, 4, 5], 2)\n2\n\njulia> bisect_left([1, 2, 3, 3, 3, 5], 3)\n3\n\n\n\n\n\n","category":"function"},{"location":"#BisectPy.bisect_right","page":"Home","title":"BisectPy.bisect_right","text":"bisect_right(a, x, lo = 1, hi = length(a) + 1)\n\nReturn the index where to insert item x in array a, assuming a is in an non-decreasing order.\n\nThe return value i is such that all e in a[:(i - 1)] have e <= x, and all e in a[i:] have e > x.  So if x already appears in the array, insert!(a, i, x) will insert just after the rightmost x already there.\n\nArguments\n\nOptional args lo (default 1) and hi (default length(a) + 1) bound the slice of a to be searched.\n\nExamples\n\njulia> bisect_right([1, 2, 3, 4, 5], 3.5)\n4\n\njulia> bisect_right([1, 2, 3, 4, 5], 2)\n3\n\njulia> bisect_right([1, 2, 3, 3, 3, 5], 3)\n6\n\n\n\n\n\n","category":"function"},{"location":"#BisectPy.find_ge-Tuple{Any,Any}","page":"Home","title":"BisectPy.find_ge","text":"find_ge(a, x)\n\nFind leftmost item greater than or equal to x in a.\n\n\n\n\n\n","category":"method"},{"location":"#BisectPy.find_gt-Tuple{Any,Any}","page":"Home","title":"BisectPy.find_gt","text":"find_gt(a, x)\n\nFind leftmost value greater than x in a.\n\n\n\n\n\n","category":"method"},{"location":"#BisectPy.find_le-Tuple{Any,Any}","page":"Home","title":"BisectPy.find_le","text":"find_le(a, x)\n\nFind rightmost value less than or equal to x in a.\n\n\n\n\n\n","category":"method"},{"location":"#BisectPy.find_lt-Tuple{Any,Any}","page":"Home","title":"BisectPy.find_lt","text":"find_lt(a, x)\n\nFind rightmost value less than x in a.\n\n\n\n\n\n","category":"method"},{"location":"#BisectPy.index-Tuple{Any,Any}","page":"Home","title":"BisectPy.index","text":"index(a, x)\n\nLocate the leftmost value exactly equal to x in a.\n\n\n\n\n\n","category":"method"},{"location":"#BisectPy.insort_left","page":"Home","title":"BisectPy.insort_left","text":"insort_left(a, x, lo = 1, hi = nothing)\n\nInsert item x in array a, and keep it sorted assuming a is sorted.\n\nIf x is already in a, insert it to the left of the leftmost x. Optional args lo (default 1) and hi (default length(a)) bound the slice of a to be searched.\n\n\n\n\n\n","category":"function"},{"location":"#BisectPy.insort_right","page":"Home","title":"BisectPy.insort_right","text":"insort_right(a, x, lo = 1, hi = nothing)\n\nInsert item x in array a, and keep it sorted assuming a is sorted.\n\nIf x is already in a, insert it to the right of the rightmost x. Optional args lo (default 1) and hi (default length(a)) bound the slice of a to be searched.\n\n\n\n\n\n","category":"function"}]
}