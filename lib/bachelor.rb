
def get_first_name_of_season_winner(data, season)
  winner = ''
  data.each do |seasons,contestants|
    if seasons == season
      contestants.each do |key, value|
        winner = key["name"] unless key["status"] != "Winner"
      end
    end
  end
  winner = winner.split
  winner[0]
end

def get_contestant_name(data, occupation)
  value_returned = ''
  data.each do |seasons,contestants|
      contestants.each do |key, value|
        value_returned = key["name"] unless key["occupation"] != occupation
      end
  end
  value_returned
end

def count_contestants_by_hometown(data, hometown)
  value_returned = 0
  data.each do |seasons,contestants|
      contestants.each do |key, value|
        value_returned += 1 unless key["hometown"] != hometown
      end
  end
  value_returned
end

def get_occupation(data, hometown)
  value_returned = []
  data.each do |seasons,contestants|
      contestants.each do |key, value|
        value_returned << key["occupation"] unless key["hometown"] != hometown
      end
  end
  value_returned[0]
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |seasons,contestants|
    if seasons == season
      ages = contestants.collect do |key,value|
        key["age"].to_f
      end 
    end
  end
  sum = 0
  ages.each {|x| sum += x}
  (sum / ages.length).round
end
