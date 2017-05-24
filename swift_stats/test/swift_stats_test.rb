require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/swift_stats'

class SwiftStatsTest < Minitest::Test

  def test_instance_of_swift_stats
    stats = SwiftStats.new

    assert_instance_of SwiftStats, stats
  end

  def test_file_read
    stats = SwiftStats.new
    filename = stats.read(filename)

    assert_equal "But every night", filename.chomp
  end

  def test_array_from_read
    stats = SwiftStats.new
    filename = stats.read(filename)
    array = stats.to_array(filename)

    assert_equal ["But", "every", "night"], array
  end

  def test_unique_from_array
    stats = SwiftStats.new
    filename = stats.read(filename)
    array = stats.to_array(filename)
    actual = stats.each_word(array)

    assert_equal ["But", "every", "night"], actual
  end

end
