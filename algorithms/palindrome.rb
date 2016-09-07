def isPalindrome?(str)
  reversed_string = ""
  for character in str.split("").reverse
    reversed_string << character
  end
  reversed_string.split(" ").join == str.split(" ").join
end
