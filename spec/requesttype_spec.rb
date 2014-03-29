require 'spec_helper'

describe Requesttype do
   it { should have_many :financialrequests } #should have_many_through
   it { should have_many :financialrequest_requesttypes}
end
