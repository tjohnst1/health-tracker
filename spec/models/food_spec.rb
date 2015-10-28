require 'rails_helper'

describe Food do
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories_per_serving }
  it { should validate_presence_of :servings }
end
