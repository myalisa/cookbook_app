class Recipe < ApplicationRecord

  def ingredients_list
    ingredients.split(",")
  end

  def directions_list
    directions.split(",")
    
  end

  def formatted_prep_time
    #input: 125
    #output: "2 Hours, 5 minutes"

    # 1 - find number of hours in prep_time
    # 2 - find remainder of minutes in prep_time
    # 3 - combine hours and minutes in string

    "2 Hours, 5 Minutes"

    hours = prep_time / 60
    minutes = (prep_time - (hours * 60)
  end
end
