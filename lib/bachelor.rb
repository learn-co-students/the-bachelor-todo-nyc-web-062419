require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
   contestant.each do |key, val|
     if val == "Winner"
       return contestant["name"].split(' ')[0]
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |person|
      person.each do |key, val|
        if val == occupation
          return person['name']
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |season, info|
      info.each do |person|
        person.each do |key, val|
          if val == hometown
            counter += 1
          end
        end
      end
    end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do|person|
      person.each do |key, val|
        if val == hometown
          return person['occupation']
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  ages = 0
    data[season].each do |person|
      person.each do |key, val|
        if key == 'age'
          ages += val.to_f
          counter += 1
        end
      end
    end
    return (ages/counter).round
end
