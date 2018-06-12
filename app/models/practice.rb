class Practice < ApplicationRecord
  # Direct associations

  has_many   :practice_locations,
             :class_name => "Office",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
