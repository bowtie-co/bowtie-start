require 'test_helper'

class BowtieStartTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil BowtieStart::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_if_repo_url_is_valid
    url = valid_url?('https://github.com/igolden/dotfiles')  
    url === true ? (assert true) : (assert false)
  end
end
