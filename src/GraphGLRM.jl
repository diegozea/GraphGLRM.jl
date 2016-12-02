module GraphGLRM

using LowRankModels
using LightGraphs
using DataArrays
import LowRankModels: prox, prox!,
      evaluate, ObsArray, sort_observations, observations,
      fit!
import Base.BLAS: axpy!, gemm!

export impute_means, impute_zeros, standardize, standardize!, #Simple imputation for pre-preprocessing
      matrixRegFact, quadgraphRegFact, init_qqreg!,#Closed-form factorizations with regularization
      IndexGraph, #The data structure for easily initializing a GraphQuadReg

      #The regularizer
      AbstractGraphReg, GraphQuadReg, NonNegGraphReg, matrix, prox, prox!, evaluate,

      #The constructors for the GGLRM itself
      GGLRM, add_offset!, equilibrate_variance!,

      #The alternating minimization and objective calculation
      fit!, whole_objective, loss_objective

# package code goes here
include("indexgraph.jl")
include("graphquadreg.jl")
include("nonneggraphreg.jl")
include("regularizers.jl")
include("gglrm.jl")
include("offsetscale.jl")
include("initialize.jl")
include("fit.jl")

end # module
