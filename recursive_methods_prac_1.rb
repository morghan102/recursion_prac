def append ( arr, n )
    return ary if n < 0
    ary << n
    append (ary, n-1)
end

append [], 2 # => [0, 1, 2]
append [], 3 # => [0, 1, 2, 3]

def reverse_append (arr, n)
    return ary if n < 0
    reverse_append (arr, n - 1)
    arr << n
    arr #honestly don't totally us why this works :(
end
