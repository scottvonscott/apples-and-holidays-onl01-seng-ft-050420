require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
      holiday_hash[:winter].each do |holiday, supplies|
        supplies << supply
      end
    end



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supplies|
    supplies << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
   holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.join()
  # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holiday_hash|
     puts "#{season.to_s.capitalize}:"
       holiday_hash.each do |day, supplies|
         day_array = day.to_s.split("_")
         cap_days = []
           day_array.collect do |words|
             cap_days << words.capitalize
           end
           day_line = cap_days.join(" ")
           puts "  #{day_line}: #{supplies.join(", ")}"
       end
     end
   end


def all_holidays_with_bbq(holiday_supplies)
  holiday_supplies.detect do |seasons, holidays, supplies|
    return holiday if supplies.include?('BBQ')

  # holiday_names_andbbq << holiday_hash[:season][:holiday][2]
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end
end
