require 'csv'

class CsvHandler
  include Mongoid::Document
  include Mongoid::Timestamps

  def connection
    p "I am connected"
  end
end
