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

def fib(n) #I don't u/s how this works
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

