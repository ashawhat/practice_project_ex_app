class Requesttype < ActiveRecord::Base
  has_many :financialrequest_requesttypes
  has_many :financialrequests, through: :financialrequest_requesttypes
end
