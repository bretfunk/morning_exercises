class Allergies
attr_reader :num
  def initialize(num)
    @num = num
    @products = {
      128 => "cats",
      64 => "pollen",
      32 => "chocolate",
      16 => "tomatoes",
      8 => "strawberries",
      4 => "shellfish",
      2 => "peanuts",
      1 => "eggs"
    }
  end

  def sort(num=@num)
    total = 0
    allergies = []
    @products.each_pair do |key, value|
      if num - total >= key
        total += key
        allergies << value
      end
    end
    p allergies
  end
end
test = Allergies.new(151)
test.sort
