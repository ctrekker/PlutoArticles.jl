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

# ╔═╡ 3b59e870-37c5-11ee-0be9-d52ff725dfd0
begin
	using Pkg
	Pkg.activate(".")

	using HypertextLiteral, AbstractPlutoDingetjes, PlutoArticles
end

# ╔═╡ ef59777a-3d0e-4813-88e1-7896cc73ee74
md"""
# Main Header

## Secondary Header

### Subsection

This should clarify something about the [earlier section](#secondary-header).

## Another Secondary
"""

# ╔═╡ 4d97e409-42e8-4226-a099-19a18981c714
init(; preview=true)

# ╔═╡ 73d1c3ab-b26f-410f-b3b1-1b41cac715f9
@bind w WordCount()

# ╔═╡ Cell order:
# ╠═3b59e870-37c5-11ee-0be9-d52ff725dfd0
# ╠═ef59777a-3d0e-4813-88e1-7896cc73ee74
# ╠═4d97e409-42e8-4226-a099-19a18981c714
# ╠═73d1c3ab-b26f-410f-b3b1-1b41cac715f9
