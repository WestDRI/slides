##############################################################################
# sequential

# run it with:
# julia parallel.jl
##############################################################################

using BenchmarkTools

function slow(n::Int, digits::String)
    total = 0.
        for i in 1:n
            if !occursin(digits, string(i))
                total += 1. / i
            end
        end
    println("total = ", total)
end

@btime slow(Int64(1e9),"9")
