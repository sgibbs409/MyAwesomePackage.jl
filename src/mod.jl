
module Y
    function f(x) = x + 1
    function g(x) = x + 2
    
    export f
end

module Z
    function f(x) = x + 10
    function g(x) = x + 20
    function h(x) = x + 30
    function k(x) = x + 40
    export f, h, k
end

module X

using Reexport

@reexport using Y
# all of Y's exported symbols available here
@reexport using Z: f, g
# Z's x and y symbols available here

f(x) = x + 100;
g(x) = x + 200;
h(x) = x + 300;

export f, g

end

using X