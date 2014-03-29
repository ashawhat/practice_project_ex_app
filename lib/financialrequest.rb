class Financialrequest < ActiveRecord::Base
  has_many :financialrequest_requesttypes
  has_many :Financialrequests, through: :financialrequest_requesttypes
end
