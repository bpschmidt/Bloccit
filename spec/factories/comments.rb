include RandomData

FactoryGirl.define do
  factory :comment do
    body 'Comment body'
    post 
    user
  end
end
