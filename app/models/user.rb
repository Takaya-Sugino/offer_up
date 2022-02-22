class User < ApplicationRecord
  # Direct associations

  has_many   :transactions,
             :foreign_key => "seller_id",
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
