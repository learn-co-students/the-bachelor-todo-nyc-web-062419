require 'pry'
require 'byebug'

def get_first_name_of_season_winner(data, season)
	name_array = []
	data[season].each do |information|
		if information["status"] == "Winner"
			return information["name"].split(" ")[0]
		end
	end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_num|
  	season_num.each do |information|
  		if occupation == information["occupation"] 
  			return information["name"]
  		end
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_num|
  	season_num.each do |information|
  		if information["hometown"] == hometown
  			counter += 1
  		end
  	end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, season_num|
  	season_num.each do |information|
  		if hometown == information["hometown"]
  			return information["occupation"]
  		end
  	end
  end
end

def get_average_age_for_season(data, season)
	age = 0 
	count = 0
	data[season].each do |information|
  		age += information["age"].to_f
  		count += 1
  	end
  average = (age / count).round
  # age = 0
  # count = 0
  # array_of_age = []
  # data.each do |season, season_num|
  # 	season_num.each do |information|
  # 		age += information["age"].to_i
  # 		count += 1
  # 	end
  # end
  # average = (age / count)
end
