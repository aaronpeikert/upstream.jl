using upstream
using Test

@testset "upstream.jl" begin
    @test add(1, 1; fast = true) == 2
end
