class AllergyData

  def allergy_collection
    { 1   => "eggs",
      2   => "peanuts",
      4   => "shellfish",
      8   => "strawberries",
      16  => "tomatoes",
      32  => "chocolate",
      64  => "pollen",
      128 => "cats" }
  end


  def allergy_score(number)
    # allergy_collection[number]
    sum = 0
    until sum == number
      allergy_collection.each do |key, value|
  end



end
