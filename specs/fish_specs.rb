require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")
require_relative("../bear.rb")
require_relative("../river.rb")

class FishTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Cod")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Sole")
  end

  def test_get_name()
    assert_equal("Cod", @fish1.name)
  end

end
