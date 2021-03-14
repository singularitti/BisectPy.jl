using BisectPy
using Documenter

DocMeta.setdocmeta!(BisectPy, :DocTestSetup, :(using BisectPy); recursive=true)

makedocs(;
    modules=[BisectPy],
    authors="Qi Zhang <singularitti@outlook.com>",
    repo="https://github.com/singularitti/BisectPy.jl/blob/{commit}{path}#{line}",
    sitename="BisectPy.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://singularitti.github.io/BisectPy.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/singularitti/BisectPy.jl",
)
