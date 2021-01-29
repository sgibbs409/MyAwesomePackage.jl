
module Y
    f(x) = x + 1
    g(x) = x + 2

    export  g
end

module Z

    f(x) = x + 10
    g(x) = x + 20
    h(x) = x + 30
    k(x) = x + 40
    m(x) = x + 50
    export  h, k

end

module X

    using Reexport

    @reexport using ..Y
    # all of Y's exported symbols available here
     @reexport using ..Z
    # Z's x and y symbols available here

    f(x) = x + 100;
    a(x) = x + 200;
    g(x) = x + 300;

    #export  a

end

module A

    f(x) = "A.f($x)"
end

module B
    g(x) = "B.g($x)"
end
end
using .X

f(1)
