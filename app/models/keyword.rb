class Keyword < ActiveRecord::Base
  belongs_to :catalog
  validates_uniqueness_of :word
  validates_presence_of :word
  cattr_reader :per_page
  @@per_page = 10
end
