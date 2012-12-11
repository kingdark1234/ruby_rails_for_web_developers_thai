module BlogsHelper
  def action_blog_for blog
    link_to blog.title, blog ,class: 'label'
  end
end
