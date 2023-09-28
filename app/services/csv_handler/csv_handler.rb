require "csv"

csv_one = "app/services/csv_handler/TEST_DATA/Kit List 08_18 - Sheet1.csv"
csv_two = "app/services/csv_handler/TEST_DATA/Kit List 08_18 - Sheet2.csv"

CSV.foreach("app/services/csv_handler/TEST_DATA/Kit List 08_18 - Sheet1.csv") do |row|
  # puts row.parse(string)
end

p CSV.read(csv_one)[0]
p CSV.read(csv_two)[0]
