module PlutoArticles

using Reexport

@reexport module ArticleNotebook
    include("Article.jl")
end

@reexport module HideTerminal
    include("HideTerminal.jl")
end

@reexport module WordCountNotebook
    include("WordCount.jl")
end

end # module PlutoArticles
