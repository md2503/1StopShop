class List < ActiveRecord::Base
    has_many :checklists
    has_many :users, :through => :checklists
end
