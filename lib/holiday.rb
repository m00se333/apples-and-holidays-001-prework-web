require 'pry'


def test_h
{
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
end

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season , holiday|
    if season == :spring
      holiday.each do |occasion , supplies|
        return "#{supplies.join("")}"
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.each do |x|
    puts "#{x}"
  end.flatten #$$$$$$
  
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |k,v| #returning a bunch of nils with .map
    puts "#{k.capitalize}:"
    v.each do |x,y|
      title = x.to_s.tr("_", " ").split #.tr("_", " ") is new and looks like it replaces characters
      puts "  #{title.collect {|x| x.capitalize}.join(" ")}: #{y.join(", ")}" #$$$$$$$   
    end        #The one line interpolation is really nifty awesome to see what Ruby can do.
  end
end

def all_holidays_with_bbq(holiday_hash)
  hello = []
  holiday_hash.each do |z,w|
    w.each do |x,y| 
      if y.include?("BBQ")
        hello << x
        
      end
    end
  end # Here it doesn't show up. The holiday_hash.each do |z,w| is still going on
hello # Placement is key: here the output [:fourth_of_july, :memorial_day]
end   # shows up, but...







