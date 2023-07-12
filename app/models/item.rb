class Item
  include Mongoid::Document
  include Mongoid::Timestamps

  field :model, type: String

  belongs_to :user, optional: true
end
