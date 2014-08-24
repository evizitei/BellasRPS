class RPS

  def self.play(my_shape)
    puts "You picked #{shape_to_string(my_shape)}"
    computer_shape = self.pick_shape
    puts "Computer picked #{shape_to_string(computer_shape)}"
    if my_shape == computer_shape
      puts "We tied!"
    else
      winner = self.pick_winner(my_shape, computer_shape)
      if winner == :you
        puts "You Win!!"
      else
        puts "Computer Wins!!"
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
