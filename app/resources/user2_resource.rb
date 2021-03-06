class User2Resource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string

  # Direct associations

  has_many   :transactions,
             foreign_key: :buyer_id

  # Indirect associations

  many_to_many :sellers,
               resource: UserResource
end
