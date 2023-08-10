### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ d5182190-2840-43e6-8f1b-3a0b1f440262
# ╠═╡ skip_as_script = true
#=╠═╡
begin
	import Pkg
	Pkg.activate(Base.current_project(@__DIR__))
	Pkg.instantiate()
	Text("Project env active")
end
  ╠═╡ =#

# ╔═╡ d8162793-114c-44de-9afd-3fb6070b6e0b
using HypertextLiteral, AbstractPlutoDingetjes

# ╔═╡ 98b4b2f5-8d24-4675-af08-18ac04b311fa
md"""
# WordCount.jl
"""

# ╔═╡ 6802b6d4-37d3-11ee-064e-b36e2bc50651
"""
	WordCount()

Counts the number of words in Pluto.jl cell outputs and displays it with HTML.

## Example

The most straightforward way to use `word_count` is to interpolate its output into an `@htl` string.

```julia
@htl(\"\"\"
	<b>Word Count</b>: \$(WordCount())
\"\"\")
```

Alternatively, if you want to perform processing with Julia before displaying, you can also bind to `word_count`. Note that it is very easy to create feedback loops with this feature, if you were to generate text output based on the number of words in your document, thus changing the number of words.

```julia
@htl(\"\"\"
	<b>Word Count</b>: \$(@bind word_count WordCount())
\"\"\")
```
"""
struct WordCount end

# ╔═╡ ee54f4d4-6607-417e-9cd0-178d1554674f
export WordCount

# ╔═╡ 9ef841a5-4a2a-49d9-85b0-ab9ca6e4e00f
begin
	function Base.show(io, m::MIME"text/html", wc::WordCount)
		show(io, m, @htl("""
			<script>
				const el = html`
					<span class="word-count"></span>
				`;
	
				let wordCount = 0;
				for (let output of document.getElementsByTagName("pluto-output")) {
					wordCount += output.innerText.trim().split(/\\s+/g).length;
				}
				Object.defineProperty(el, 'value', {
					get: () => wordCount
				});
				el.dispatchEvent(new CustomEvent("input"));
				el.innerText = wordCount;
	
				return el;
			</script>
		"""))
	end
	# these allow bond values to be precomputed by assuming word count is 0
	AbstractPlutoDingetjes.Bonds.possible_values(wc::WordCount) = [0]
	AbstractPlutoDingetjes.Bonds.validate_value(wc::WordCount, val) = val === 0
	AbstractPlutoDingetjes.Bonds.initial_value(wc::WordCount) = 0
end

# ╔═╡ Cell order:
# ╟─98b4b2f5-8d24-4675-af08-18ac04b311fa
# ╠═d5182190-2840-43e6-8f1b-3a0b1f440262
# ╠═d8162793-114c-44de-9afd-3fb6070b6e0b
# ╠═ee54f4d4-6607-417e-9cd0-178d1554674f
# ╠═6802b6d4-37d3-11ee-064e-b36e2bc50651
# ╠═9ef841a5-4a2a-49d9-85b0-ab9ca6e4e00f
