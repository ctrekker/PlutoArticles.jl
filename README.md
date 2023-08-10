# PlutoArticles.jl
> A Pluto.jl styling and utilities library for notebooks intended to be articles.

For text-heavy notebooks like articles, this package helps shift the "feel" from that of a notebook environment to an article.

*Left*: Normal Pluto; *Right*: Article Mode Pluto

![pluto-articles](https://github.com/ctrekker/PlutoArticles.jl/assets/22894011/8292fcc0-36ca-47bb-9bab-2980e428065a)

## How can I use this?

It's super easy! Just add the following to your existing Pluto.jl notebook:

```julia
import PlutoArticles
PlutoArticles.init()
```

You won't see anything happen - the updated styles will only apply **once the notebook is exported**. If you want to try them out in your editor, specify the `preview` keyword argument.

```julia
PlutoArticles.init(; preview = true)
```

## List of Changes

Most of the changes are subtle. Here's a list of the most notable ones:
- More ergonomic font choice for reading
- Increased font size for devices with large screens
- Widened notebook column for larger screens
- Slightly adjusted header spacing

## Additional Features

### WordCount

If you want to include a word count somewhere in your article, use the `WordCount` component!

Basic usage:

```julia
WordCount()
```

Interpolation:

```julia
@htl("""
<span>Word count: $(WordCount())</span>
"""
```

Binding to word count (be careful with this):

```julia
@bind my_word_count WordCount()
```
