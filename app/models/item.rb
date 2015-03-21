class Item < ActiveRecord::Base
  belongs_to :user

  VALIDITY_DURATION = 7.days

  # Is the item expired? (ie. no time left).
  def expired?
    (created_at - validity).to_i < 0
  end

  # How long the item is considered valid once created.
  def validity
    self.class::VALIDITY_DURATION
  end
end
