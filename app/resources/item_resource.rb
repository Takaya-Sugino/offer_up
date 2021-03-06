class ItemResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :price, :string
  attribute :category_id, :integer
  attribute :comment, :string
  attribute :location, :string

  # Direct associations

  belongs_to :category

  has_many   :comments

  # Indirect associations

  many_to_many :users
end
