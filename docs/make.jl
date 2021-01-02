using Documenter
using MyAwesomePackage


#push!(LOAD_PATH, "../src/")
makedocs(
    sitename = "MyAwesomePackage.jl Documentation",
    pages = [
        "Index" => "index.md",
        "Another page" => "anotherPage.md",
    ],

    format = Documenter.HTML(
        prettyurls = true
        # prettyurls = !("local" in ARGS)
    )
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/sgibbs409/MyAwesomePackage.jl.git",
    #devbranch="main",
    target="build",
    push_preview = true,
    #versions = ["stable" => "v^", "v#.#", "dev" => "v^"],
    #versions = ["v#.#", "dev" => "v^"],
    #versions = ["stable" => "v^", "v#.#"]
)
