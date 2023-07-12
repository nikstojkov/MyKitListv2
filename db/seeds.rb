require 'faker'

count = 1
status = ["pending", "shipped", "delivered"]
200.times do
  TestOrder.create(
    platform_ref: Faker::Commerce.vendor,
    product_ref: Faker::Alphanumeric.alphanumeric(number: 10),
    purchased: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    estimated_delivery_date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    total_cost: Faker::Number.decimal(l_digits: 2),
    status: status.sample,
    sales_channel: Faker::Business.credit_card_type,
    shipped_at: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    customer_name: Faker::Name.name,
    customer_address: Faker::Address.full_address)
  count += 1
end
