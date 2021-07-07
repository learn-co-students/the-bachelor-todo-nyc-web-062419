def get_first_name_of_season_winner(data, season)
  winner = ""
  winner_first = ""
  data.each do |season_title, contestants|
    if season_title == season
      contestants.each do |contestant_hash|
        if contestant_hash.values.include? "Winner"
          contestant_hash.each do |stat, info|
            if stat == "name"
              winner = info
            end
          end
        end
      end
    end
  end

  winner = winner.split(" ")
  winner.shift()
  # code here
end

def get_contestant_name(data, occupation)
  contestant_name = ""

  data.each do |season_title, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash.values.include?(occupation) 
        contestant_hash.each do |stat, info|
          if stat == "name"
            contestant_name = info
          end
        end
      end
    end
  end

  contestant_name
  # code here
end

def count_contestants_by_hometown(data, hometown)
  num_of_contestants = 0

  data.each do |season_title, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash.values.include?(hometown)
        num_of_contestants += 1
      end
    end
  end

  num_of_contestants
  # code here
end

def get_occupation(data, hometown)
  occupation = ""

  data.each do |season_title, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash.values.include?(hometown)
        contestant_hash.each do |stat, info|
          if stat == "occupation"
            occupation = info
          end
        end
        break
      end
    end
  end

  occupation
  # code here
end

def get_average_age_for_season(data, season)
  combined_ages = 0
  num_of_contestants = 0

  data.each do |season_title, contestants|
    if season_title == season
      contestants.each do |contestant_hash|
        contestant_hash.each do |stat, info|
          if stat == "age"
            combined_ages += info.to_f
            num_of_contestants += 1
          end
        end
      end
    end
  end
  
  avg_age = combined_ages / num_of_contestants
  avg_age.round
  # code here
end
