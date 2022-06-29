using upstream
using Documenter

DocMeta.setdocmeta!(upstream, :DocTestSetup, :(using upstream); recursive=true)

makedocs(;
    modules=[upstream],
    authors="Aaron Peikert, Maximilian S. Ernst, Nicklas Hafiz",
    repo="https://github.com/aaronpeikert/upstream.jl/blob/{commit}{path}#{line}",
    sitename="upstream.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://aaronpeikert.github.io/upstream.jl",
        edit_link="devel",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/aaronpeikert/upstream.jl",
    devbranch="devel",
)
