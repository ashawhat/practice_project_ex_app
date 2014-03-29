require 'spec_helper'

describe Requesttype do
   it { should have_many :financialrequests }
   it { should have_many :financialrequest_requesttypes}
end
