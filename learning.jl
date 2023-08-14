#https://github.com/JuliaAcademy/Introduction-to-Julia
#Download and tutorial: https://julialang.org/
import Pkg
Pkg.activate(".")
Pkg.add("Plots")

print("Hello MF")
println("Hello MILF")

pi = 3.14159
typeof(pi)
😸 = "My smile"
println(typeof(😸))

# I am a commment

#=
I am a group comment
=#

#Power is ^ instead of **
power = 10^2
println(power)

days = 365
# Assert value, it will throw Assertion Error if it is not the same
# println(@assert days == 300)
# Convert function for int to other types
println(convert(Float64,368))
println(convert(Float64,'h'))
# Convert function for string to other types
println(parse(Int64,"1"))

println("I am string")
name = "Harris"
rank = 1
println("""I am "$rank" legend $name""")

# Single quote is only for character
println('a')

#We can also use * to concat string
println(string("I","-","am","-","Harris"))

#Dictionary
phonebook = Dict("Harris" => "0415588827", "Peter" => 1829323)
#key value can only be string
phonebook["Kumar"] = 365.8
println(phonebook)
println(phonebook["Harris"])
#Remove Kumar
#We can use push! to add item
pop!(phonebook, "Kumar")
println(phonebook)

#Tuple **Note: tuple is immutable
animals = ("pig", "bird", "bitch")
println(animals[1])

#Array
friends = ["Jay", "Seb", "First", "Josh"]

#Create array of random numbers 4 x 3
println(rand(4,3))

#The loop is a bit buggy with variables, 
#need to define like this for global scope
n = 0
while n < 5
    global n
    n += 1
end
println(n) 

# We can also use "in"
p = 0
for x = 1:10
    global p
    p+=1
end
println(p)

#Or n > p ? "bigger" : "smaller" etc
# && is and
# || is or
if(n > p)
    println("bigger")
elseif(n < p)
    println("smaller")
else
    println("equal")
end

#=
function say(value)
    println(value)
end
=#

#=
Mutating function vs non-mutating function
is differentiated by !
Which the pointer content got updated too

e.g. say!() vs say()

Boardcasting is by .
which is about applying the function to all elements of the input

e.g. say() vs say.()
=#

#=
Julia hub is a repo for all packages
we need to type pkg or ] to install packages
=#

using Plots