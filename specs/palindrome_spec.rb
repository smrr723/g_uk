require('minitest/autorun')
require('minitest/rg')

require_relative('../palindrome')

class PalindromeTest < MiniTest::Test
  def setup()
    @non_palindrome = "Hello"
    @palindrome = "anna"
    @palindrome_with_caps = "Anna"
    @long_palindrome = "Annnnnnnnnnnnnnnnnnnna"
  end

  def test_identify_non_palindrome()
    non_palindrome = palindrome?(@non_palindrome)
    assert_equal(false, non_palindrome)
  end

  def test_identify_palindrome()
    palindrome = palindrome?(@palindrome)
    assert_equal(true, palindrome)
  end

  def test_identify_palindrome_with_caps()
    palindrome_with_caps = palindrome?(@palindrome_with_caps)
    assert_equal(true, palindrome_with_caps)
  end

  def test_long_palindrome()
    long_palindrome = palindrome?(@long_palindrome)
    assert_equal(true, long_palindrome)
  end


end
