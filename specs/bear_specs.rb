require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @fish = Fish.new("Salmon")
    @fish2 = Fish.new("Cod")
    @river = River.new("Amazon", [@fish, @fish2])
  end

  def test_get_name()
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_empty_stomach()
      assert_equal(0, @bear.food_count())
    end

  def test_bear_eats_fish()
    
    @bear.bear_eats_fish(@river, @fish)

    # remove fish from River
  end

  def test_bear_roar()
    assert_equal("Roar", @bear.bear_noise())
  end


end
