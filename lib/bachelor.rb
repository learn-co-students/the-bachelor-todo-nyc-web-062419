def get_first_name_of_season_winner(data, season)
 data[season].each do |player_hash|
  if player_hash["status"]== "Winner" then return player_hash["name"].split(" ")[0]
      end
    end 
end

def get_contestant_name(data, occupation)
  data.each do |season, player|
    player.each do |player_hash|
      if player_hash["occupation"]==occupation then return player_hash["name"]
      end
    end 
  end
end

def count_contestants_by_hometown(data, hometown)
   counter=0
   data.each do |season, player|
    player.each do |player_hash|
      if player_hash["hometown"]==hometown then  counter+=1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
 data.each do|season, player|
  player.each do |player_hash|
    if player_hash["hometown"]== hometown then return player_hash["occupation"]
    end
  end
end
end

def get_average_age_for_season(data, season)
total_age=0
number_of_players=0
data[season].each do |player_hash|
  total_age+=(player_hash["age"]).to_i
  number_of_players+=1
 end
 (total_age/ number_of_players.to_f).round
end
