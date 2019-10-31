require "test_helper"

class NamxTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Namx::VERSION
  end

  def test_parse_stdin
    assert Namx.parse("10 11 12"), [10, 11, 12]
  end

  def test_return_numbers
    assert Namx.biggest_nums([10, 11, 12], 1), 12
    assert Namx.biggest_nums([10, 11, 12]), 12
  end
end
