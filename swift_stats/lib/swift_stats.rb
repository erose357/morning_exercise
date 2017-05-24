class SwiftStats

  def read(filename)
    filename = ARGV[0]
    File.read(filename)
  end

  def to_array(filename)
    filename.chomp.split
  end

  def each_word(array)
    array.uniq
  end


end
