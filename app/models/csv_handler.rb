require 'csv'

class CsvHandler
  include Mongoid::Document
  include Mongoid::Timestamps

  # callback function to check if all fields are null

  def self.import(file)
    CSV.foreach(file, headers: true) do |row|
      # p row.fields
      row.fields.all?(&:blank?) ? next : Item.create!(row.to_hash)
    end
  end

  # def null?
  #   attributes.values.all?(&:blank?)
  # end

end

# row.null? ? next : Item.create!(row.to_hash)
# next if row.null?
# Item.create! row.to_hash
