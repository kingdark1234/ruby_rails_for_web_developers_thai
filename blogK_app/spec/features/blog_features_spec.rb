require "spec_helper"

describe "BlogFeatures" do 
  let(:blog) { Blog.make! }
  let(:user)  { User.make! }

  before { blog; user; login(user) }

  it "should render blogs" do 
    visit blogs_path
    page.should have_content blog.title
  end

  context "anyone should be able to create blog" do 
    it "should allow user to create new blog" do 
      visit new_blog_path
      within "#new_blog" do 
        select "Talk Anything", from: "blog_group"
        fill_in "blog_title", with: "Title of a new blog"
        fill_in "blog_body", with: "Body of new blog"
        click_button "Create Blog"
      end
      page.should have_content "Title of a new blog"
    end
  end
end