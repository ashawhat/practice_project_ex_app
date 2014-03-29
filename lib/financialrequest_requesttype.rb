class FinancialrequestRequesttype < ActiveRecord::Base
  belongs_to :financialrequest
  belongs_to :requesttype
end

