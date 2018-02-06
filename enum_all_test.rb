# This class is meant to demonstrate the usage and testing of the
# all enumerable in ruby


require 'minitest/autorun'
require 'minitest/pride'


class TestAll < Minitest::Test

  #This is to test that all the values in the arrays are zeros
  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0]

    all_zeros = numbers.all?{ |number| number.zero?}
    assert all_zeros
  end


  # This is to test that all are not zeros
  def test_all_not_zeros
    numbers = [0, 1, 10, 0, 2, 8, 9, 0, 12, 0]
    all_zeros = numbers.all? { |number| number.zero?  }

    refute all_zeros
  end

  # This is to test that all the words in the arrays are dogs
  def test_all_dogs
    words = ["dogs", "dogs", "dogs", "dogs", "dogs"]
    all_dogs = words.all? { |word| word == "dogs" }

    assert all_dogs
  end

  # Use another synthas to test that all are dogs

  def all_dogs_test
    words = ["dogs", "dogs", "dogs", "dogs", "dogs"]
    all_dogs_another = words.all?(&:word == "dogs")

    assert all_dogs_another
  end

  # We will do two more test with all and draw the curtain for all

  # Let's test for upper case

  def test_all_uppercase
    words = ["SOLA", "SOLA", "JIDE", "KOSOKO"]
    all_case = words.all? {|word| word == word.upcase }

    assert all_case
  end

  # Let's test if all contains the same words
  def test_all_same_words
    words = ["SOLA", "SOLA", "JIDE", "KOSOKO"]
    all_same = words.all? {|word| word == word }

    assert all_same
  end

  # Let's test all are three letter words

  def test_all_three_letter_words
    words = ["ade", "aje", "aba", "ada", "oko", 'ile', "alo"]
    all_three_letters = words.all? {|word| word.length == 3 }

    assert all_three_letters
  end


end


# By for all now
# Try and practice. Thanks
