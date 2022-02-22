class User < ApplicationRecord
  # Direct associations

  has_many   :transactions,
             :foreign_key => "seller_id",
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  has_many   :items,
             :through => :comments,
             :source => :item

  # Validations

  # Scopes

  def to_s
    name
  end

end
