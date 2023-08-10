module PlutoArticles

using Reexport

@reexport module ViewNotebook
    include("View.jl")
end

@reexport module WordCountNotebook
    include("WordCount.jl")
end

end # module PlutoArticles
