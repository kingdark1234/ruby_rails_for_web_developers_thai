require 'spec_helper'

describe Blog do 
  it { should allow_mass_assignment_of(:group_id)}
  it { should allow_mass_assignment_of(:body)}
  it { should allow_mass_assignment_of(:title)}

  it { should have_many(:comments) }
end