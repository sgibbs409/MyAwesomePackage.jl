

using Test, MyAwesomePackage

out = plusTwo(3)
greeting = MyAwesomePackage.greet()

@test out == 5

@test greeting == "Hello World!"
