require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon", [@fish1, @fish2])
    @fish1 = Fish.new("Code")
    @fish2 = Fish.new("Salmon")

  end

  def test_get_name()
    assert_equal("Amazon" ,@river.name)
  end

  def test_river_has_fish
    assert_equal(2, @river.fish_count())
  end


  def test_remove_fish()
    @river.remove_fish(@fish1)
    assert_equal(1, @river.num_of_fish)
  end


end
