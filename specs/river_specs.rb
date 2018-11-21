require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup()


    # non glabal
    fish1 = Fish.new("Cod")
    fish2 = Fish.new("Salmon")
    fish3 = Fish.new("Nemo")

    fishes = [fish1, fish2, fish3]

      @river = River.new("Amazon", fishes)
  end

  def test_river_has_name()
    assert_equal("Amazon", @river.name)
  end
#
  def test_river_has_fishes
    count = @river.count_fishes
    assert_equal(3, count)
  end

def test_river_can_remove_fish
  @river.remove_fish #just removes a fish
  assert_equal(2, @river.count_fishes)
end 


# def test_add_fish()
#   @river.push(@fish1)
#   # assert_equal(1, @)
#
#   def test_remove_fish()
#     @river.remove_fish(@fish1)
#     assert_equal(1, @river.num_of_fish)
#   end


end
