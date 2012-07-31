class Tweet < ActiveRecord::Base
  attr_accessible :status, :zombie

  belongs_to :zombie

  #validates_presence_of :status, :zombie

end
