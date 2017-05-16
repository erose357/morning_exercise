require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/allergy_data'

class AllergyDataTest < Minitest::Test

  def test_peanut_allergy
    allergy_data = AllergyData.new
    input = 2
    expected = "peanuts"
    actual = allergy_data.allergy_score(input)

    assert_equal expected, actual
  end

  def test_egg_allergy
    allergy_data = AllergyData.new
    input = 1
    expected = "eggs"
    actual = allergy_data.allergy_score(input)

    assert_equal expected, actual
  end


end
