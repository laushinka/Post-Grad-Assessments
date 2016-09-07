def reverse_string(str)
  return str if str.length < 1
  reverse_string(str[1..-1]) + str[0]
end
