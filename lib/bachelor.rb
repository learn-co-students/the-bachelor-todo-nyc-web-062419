require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_num,info|
    info.each do |winner|
      winner.each do |name,bio|
        if season_num == season
          return bio.split(" ")[0]
          binding.pry
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_num,info|
    info.each do |winner|
      winner.each do |name,bio|
        if bio == occupation
          return winner["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_num,info|
    info.each do |winner|
      if winner["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_num,info|
    info.each do |winner|
      if winner["hometown"] == hometown
        return winner["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  counter = 0
  data.each do |season_num,info|
    if season_num == season
      info.each do |winner|
        age += winner["age"].to_f
        counter += 1
      end
    end
  end
  return (age/counter).round
end
