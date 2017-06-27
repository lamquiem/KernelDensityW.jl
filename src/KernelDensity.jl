__precompile__()

module KernelDensityW

using Compat
using StatsBase
using Distributions
using Optim
using Interpolations

import Base: conv
import StatsBase: RealVector, RealMatrix, WeightVec
import Distributions: twoπ, pdf

export kde, kde_lscv, UnivariateKDE, BivariateKDE, InterpKDE, pdf

@compat abstract type AbstractKDE end

include("univariate.jl")
include("bivariate.jl")
include("interp.jl")

end # module

