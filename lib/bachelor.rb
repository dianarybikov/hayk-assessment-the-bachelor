require 'pry'


def get_first_name_of_season_winner(data, season)
  data[season].find do |individual|
      if individual["status"] == "Winner"
          return individual["name"].split(' ').first
      end
    end
  end

def get_contestant_name(data, occupation)
  data.values.flatten.find do |individual|
      if individual["occupation"] == occupation
        return individual["name"]
      end
    end
  end             


def count_contestants_by_hometown(data, hometown)
#   count = 0
#   data.each do |key, value|
#     value.each do |individual|
#       if individual["hometown"] == hometown
#         count += 1
#       end
#     end
#   end
#   count
# end

data.values.flatten.count do |individual|
  hometown == individual["hometown"]
end
end


def get_occupation(data, hometown)
  # code here
  data.each do |key, value|
    value.each do |individual|
      if individual["hometown"] == hometown
        return individual["occupation"]
      end
    end
  end
end


# Build a method `get_occupation`, that takes in two arguments––the data hash
#    and a string of a hometown. It returns the occupation of the first contestant
#    who hails from that hometown.



def get_average_age_for_season(data, season)
#   #code here
age = 0 
data[season].each do |individual|
age += individual["age"].to_i
end
average = age / data[season].length.to_f
average.round
end


#   data.reduce(0) do |key, value|
#     if key == season
#       value.each do |individual|
#         age += individual["age"].to_i
#         # binding.pry
#         average_age = age.to_f/data.length
#         return average_age.round(2)
#       end 
#     end
#   end
# end

# binding.pry 
# 0
# sum = data.reduce(0) do |total, value|
# total + number
# end
# average = sum / data.length.to_f
# average.round(2) #the two is saying how many decimals
# end



# Build a method, `get_average_age_for_season`, that takes in two
#    arguments––the data hash and a string of a season. Iterate through the hash
#    and return the average age of all of the contestants for that season.

#     * How will you iterate down into the level of the hash that contains each
#       contestant's age?
#     * How will you collect the ages of each contestant and average them?
#       Remember that the values of the "age" keys are not numbers, they are
#       strings. How do we convert strings to numbers in Ruby?
#     * Remember that dividing *integers* in Ruby always rounds down. In this case
#       though, we want the normal math sort of rounding (where .5 and higher
#       rounds *up*), instead. Consider the difference between `to_f` and `to_i`.

