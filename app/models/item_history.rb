class ItemHistory < ActiveRecord::Base
  belongs_to :items

  module Status
    AVAILABLE   = 'available'
    USING       = 'using'
    EXPIRED     = 'expired'
    INITIALIZED = 'initialized'
  end

  STATUSES = [
    Status::AVAILABLE,
    Status::USING,
    Status::EXPIRED,
    Status::INITIALIZED
  ].freeze

end
