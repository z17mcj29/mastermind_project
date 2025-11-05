
class ComputerLogic

  def comp_choose(gb, cb, i)

    0.upto(3) do |j|
    gb[i][j] = random_choice
    end

    0.upto(3) do |k|
      gb[i][k] = cb[k] if cb[k] != " "
    end

  end

  def random_choice
    
    choice = " "

    random_color = rand(1..9)

    case random_color
      when 1
        choice = "O"
      when 2
        choice = "G"
      when 3
        choice = "J"
      when 4
        choice = "D"
      when 5
        choice = "C"
      when 6
        choice = "E"
      when 7
        choice = "T"
      when 8
        choice = "S"
      when 9
        choice = "A"
    end
      choice
  end

  def correct_choices(sb, pb, cb, i)

    0.upto(3) do |j|
      cb[j] = sb[j] if pb[i][j] == sb[j]
    end

  end

end