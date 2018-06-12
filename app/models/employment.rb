class Employment < ApplicationRecord
  # Direct associations

  belongs_to :physician,
             :counter_cache => true

  # Indirect associations

  # Validations

end
