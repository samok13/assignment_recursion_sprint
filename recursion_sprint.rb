
#Factorial Recursion
def factorial_r(num)
  return num if num == 1 || num ==2
  
  num * factorial_r(num-1)  
end


#Factorial Iterative

def factorial_i(num)
factorial_sol = 1  
  while num > 0
   factorial_sol *= num
    num -= 1
  end
  factorial_sol
end

#DigitSum Recursive
def sumdig_r(num)
  return 0 if num == 0
   num % 10 + sumdig_r(num/10)
end

#DigitSum Interative
def sumdig_i(num)
  sum_digits = 0
  while num >= 1
    sum_digits += num % 10 
    num /= 10
  end
  sum_digits
end

#Palindrome Recursive
def palindrome_check_r(word)
  return false if word[0] != word[-1]
  return true if word.length == 1 || word.length == 0
  
  palindrome_check_r(word[1..-2])  if word[0] == word[-1]
end

#Palindrome Iterative
def palindrome_check_i(word)
  until word.length <= 1
    return true if (word.length == 1) || (word.length == 0)
    if word[0] == word[-1]
      word = word[1..-2]
    else 
      return false
    end
  end
end

if __FILE__ == $0
  puts palindrome_check_i("rater")
end



