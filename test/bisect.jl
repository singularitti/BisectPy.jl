using Test

using BisectPy

@test bisect_left([1, 2, 3, 4, 5], 3.5) == 4

@test bisect_right([1, 2, 3, 4, 5], 3.5) == 4

@testset "Equal tests" begin
    @test bisect_left([1, 2, 3, 4, 5], 2) == 2
    @test bisect_left([1, 2, 3, 3, 3, 5], 3) == 3
    @test bisect_right([1, 2, 3, 4, 5], 2) == 3
    @test bisect_right([1, 2, 3, 3, 3, 5], 3) == 6
end

@testset "Boundary tests" begin
    @test bisect_left([1, 2, 3, 4, 5], 0) == 1
    @test bisect_left([1, 2, 3, 4, 5], 5) == 5
    @test bisect_right([1, 2, 3.0, 4, 5], 6) == 6
    @test bisect_right([1, 2, 3, 4, 5], 1) == 2
end

@testset "`bisect_right`" begin
    function grade(score, breakpoints = [60, 70, 80, 90], grades = "FDCBA")
        i = bisect(breakpoints, score)
        return grades[i]
    end
    @test [grade(score) for score in [33, 99, 77, 70, 89, 90, 100]] == ['F', 'A', 'C', 'C', 'B', 'A', 'A']
end

@testset "`bisect_left`" begin
    data = [("red", 5), ("blue", 1), ("yellow", 8), ("black", 0)]
    sort!(data)
    keys = [r[2] for r in sort(data)]
    @test data[bisect_left(keys, 0)] == ("black", 0)
    @test data[bisect_left(keys, 1)] == ("blue", 1)
    @test data[bisect_left(keys, 5)] == ("red", 5)
    @test data[bisect_left(keys, 8)] == ("yellow", 8)
end
