require "csv"

CSV.foreach("app/services/csv_handler/TEST_DATA/Kit List 08_18 - Sheet1.csv") do |row|
  # puts row.parse(string)
end

the_csv = CSV.read("app/services/csv_handler/TEST_DATA/Kit List 08_18 - Sheet1.csv")

the_csv.each do |row|
  # p row[0]
end

p the_csv[0].length
