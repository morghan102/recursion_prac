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
