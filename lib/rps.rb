class RPS

  def self.play(my_shape)
    computer_shape = self.pick_shape
    if my_shape == computer_shape
      return computer_shape, :draw
    else
      winner = self.pick_winner(my_shape, computer_shape)
      if winner == :you
        return computer_shape, :win
      else
         return computer_shape, :lose
      end
    end
  end

  def self.pick_shape
    [:R, :P, :S].sample
  end

  def self.pick_winner(my_shape, computer_shape)
    if my_shape == :R && computer_shape == :S
      :you
    elsif my_shape == :R && computer_shape == :P
      :computer
    elsif my_shape == :P && computer_shape == :R
      :you
    elsif my_shape == :P && computer_shape == :S
      :computer
    elsif my_shape == :S && computer_shape == :P
      :you
    elsif my_shape == :S && computer_shape == :R
      :computer
    end
  end

  SHAPE_MAP ={
    R: "Rock",
    P: "Paper",
    S: "Scissors"
  }

  def self.shape_to_string(shape)
    SHAPE_MAP[shape]
  end
end
