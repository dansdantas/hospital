# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :consul do
    data "MyString"
    hora "MyString"
    paciente nil
    medico nil
  end
end
