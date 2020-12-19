require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  #  {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
   #return the second element in the 4th of July array
  holiday_hash.each do |season, data|
    if season == :summer
      data.each do |holiday, array|
        if holiday == :fourth_of_july
          return array[1]
        end
      end
    end
  end 

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

    holiday_hash.each do |season, data|
      if season == :winter
        data.each do |holiday, array|
          if holiday == :christmas || holiday == :new_years
            array << supply
          end
        end
      end
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |season, data|
    if season == :spring
      data.each do |holiday, array|
          array << supply
      end
    end
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    holiday_hash[season][holiday_name] = supply_array
    return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  all_supplies = []
  
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, array|
        all_supplies += array
      end
    end
  end
  return all_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    holiday_hash.each do |season, data|
      puts "#{season.to_s.capitalize}:"
        data.each do |holiday, array|
          holiday = holiday.to_s.tr("_", " ").split(" ").map(&:capitalize).join(" ")
          puts "  #{holiday}: #{array.join(", ")}"
        end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []

  holiday_hash.each do |season, hash|
    hash.each do |holiday, value|
      if value.include?("BBQ") == true
        bbq_array << holiday
      end
    end
  end
  bbq_array
end







