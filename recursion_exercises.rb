require "byebug"

def range(num, upto)
    return [] if upto <= num
    range(num, upto - 1) << upto - 1
end

def sum(array)
    return 0 if array.empty?
    array.first + sum(array.drop(1))
end

def exponent(base, power)
    return 1 if power == 0
    base * exponent(base, power-1)
end

def exp2(base, power)
    return 1 if power == 0
   
    half = exp2(base, power / 2)
    if power.even?
        half * half
    else
        base * half * half
    end
    
end