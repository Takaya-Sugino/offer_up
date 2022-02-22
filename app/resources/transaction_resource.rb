class TransactionResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :seller_id, :integer
  attribute :buyer_id, :integer

  # Direct associations

  belongs_to :buyer,
             resource: User2Resource

  belongs_to :seller,
             resource: UserResource

  # Indirect associations
end
