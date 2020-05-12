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

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.collect do |season, holiday|
     line_a = season.capitalize
       holiday.collect do |day, supplies|
         line_b = day.to_s.split(" ")
        #  binding.pry
         line_c = supplies.join(", ")
           line_b.collect do |words|
             line_d = words.capitalize
       puts "#{line_a}:"
       puts "  #{line_d}:"" #{line_c}"
       end
     end
   end
 end


 def all_supplies_in_holidays(holiday_supplies)
   holiday_supplies.collect do |season, holiday_hash|
     puts "#{season.capitalize}:"
     holiday_hash.collect do |holiday, supplies|
       holiday supplies.to_s
         array.join # here is where you should print holidays and supplies
       end
   end
 end
 end








  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
