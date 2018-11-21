class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  # A bear could have a food_count method
  def food_count
    @stomach.count()
  end

  # A bear could have a roar method
  def bear_noise()
    return "Roar"
  end

  def eats_fish(river, fish)
    @stomach.push(fish)
    river.remove_fish(fish)
  end


end
