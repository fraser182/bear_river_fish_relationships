class River

  attr_reader :name

  def initialize(name)
    @name = name
    # A river should hold many fish
    @num_of_fish = []
  end

  # A river could have a fish_count method
  def fish_count()
    @num_of_fish.count
  end

  def remove_fish(fish)
    @num_of_fish.shift(fish)
  end



end
