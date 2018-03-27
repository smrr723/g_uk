def palindrome?(string)
  if string.downcase.reverse == string.downcase
    puts "We have a palindrome..!"
    return true
  else
    puts "Out of luck.. not a palindrome."
    return false
  end
end

palindrome?("Hello")
palindrome?("Anna")
