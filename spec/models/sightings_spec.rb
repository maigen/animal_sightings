require 'spec_helper'

describe Sighting do
  it { should validate_presence_of :region_id }
  it { should validate_presence_of :species_id }
end
