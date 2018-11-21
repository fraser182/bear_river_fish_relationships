require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type)
  end


  def test_bear_has_empty_stomach
    count = @bear.count_stomach
    assert_equal(0, count)
  end


  # need  fish, so bring in fish.rb
  def test_bear_can_Add_fish_to_stomach
    fish = Fish.new("Marley") # take in a new fish
    @bear.eats_fish(fish) #bear is going to take in the fish it wants to eat
    assert_equal(1, @bear.count_stomach)
    # remove fish from River
  end

  def test_bear_can_take_fish_from_river
    # we need fish, river and bear for this action
    #arrange
    fish = Fish.new("Rainbow")
    river = River.new("Amazon", [fish]) # we are passing in a collection of fish (see river.rb) so needs to be an array

    #act
    @bear.eat_from_river(river)  #for it to eat from the river, we need to pass a river into the function. the river with one fish (created above)

    #assert
    assert_equal(1, @bear.count_stomach())
    assert_equal(0, river.count_fishes()) # need to have access to the river class.

  end

  def test_bear_roar()
    assert_equal("Roar", @bear.bear_noise())
  end


end
