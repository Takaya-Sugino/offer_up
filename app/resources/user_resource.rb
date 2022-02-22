class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string

  # Direct associations

  has_many   :transactions,
             foreign_key: :seller_id

  has_many   :comments

  # Indirect associations

  many_to_many :buyers,
               resource: User2Resource

  many_to_many :items
end
