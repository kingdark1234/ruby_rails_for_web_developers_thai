require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Comment.blueprint do 
  body { "Test Body Test_Comment" }
  user { object.user || User.make! }
end

Photo.blueprint do 
  caption { "Test Caption #{sn} "}
  processing { false }
  user { object.user || User.make! }
end

Blog.blueprint do 
  group_id { 1 }
  title { "Test Blog #{sn}" }
  body  { "Test body Testing...Blog" }
end

User.blueprint do 
  name { "Test User #{sn}" }
  email { "email#{sn}@testemail.com" }
  password { "secretsss" }
end
