class User2 < ApplicationRecord
  # Direct associations

  has_many   :transactions,
             :foreign_key => "buyer_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
