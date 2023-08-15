### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ fc1d4afa-4fb1-460f-b673-013e555f43f4
# ╠═╡ skip_as_script = true
#=╠═╡
begin
	import Pkg
	Pkg.activate(Base.current_project(@__DIR__))
end
  ╠═╡ =#

# ╔═╡ 2a877288-5780-49e7-81b7-f2379d077347
using HypertextLiteral, PlutoHooks

# ╔═╡ 494df5d4-3b23-11ee-320d-959f1bcf4950
md"""
# HideTerminal.jl

*WIP*

"""

# ╔═╡ d4a6763e-3c37-40b7-8934-4c6871552c09
macro hideterminal()
	quote
		cell_id = $(PlutoHooks).@give_me_the_pluto_cell_id
		@htl("""
		<script>
			(() => {
				const term = document.getElementById($(string(cell_id))).querySelector("pluto-logs-container");
				if (term)
					term.style.display = "none";
			})();
		</script>
		""")
	end
end

# ╔═╡ e61512e0-809e-4ea6-8844-f3afa7c9419b
export @hideterminal

# ╔═╡ 75a9eb10-8d01-403b-9746-c4f9f6ed80cd
# ╠═╡ skip_as_script = true
#=╠═╡
begin
	show("This should be hidden :/")
	@hideterminal
end
  ╠═╡ =#

# ╔═╡ Cell order:
# ╟─494df5d4-3b23-11ee-320d-959f1bcf4950
# ╠═fc1d4afa-4fb1-460f-b673-013e555f43f4
# ╠═2a877288-5780-49e7-81b7-f2379d077347
# ╠═e61512e0-809e-4ea6-8844-f3afa7c9419b
# ╠═d4a6763e-3c37-40b7-8934-4c6871552c09
# ╠═75a9eb10-8d01-403b-9746-c4f9f6ed80cd
