# frozen_string_literal: true

# ----------As it stands----------
# USER is optional
# Attrs are dynamic to allow of easy ingest during development
# No data cleaning is implemented yet

# This is the constructor for items uploaded by a user.
class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic



  belongs_to :user, optional: true
end
