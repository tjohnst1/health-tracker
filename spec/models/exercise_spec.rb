require 'rails_helper'

describe Exercise do
  it { should validate_presence_of :type }
  it { should belong_to :tracking_period }
end
