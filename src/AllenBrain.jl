__precompile__()

module AllenBrain

using JSON, LightGraphs, StaticArrays, IndirectArrays, AxisArrays
using Colors, FixedPointNumbers, GLVisualize

export colorize, colorize!, findvertices, ontology, structureids, visualize_volume

const mousedir = joinpath(dirname(@__DIR__), "data", "mouse")

function dataset(species, category)
    if category == "ontology"
        species == "mouse" && return joinpath(mousedir, "structure_graph.json")
    end
    error(category, " for species ", species, " not found")
end

include("ontology.jl")
include("visualize.jl")

end # module
