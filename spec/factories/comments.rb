FactoryGirl.define do
  factory :comment do
    text  { FFaker::Lorem.sentence(5) }
    association :user
  end
end
