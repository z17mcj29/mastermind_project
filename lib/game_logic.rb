#  Built this to have the gb array be nested but source a single array.
#  After thinking about it plan to refactor to have the source array
#  also be a nested array the same size as the game board array.

# Follow up to the follow up. I'm not using the peg board here, this
# is the source array which is a single array. So I made the source
# array a nested array for no reason. Moving back to a single array.
# I'm just keeping these notes for future historical reference.


class GameLogic

  # Compares colors and gives pegs.
  # Red Peg right color right slot.
  # White Peg right color wrong slot.
  # I"m sure there is a more efficient way to
  # do this. I'll get it working and then
  # work on making it more efficient.
  def count_pegs(gb_array, source_array, i )
    gb_peg_1 = true
    gb_peg_2 = true
    gb_peg_3 = true
    gb_peg_4 = true
    source_peg_1 = true
    source_peg_2 = true
    source_peg_3 = true
    source_peg_4 = true
    peg_count = []

    if gb_array[i][0] == source_array[0]
      gb_peg_1 = false
      source_peg_1 = false
      peg_count << "R"
    end

    if gb_array[i][1] == source_array[1]
      gb_peg_2 = false
      source_peg_2 = false
      peg_count << "R"
    end

    if gb_array[i][2] == source_array[2]
      gb_peg_3 = false
      source_peg_3 = false
      peg_count << "R"
    end

    if gb_array[i][3] == source_array[3]
      gb_peg_3 = false
      source_peg_3 = false
      peg_count << "R"
    end

    if source_peg_1 #Checking peg 1 vs pegs 2, 3, 4
      if source_array[0] == gb_array[i][1] && source_peg_1 && gb_peg_2
        gb_peg_2 = false
        source_peg_1 = false
        peg_count << "W"        
      end
      if source_array[0] == gb_array[i][2] && source_peg_1 && gb_peg_3
        gb_peg_3 = false
        source_peg_1 = false
        peg_count << "W"        
      end
      if source_array[0] == gb_array[i][3] && source_peg_1 && gb_peg_4
        gb_peg_4 = false
        source_peg_1 = false
        peg_count << "W"        
      end
    end

    if source_peg_2 #Checking peg 2 vs pegs 1, 3, 4
      if source_array[1] == gb_array[i][0] && source_peg_2 && gb_peg_1
        gb_peg_1 = false
        source_peg_2 = false
        peg_count << "W"        
      end
      if source_array[1] == gb_array[i][2] && source_peg_2 && gb_peg_3
        gb_peg_3 = false
        source_peg_2 = false
        peg_count << "W"        
      end
      if source_array[1] == gb_array[i][3] && source_peg_2 && gb_peg_4
        gb_peg_4 = false
        source_peg_2 = false
        peg_count << "W"        
      end
    end

    if source_peg_3 #Checking peg 3 vs pegs 1, 2, 4
      if source_array[2] == gb_array[i][0] && source_peg_3 && gb_peg_1
        gb_peg_1 = false
        source_peg_3 = false
        peg_count << "W"        
      end
      if source_array[2] == gb_array[i][1] && source_peg_3 && gb_peg_2
        gb_peg_2 = false
        source_peg_3 = false
        peg_count << "W"        
      end
      if source_array[2] == gb_array[i][3] && source_peg_3 && gb_peg_4
        gb_peg_4 = false
        source_peg_3 = false
        peg_count << "W"        
      end
    end

    if source_peg_4 #Checking peg 4 vs pegs 1, 2, 3
      if source_array[3] == gb_array[i][0] && source_peg_4 && gb_peg_1
        gb_peg_1 = false
        source_peg_4 = false
        peg_count << "W"        
      end
      if source_array[3] == gb_array[i][1] && source_peg_4 && gb_peg_2
        gb_peg_2 = false
        source_peg_4 = false
        peg_count << "W"        
      end
      if source_array[3] == gb_array[i][2] && source_peg_4 && gb_peg_3
        gb_peg_3 = false
        source_peg_4 = false
        peg_count << "W"        
      end
    end

    peg_count
  end

  def valid_input

    input = nil

    loop do
      puts "Enter your selection!"
      input = gets.chomp.upcase

      break input if input.match?(/[ACDEGJOST]/)
    end

  end

  def choose_colors(gb, i)
    show_select = []
    0.upto(3) do |j|    
    selection = valid_input
    gb[i][j] = selection
    show_select << selection
    print "#{show_select}"
    puts " "
    end
  end

  def update_pegs(gb_array, source_array, peg_array, i)
    pegs = count_pegs(gb_array, source_array, i)
    peg_array[i][0] = pegs[0] if pegs.length >= 1
    peg_array[i][1] = pegs[1] if pegs.length >= 2
    peg_array[i][2] = pegs[2] if pegs.length >= 3
    peg_array[i][3] = pegs[3] if pegs.length >= 4
  end

end



# test_array = [
#   ["r", "r", "r", "r"],
#   ["b", "b", "b", "b"],
#   ["r", "b", "r", "g"]
# ]
# test_solution = ["g", "r", "b", "r"]
# i = 1

# gl = GameLogic.new

# p gl.count_pegs(test_array, test_solution, i)