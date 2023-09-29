require "csv"

class CSVHandler
  csv_one = "app/services/csv_handler/TEST_DATA/Kit List 08_18 - Sheet1.csv"
  csv_two = "app/services/csv_handler/TEST_DATA/Kit List 08_18 - Sheet2.csv"

  def initialize(csv_one, csv_two)
    @csv_one = csv_one
    @csv_two = csv_two
  end

  def parse
    CSV.foreach(@csv_one) do |row|
      puts row
    end
  end
end
