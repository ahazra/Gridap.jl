"""

The exported names are
$(EXPORTS)
"""
module MultiField

using DocStringExtensions
using Gridap.Helpers
using Gridap.Algebra
using Gridap.Arrays
using Gridap.FESpaces
using Gridap.Geometry
using Gridap.Integration
using FillArrays
using SparseArrays

using Gridap.Arrays: IdentityVector
using Gridap.FESpaces: _operate_cell_basis
using Gridap.FESpaces: _operate_cell_matrix_field
using Gridap.FESpaces: SkeletonCellBasis

import Gridap.Helpers: operate
import Gridap.Arrays: get_array
import Gridap.Arrays: array_cache
import Gridap.Arrays: getindex!
import Gridap.Arrays: reindex
import Gridap.Geometry: get_cell_map
import Gridap.Geometry: similar_object
import Gridap.Geometry: restrict
import Gridap.Fields: integrate
import Gridap.FESpaces: TrialStyle
import Gridap.FESpaces: FECellBasisStyle
import Gridap.FESpaces: FEFunctionStyle
import Gridap.FESpaces: num_free_dofs
import Gridap.FESpaces: get_cell_basis
import Gridap.FESpaces: FEFunction
import Gridap.FESpaces: zero_free_values
import Gridap.FESpaces: constraint_style
import Gridap.FESpaces: get_constraint_kernel_matrix_cols
import Gridap.FESpaces: get_constraint_kernel_matrix_rows
import Gridap.FESpaces: get_constraint_kernel_vector
import Gridap.FESpaces: get_cell_dofs
import Gridap.FESpaces: get_fe_space
import Gridap.FESpaces: get_free_values
import Gridap.FESpaces: get_cell_values
import Gridap.FESpaces: get_test
import Gridap.FESpaces: get_trial
import Gridap.FESpaces: allocate_vector
import Gridap.FESpaces: assemble_vector!
import Gridap.FESpaces: allocate_matrix
import Gridap.FESpaces: assemble_matrix!
import Gridap.FESpaces: assemble_matrix
import Gridap.FESpaces: allocate_matrix_and_vector
import Gridap.FESpaces: assemble_matrix_and_vector!
import Gridap.FESpaces: assemble_matrix_and_vector
import Gridap.FESpaces: SparseMatrixAssembler
import Gridap.FESpaces: AffineFEOperator
import Gridap.FESpaces: FEOperator
import Gridap.FESpaces: EvaluationFunction

import Base: +, -

export num_fields
export compute_field_offsets
export restrict_to_field
export MultiFieldFESpace
export MultiFieldFEFunction
export MultiFieldSparseMatrixAssembler

include("MultiCellArrays.jl")

include("MultiFieldCellBases.jl")

include("MultiFieldFESpaces.jl")

include("MultiFieldFEFunctions.jl")

include("MultiFieldSparseMatrixAssemblers.jl")

include("MultiFieldFEOperators.jl")

end # module
