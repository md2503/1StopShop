class User < ActiveRecord::Base
    has_many :checklists
    has_many :lists, :through => :checklists
end
