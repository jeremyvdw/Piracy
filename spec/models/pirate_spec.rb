require 'spec_helper'

describe Pirate do
  it "creates his parrots" do
    p = Pirate.create(:catchphrase => "Yar.", :parrots_attributes => [{ :name => "george" }])
    p.parrots.first.name.should eq "george"
  end
end
