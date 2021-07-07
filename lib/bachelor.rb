require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |data, season|
    season.each do |contestant|
      if occupation == contestant["occupation"]
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |data, season|
    season.each do |contestant|
      if hometown == contestant["hometown"]
        count = count + 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |data, season|
    season.each do |contestant|
      if hometown == contestant["hometown"]
       return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum = 0  #sum of contestant ages for season
  counter = 0 #number to div by for avg
  data[season].map do |contestant| 
    sum += contestant["age"].to_i
    counter += 1
  end
  return (sum/counter.to_f).round(0)
end
