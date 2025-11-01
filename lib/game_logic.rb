
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

end


test_array = [
  ["r", "r", "r", "r"],
  ["b", "b", "b", "b"],
  ["r", "b", "r", "g"]
]
test_solution = ["g", "r", "b", "r"]
i = 1

gl = GameLogic.new

p gl.count_pegs(test_array, test_solution, i)