class User2 < ApplicationRecord
  # Direct associations

  has_many   :transactions,
             :foreign_key => "buyer_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :sellers,
             :through => :transactions,
             :source => :seller

  # Validations

  # Scopes

  def to_s
    name
  end

end
