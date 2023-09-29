class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic



  belongs_to :user, optional: true
end
