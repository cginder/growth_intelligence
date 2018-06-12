class Employment < ApplicationRecord
  # Direct associations

  belongs_to :practice,
             :counter_cache => true

  belongs_to :physician,
             :counter_cache => true

  # Indirect associations

  # Validations

end
