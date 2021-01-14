"""
    module MyAwesomePackage

API for doing awesome things.

More details about MyAwesomePackage
"""
module MyAwesomePackage

export plusTwo, plusOne, plusThree


include("mod.jl")

"""
    plusTwo(x)

Sum the numeric "2" to whatever it receives as input.

A more detailed explaination can go here.

# Arguments
* `x`: The amount to which we want to add 2

# Notes
* Notes can go here

# Examples
```julia
julia> five = plusTwo(3)
5
```
"""
plusTwo(x) = x + 2


"""
    plusOne(x)

Sum the numeric "1" to whatever it receives as input.

A more detailed explaination can go here.

# Arguments
* `x`: The amount to which we want to add 1

# Notes
* Notes can go here

# Examples
```julia
julia> five = plusOne(3)
4
```
"""
plusOne(x) = x + 1

plusThree(x) = x + 3

greet() = print("Hello World!")

end # module
