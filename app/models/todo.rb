class Todo < ActiveRecord::Base
  attr_accessible :completed, :name
end
