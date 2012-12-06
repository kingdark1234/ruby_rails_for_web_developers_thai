require "spec_helper" 

describe User do
  context "User#to_s" do
    describe "when name is present" do
      let(:user) { User.make! }
      subject { user }

      its(:to_s) { should eq user.name }
    end

    describe "when name is not present" do 
      let(:user) { User.make!(name: '')}
      subject { user } 

      its(:to_s) { should eq user.email }
    end
  end
end 