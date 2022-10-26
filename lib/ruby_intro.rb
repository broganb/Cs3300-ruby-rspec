# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #Start sum at 0
  sum = 0
  for n in arr do #iterate through list and sum all integers
    sum += n
  end
  return sum #return the sum
end

def max_2_sum arr
  #If the list is null or 1 element conditions
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    #Otherwise, set the max nums as the first two elements
    max1 = arr[0]
    max2 = arr[1]

    #then iterate through the rest of the list to find higher values
    i = 2
    while i < arr.length
      if arr[i] > max1 and max2 <= arr[i]
        max1 = arr[i]
      elsif  max1 <= arr[i] and arr[i] > max2
        max2 = arr[i]
      end
      i += 1
    end
  end
    
  sum = max1 + max2 
  return sum

end

def sum_to_n? arr, n
  #If the list is empty return false
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  end

  #For loop going through every element with i
  for i in 0..arr.length - 2
    #Two for loops with j goint through every element other than i
    #before i
    for j in 1..i - 1
      sum = arr[i] + arr[j]
      if sum == n
        return true
      end
    end
    #after i
    for j in i + 1..arr.length - 1
      sum = arr[i] + arr[j]
      if sum == n
        return true
      end
    end
  end

  return false

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, " + name
  return str

end

def starts_with_consonant? s
  #set s to upper case for testing
  s = s.upcase

  #Check against the vowels
  for v in ['A','I','E','O','U']
    if s[0] == v
      return false
    end
  end

  #If it made it through our first test, make sure it's a letter
  for c in 'A'..'Z' 
    if s[0] == c 
      return true
    end
  end
  #If it has not met the above condition, it is not a letter
  #so return false
  return false
end

def binary_multiple_of_4? s
  #Convert s to int
  if s.delete('01') != ''
    return false
  elsif s == ''
    return false
  end 

  i = s.to_i(2)
  if i % 4 == 0
    return true
  end

  return false

end

# Part 3

class BookInStock
#Constructor for the book
  def initialize(isbn, price)
    #Before initializing, checks for blank string in isbn
    if isbn == ''
      raise ArgumentError
    else
      @isbn = isbn
    end
    #Before initializing, checks for negative value for price
    if price <= 0
      raise ArgumentError
    else
      @price = price
    end

  end

  #getters for isbn and price
  def isbn
    @isbn
  end

  def price
    @price
  end

  #setter for isbn
  def isbn=(isbn)
    if isbn == ''
      raise ArgumentError
    else
      @isbn = isbn
    end

  end

  #setter for price
  def price=(price)
    if price <= 0
      raise ArgumentError
    else
      @price = price
    end
  end


  def price_as_string
    #return a formatted string
    return "$#{'%.2f' % @price}"
  end

end