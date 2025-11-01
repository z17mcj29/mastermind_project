# I read the project description last night right after completing Tic Tac Toe
# before going to bed. I kept thinking of how to solve the problem as I was 
# trying to go to sleep or waking up and have been thinking about a way forward
# all day today. The main area that kept stumping me was how to check when there
# are multiple of the same color. After thinking of many ways that don't work
# I think I have a solution. So here is my pre build idea for building this
# project.

# Game Board:
#   Make a nested array gb_array = [
#         [" ", " ", " ", " "]  #Row 01
#         [" ", " ", " ", " "]  #Row 02
#         [" ", " ", " ", " "]  #Row 03
#         [" ", " ", " ", " "]  #Row 04
#         [" ", " ", " ", " "]  #Row 05
#         [" ", " ", " ", " "]  #Row 06
#         [" ", " ", " ", " "]  #Row 07
#         [" ", " ", " ", " "]  #Row 08
#         [" ", " ", " ", " "]  #Row 09
#         [" ", " ", " ", " "]  #Row 10
#         [" ", " ", " ", " "]  #Row 11
#         [" ", " ", " ", " "]  #Row 12
#]

# I will have a loop do function like in the Tic Tac Toe project.
# there will be a variable i that starts at 0 and increments
# each iteration by 1. i = 0. i++. This will be used
# as the comparison so I can compare each nested array. So 
# first time through gb_array[i][0], gb_array[i][1], gb_array[i][2], gb_array[i][3]
# which will compare to the solution array.

# I spent a huge amount of time working on how to compare the two arrays. The
# multiple of one color was throwing me off. I was hoping I could and two arrays
# and get all the same. For example [r, r, r, r] & [b, r, g, r] would hopefully 
# return [r, r] but unfortunately it returns [r]
# The new method I thought up and I think will work is to have each spot in 
# the array see if it matches its neighbor. For example gb_array[i][0] == solution_array[0][0]
# Do that four times and if any of them match use a counter to update the amount of red pegs.
# If any of the four match I'm going to have a flag that switches showing that array position
# has been used. I will then go through each of the unused array positions and see if it matches
# any of the other array positions. If it finds a match it will mark both slots as used and update
# the white pegs. Red pegs mean right color right position. White pegs mean right color wrong position.

# I will also have logic that checks after each iteration if the game has been won or ended.
# I will also use the same technique for getting user input in Tic Tac Toe. This time I will
# require all 4 colors before I update the map. I will probably put each color on the screen showing what
# was selected until all 4 are done. 

# I think this will be enough to solve the problem. We'll see how it goes and what problems
# I run into along the way.