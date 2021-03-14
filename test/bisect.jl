using Test

using BisectPy

@test bisect_left([1, 2, 3, 4, 5], 3.5) == 4

@test bisect_left([1, 2, 3, 4, 5], 2) == 2

@test bisect_left([1, 2, 3, 3, 3, 5], 3) == 3

@test bisect_right([1, 2, 3, 4, 5], 3.5) == 4

@test bisect_right([1, 2, 3, 4, 5], 2) == 3

@test bisect_right([1, 2, 3, 3, 3, 5], 3) == 6
