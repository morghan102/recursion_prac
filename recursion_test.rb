#TEST:
def factorial (n)
    return 1 if n == 0
    n * factorial(n-1)
end

# def palindrome (word)
#     if word != word.reverse #works, but not recursion!
#         return false
#     elsif
#         word == word.reverse
#         return true
#     end
# end
def palindrome (word)
    if word.length == 1 || word.length == 0 #baseline, where it ends
        true
    else
        if word[0] == word[-1]
            palindrome(word[1..-2])
        else
            false
        end
    end
end

def beer_song (num_bottles)
    if num_bottles == 0 
        p "No more bottles of beer on the wall"
    else
    p "#{num_bottles} bottles of beer on the wall"
    beer_song(num_bottles-1)
    end
end

def fib (n) #I don't u/s how this works
    if n == 0 #n=position in the sequence
        0   #but i don't get why it's adding correctly
    elsif n ==  #without the set of fib nums
        1
    else
        fib(n-1) + fib(n-2)
    end
end

def flatten (array, results = [])
    array.each do |n|
        if n.class == Array
            flatten(n, results)
        else
            results << n
        end
    end
    results
end

def roman_numeralize (num, result = "")
roman_mapping = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
}
return result if num == 0
roman_mapping.keys.each do |divisor|
    quotient, modulus = num.divmod(divisor) 
    #modulus=remainder, quot=result
    result << roman_mapping[divisor] * quotient
    return roman_numeralize(roman_mapping, modulus, result) if quotient > 0
end
end