require 'csv'
require_relative '../services/csv_check.rb'

class CsvHandler
  include Mongoid::Document
  include Mongoid::Timestamps

  # callback function to check if all fields are null

  def self.import(file)
    CSV.foreach(file, headers: true) do |row|
      # p row.fields
      # null?(row) ? next : Item.create!(row.to_hash)
      check_fields(row)
    end
  end

  # def null?(row)
  #   row.fields.all?(&:blank?)
  # end

end

# row.null? ? next : Item.create!(row.to_hash)
# next if row.null?
# Item.create! row.to_hash
