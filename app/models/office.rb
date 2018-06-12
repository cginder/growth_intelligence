class Office < ApplicationRecord
  # Direct associations

  belongs_to :practice,
             :counter_cache => :practice_locations_count

  # Indirect associations

  # Validations

end
