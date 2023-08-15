### A Pluto.jl notebook ###
# v0.19.27

#> [frontmatter]
#> title = "PlutoArticles.jl"
#> sidebar = "false"

using Markdown
using InteractiveUtils

# ╔═╡ 3eeabdf8-994b-4820-862e-e81da05e51fc
begin
	using Pkg
	Pkg.activate(".")
	using PlutoArticles
end

# ╔═╡ 321b097d-bef4-4999-8580-2eda15335642
Markdown.parse(read("README.md", String))

# ╔═╡ 23b5eeb3-7fb2-4496-8b91-f380faa4e192
html"""
<style>
pluto-logs-container {
	display: none;
}
</style>
"""

# ╔═╡ 9c416898-2081-444b-b156-7c54b74df3c1
article()

# ╔═╡ Cell order:
# ╟─321b097d-bef4-4999-8580-2eda15335642
# ╟─3eeabdf8-994b-4820-862e-e81da05e51fc
# ╟─23b5eeb3-7fb2-4496-8b91-f380faa4e192
# ╟─9c416898-2081-444b-b156-7c54b74df3c1
