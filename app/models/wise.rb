class Wise < ActiveRecord::Base
  belongs_to :user, :class_name => 'User'
  attr_accessible :apellation, :banck_account, :bank, :summary, :website, :user,:user_id
end
