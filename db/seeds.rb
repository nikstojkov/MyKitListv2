require 'faker'

count = 1
status = ["pending", "shipped", "delivered"]
year = ["2019", "2020", "2021"]
month = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10","11","12"]
day = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10","11","12","13","14","15","16","17","18","19","20",]
200.times do
  TestOrder.create(
    platform_ref: Faker::Commerce.vendor,
    product_ref: Faker::Alphanumeric.alphanumeric(number: 10),
    purchased: "#{year.sample}-#{month.sample}-#{day.sample}",
    estimated_delivery_date: "#{year.sample}-#{month.sample}-#{day.sample}",
    total_cost: Faker::Number.decimal(l_digits: 2),
    status: status.sample,
    sales_channel: Faker::Business.credit_card_type,
    shipped_at: "#{year.sample}-#{month.sample}-#{day.sample}",
    customer_name: Faker::Name.name,
    customer_address: Faker::Address.full_address)
  count += 1
end
