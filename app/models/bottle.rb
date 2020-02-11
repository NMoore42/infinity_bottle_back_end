class Bottle < ApplicationRecord
  belongs_to :user
  has_many :pours

  def bottle_data
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

  def current_bottle_volume
    self.pours.sum {|pour| pour.pour_volume}
  end

  def sorted_pours
    self.pours.sort_by {|pour| pour.updated_at}
  end

end
