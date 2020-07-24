module MvSim

using Distributions
using IntervalArithmetic
using Match

import FastGaussQuadrature: gausshermite
import IntervalRootFinding: roots
import LinearAlgebra: diagind, diagm, diag, eigen, norm2, pinv, I
import Memoize: @memoize
import Polynomials: Polynomial
import Statistics: mean, std, quantile
import Base: promote

const CorrelationTypes = Dict(
    :P => "Pearson",
    :S => "Spearman",
    :K => "Kendall")

export
    cor_nearPSD,
    ρz,
    ρz_bounds,

    # Types
    MixedMultivariateDistribution,
    CorrelationTypes,

    # utilities
    cor2cor,
    cov2cor,
    hermite,
    rcor,

    # Extended Base utilities
    promote

include("utils.jl")
include("MixedMultivariateDistribution.jl")
include("cor_nearPSD.jl")
include("PearsonMatching.jl")

end
