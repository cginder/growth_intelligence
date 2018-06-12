class Physician < ApplicationRecord
  # Direct associations

  has_many   :attestations,
             :dependent => :destroy

  has_many   :employments,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
