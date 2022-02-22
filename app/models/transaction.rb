class Transaction < ApplicationRecord
  # Direct associations

  belongs_to :buyer,
             class_name: "User2"

  belongs_to :seller,
             class_name: "User"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    seller.to_s
  end
end
