require "test_helper"

class NamxTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Namx::VERSION
  end

  def setup
    @suitable = File.open('test/nums.txt', 'r').readline
  end

  def test_pipeline
    assert_output(/12/) { Namx.run(@suitable, 1) }
  end

  def test_parse_stdin
    assert_equal Namx.parse(@suitable), ["10", "11", "12"]
  end

  def test_return_numbers
    assert_equal Namx.biggest_nums([10, 11, 12], 1), [12]
    assert_equal Namx.biggest_nums([10, 11, 12], 2), [12, 11]
  end
end
