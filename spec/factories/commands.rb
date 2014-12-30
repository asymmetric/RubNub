FactoryGirl.define do
  factory :command do
    name { Faker::Lorem.word }
    url { Faker::Internet.url }
    description { Faker::Lorem.paragraph }

    factory :man_command do
      name "man"
      url "http://localhost:3000/kernel/man?name=%s"
      description "Displays the man page for a given command"
    end
  end
end
