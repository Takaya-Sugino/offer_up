class Item < ApplicationRecord
  # Direct associations

  belongs_to :category

  has_many   :comments,
             dependent: :destroy

  # Indirect associations

  has_many   :users,
             through: :comments,
             source: :user

  # Validations

  # Scopes

  def to_s
    title
  end
end
