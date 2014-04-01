require 'spec_helper'

describe Region do
  it { should validate_presence_of :name }
end
