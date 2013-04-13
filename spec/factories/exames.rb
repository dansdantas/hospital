# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exame do
    data "MyString"
    entrega "MyString"
    consul nil
  end
end
