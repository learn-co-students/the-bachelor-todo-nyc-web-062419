def get_first_name_of_season_winner(data, season)
  # code here
  index = 0
  until data[season][index]["status"] = "Winner" do
    index += 1
  end
  data[season][index]["name"].split(" ")[0]


end

def get_contestant_name(data, occupation)
  # code here

  person_hash = {}

  data.each do |season, person_array|
    person_array.each_with_index do |person, i|
      if person["occupation"] == occupation
        person_hash["season"] = season
        person_hash["index"] =  i
      end
    end
  end

  data[person_hash["season"]][person_hash["index"]]["name"]


end

def count_contestants_by_hometown(data, hometown)
  # code here

  counter = 0

  data.each do |season, person_array|
    person_array.each do |person|
      if person["hometown"] == hometown
        counter += 1
      end
    end
  end

  counter

end

def get_occupation(data, hometown)
  # code here

  data.each do |season, person_array|
    person_array.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here

  total = 0

  data[season].each do |person|
    total += person["age"].to_f
  end

  (total/(data[season].size.to_f)).round

end
