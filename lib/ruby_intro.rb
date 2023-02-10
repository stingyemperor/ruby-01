# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sumAll = 0
  for i in arr do 
    sumAll = sumAll + i
  end
  sumAll
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sorted = arr.sort {|x, y| y <=> x}
  result = 0
  len = arr.length()
  if len > 1
    result = sorted[0] + sorted[1]
  else
    if len == 1
      result = arr[0]
    else
      result = 0
    end
  end
  result  
end


def sum_to_n?(arr, number)
  # YOUR CODE HERE
  result = false
  if arr.length() > 1
    test = arr.combination(2).find{|x,y| x+y==number}
    if test != nil
      result = true
    end  
  else
    if arr.length() == 1
      result = false
    else
      result = false
    end
  end
  result
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  result = "Hello, #{name}"
  result
end

def letter?(lookAhead)
  lookAhead.match?(/[[:alpha:]]/)
end


def starts_with_consonant?(string)
  # YOUR CODE HERE
  vowel = 'AEIOUaeiou'
  result = true
  
  if string.empty?
    return false
  end
  
  if !string[0].match?(/[[:alpha:]]/)
    return false  
  end
  
  if vowel.include? string[0]
    return false
  end  

  result
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  check = string !~ /[^01]/
  result = false
  if check and string != ""
    integer = string.to_i(2)
    if integer % 4 == 0
      result = true
    end
  end 
  result
end

string = '#C'
vowel = 'AEIOUaeiou'
check = vowel.include? string[0]
print(check)
# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn_,price_)\
    if(isbn_ == "" or price_ <= 0)
      raise ArgumentError
    end
    
    @isbn = isbn_
    @price = price_
  end
  
  def isbn=(isb)
    @isbn = isb
  end
  
  def price=(pric)
    @price = pric
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def price_as_string
    result = "$%0.2f" % [price]
    result
  end
  
end
