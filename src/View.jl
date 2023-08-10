### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ e936f960-8524-498c-805a-63dabea24a3b
# ╠═╡ skip_as_script = true
#=╠═╡
begin
	import Pkg
	Pkg.activate(Base.current_project(@__DIR__))
	Pkg.instantiate()
	Text("Project env active")
end
  ╠═╡ =#

# ╔═╡ 6560e641-4f41-43bd-8a26-8eb5dfa65af9
using HypertextLiteral

# ╔═╡ 0f5a4e9e-37c3-11ee-0582-ef21826c8c22
md"""
# View.jl
"""

# ╔═╡ 67f91775-9257-4803-8c84-907807a191d2
md"""
## Initialize Package Management
"""

# ╔═╡ 5c92ec85-9456-417e-8a07-7093fea2b7e8
function init(; preview=false, header_ids=true)
	static = preview ? "" : ".static_preview"
	return @htl("""
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Source+Serif+4:ital,opsz,wght@0,8..60,200;0,8..60,300;0,8..60,400;0,8..60,500;0,8..60,600;0,8..60,700;0,8..60,800;1,8..60,200;1,8..60,300;1,8..60,400;1,8..60,500;1,8..60,600;1,8..60,700&display=swap" rel="stylesheet">

<!-- PlutoArticles.jl CSS -->
<style>
$(static) pluto-output h1 {
	font-size: 2em;
}
$(static) pluto-output h2 {
	margin-top: 40px !important;
}
$(static) pluto-output h3 {
	margin-top: 20px !important;
}
$(static) pluto-output {
	font-family: "Source Serif 4", Georgia, Cambria, "Times New Roman", Times, serif;
	font-size: 16pt;
}
$(static) pluto-editor.fullscreen main {
	max-width: 1000px !important;
	align-self: center !important;
	margin-right: 0 !important
}
</style>
	""")
end

# ╔═╡ da41b2d8-4a79-4c2e-ac06-22e7d9fe1927
export init

# ╔═╡ 1b7b784d-d155-41be-9f8f-18e52331818a
# ╠═╡ skip_as_script = true
#=╠═╡
init(; preview=true)
  ╠═╡ =#

# ╔═╡ c540d197-bc16-4c51-877f-6c92dad1dcbb
nothing

# ╔═╡ Cell order:
# ╟─0f5a4e9e-37c3-11ee-0582-ef21826c8c22
# ╟─67f91775-9257-4803-8c84-907807a191d2
# ╠═e936f960-8524-498c-805a-63dabea24a3b
# ╠═6560e641-4f41-43bd-8a26-8eb5dfa65af9
# ╠═da41b2d8-4a79-4c2e-ac06-22e7d9fe1927
# ╠═5c92ec85-9456-417e-8a07-7093fea2b7e8
# ╠═1b7b784d-d155-41be-9f8f-18e52331818a
# ╠═c540d197-bc16-4c51-877f-6c92dad1dcbb
