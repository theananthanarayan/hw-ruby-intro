# When done, submit this entire file to the autograder.

#documnentation for regex: https://www.rubyguides.com/2015/06/ruby-regex/ , https://stackoverflow.com/questions/19305067/regex-binary-multiple-of-4

# Part 1

def sum(array)
  sum = 0
  if array.length == 0
    return 0
  else
    for x in array
      sum += x
    end
    return sum
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  max1 = 0
  max2 = 0
  sum = 0
  if arr.length == 0
    return 0
  else if arr.length == 1
    return arr[0]
  else
    arr2 = arr.sort
    max1 = arr2.last
    max2 = arr2[-2]
    sum = max1 + max2
    return sum
  end
end
end

def sum_to_n? (arr, n)
  result = false
  if arr.length < 1
    return false
  else 
    for i in 1..arr.length - 1 
      for j in 1..i-1
        if arr[i] + arr[j] == n
          result = true
          break
        end
      end
    end
  end
  return result
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return !(/^[^aeiou\W]/i.match(s) == nil) 
end

def binary_multiple_of_4?(s)
   # YOUR CODE HERE
  if s == "0"
    return true
  else
    return /^[10]*(00)$/.match(s) 
  end
end


# Part 3

class BookInStock
# # YOUR CODE HERE

def initialize(isbn, price)
  @isbn = isbn
  @price = price
  if @isbn.empty? or @price <= 0
    raise ArgumentError
  end 
end

def isbn
  @isbn
end

def price
  @price
end 

def price=(price)
  @price = price
end 

def isbn=(isbn)
  @isbn = isbn
end

def price_as_string
  return "$" + sprintf('%.2f' , @price)
end
end
