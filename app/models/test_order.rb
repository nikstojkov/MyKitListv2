class TestOrder
  include Mongoid::Document
  include Mongoid::Timestamps

  field :platform_ref, type: String
  field :product_ref, type: String
  field :purchased, type: Date
  field :estimated_delivery_date, type: Date
  field :total_cost, type: Float
  field :status, type: String
  field :sales_channel, type: String
  field :shipped_at, type: Date
  field :customer_name, type: String
  field :customer_address, type: String

end
