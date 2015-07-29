
def sum_array(array)
  #find the sum of the items in the array
  #it's possible that nil items could be
  #members of the array
  array.reject(&:nil?).reduce(:+)
end

def titleize(string)
  #capitalizes the first letter of every word in a string
  #except an, a, of, the.  Unless that word is the first word
  #of the string

  non_capitals = ['a', 'of', 'the', 'an']

  string.split(' ').map.with_index do |word, i|
    word.downcase!
    if i == 0
      word[0] = word[0].upcase
    else
      if !non_capitals.include?(word)
        word[0] = word[0].upcase
      end
    end

    word

  end.join(' ')
end

def interpose(array1, array2)
  #returns a nested array, where each nested array is the corresponding
  #two elements of the two given arrays
  #For example: given arrays [1, 2, 3] and [:a, :b, :c]
  #return [[1, :a], [2, :b], [3, :c]]

  #assume they are the same length
  #len = array1.length - 1

  #(0..len).map do |i|
    #[array1[i], array2[i]]
  #end
  array1.zip(array2)
end


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
