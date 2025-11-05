

class Communication

  def explain_rules
    puts "--------Welcome to Master Mind!!!--------"
    puts " "
    puts "Your job is to guess the secret color pattern"
    puts "Place a color in each of the four pegs."
    puts "You will then receive feedback. Each correct"
    puts "color and peg location will give you a red peg."
    puts "Right color but in the wrong spot will give you"
    puts "A white peg. Your goal is to get all four pegs"
    puts "correct within twelve tries."
    puts " "
  end

  def explain_controls
    puts "This is a console game and I don't know how to do"
    puts "actual colors yet. To select you will be typing the"
    puts "first letter of the following nine colors"
    puts "The selections are case insensitive"
    puts " "
    puts "O - Opal"
    puts "G - Garnet"
    puts "J - Jade"
    puts "D - Diamond"
    puts "C - Copper"
    puts "E - Emerald"
    puts "T - Topaz"
    puts "S - Sapphire"
    puts "A - Amethyst"
    puts " "
    puts "Trust me. These are all colors."
    puts " "
  end

  def show_choices
    puts "(O)pal, (G)arnet, (J)ade, (D)iamond, (C)opper, (E)merald, (T)opaz, (S)apphire, (A)methyest"
  end

  def choose_player_or_computer
    puts "Decide if you want to take on the Mastermind challenge"
    puts "or if you want to set the code and let the computer"
    puts "try and guess. Press 'P' for player or 'C' for computer"
  end

  def set_code
    puts "Please enter the code you want the computer to try and guess."
  end

end