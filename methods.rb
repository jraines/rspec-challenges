
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


class Doubler
  def new
    @complete = false
  end

  def complete!
    @complete = true
  end

  def double(n)
    n * 2
  end

end

class CashDoubler
  def initialize(doubler)

    # dependency injection!
    #
    # we're giving cash doubler
    # an object which it will
    # depend on to do some of
    # its work
    @doubler = doubler
  end

  def double_cash(cash_string)
    # do the actual work
    num = cash_string[/\d/].to_i

    # delegate some work to the injected
    # doubler!
    num = @doubler.double(num)
    num = "$#{num}"

    # mark the task complete (we are
    # assuming the doubler can only
    # be used once
    @doubler.complete!

    #return the actual result
    num
  end
end

