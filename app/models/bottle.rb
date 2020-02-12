class Bottle < ApplicationRecord
  belongs_to :user
  has_many :pours

  #returns formated hash of bottle for front-end use
  def bottle_hash_for_front_end
    return_hash = {}
    pour_data = bottle_data_build
    bottle_volume = current_bottle_volume
    bottle_price = 0
    pour_data.each do |name, details|
      pour_data[name][:percent_of_bottle] = details[:volume] / bottle_volume
      bottle_price += details[:price]
    end
    return_hash[:bottle_details] = {
      name: self.bottle_name,
      type: self.bottle_type,
      volume: bottle_volume,
      value: bottle_price,
      total_additions: self.total_addition_pours,
      total_subtractions: self.total_subtraction_pours
    }
    return_hash[:pour_details] = pour_data
    return_hash
  end

  #returns builds accurate breakdown of bottle
  def bottle_data_build
    current_bottle = {}
    self.sorted_pours.each do |pour|
      if pour.pour_volume > 0
        current_bottle[pour.pour_name] ||= {}
        current_bottle[pour.pour_name][:volume] ||= 0
        current_bottle[pour.pour_name][:price] ||= 0
        current_bottle[pour.pour_name][:volume] += pour.pour_volume.to_f
        current_bottle[pour.pour_name][:price] += pour.pour_price.to_f
      else
        bottle_volume = self.current_bottle_volume
        current_bottle.each do |key, value|
          new_percent = (1 -(-pour.pour_volume / bottle_volume.to_f))
          current_bottle[key][:volume] *= new_percent
          current_bottle[key][:price] *= new_percent
        end
      end
    end
    current_bottle
  end

  #returns current volume of bottle
  def current_bottle_volume
    self.pours.sum {|pour| pour.pour_volume}
  end

  #sorts the pours by oldest to newest
  def sorted_pours
    self.pours.sort_by {|pour| pour.created_at}
  end

  #sums total number of pours where spirit was added
  def total_addition_pours
    self.pours.select {|pour| pour.pour_volume > 0}.count
  end

  #sums total number of pours where spirit was subtracted
  def total_subtraction_pours
    self.pours.select {|pour| pour.pour_volume < 0}.count
  end


end
