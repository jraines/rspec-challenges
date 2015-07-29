def repeat(str, n)
  #takes a string and an integer and returns
  # the string repeated n times, seperated by
end

def interleave(array1, array2)
  #like interpose, but the array should not be nested
  #For example: given arrays [1, 2, 3] and [:a, :b, :c]
  #return [1, :a, 2, :b, 3, :c]
end

def hide_in_shuffle(letter)
  #takes a letter and retuns a shuffled array containing that letter
  #Your test should confirm that the returned array contains the original
  #letter

  arr = [rand(10), rand(10), rand(10), letter]
  arr.shuffle
end

def shuffler(array, n)
  #takes an array and shuffles it n times
  #Your test should confirm that the array
  #is shuffled the correct number of times
  #
  #Hint -- you aren't testing the return value of this method!

  n.times{ array.shuffle }
end
