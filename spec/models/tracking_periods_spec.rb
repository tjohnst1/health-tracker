require 'rails_helper'

describe TrackingPeriod do
  it { should validate_presence_of :calorie_count }
  it { should have_many :foods }
  it { should have_many :exercises }
end
