# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :medico do
    nome "MyString"
    crm "MyString"
    telefone "MyString"
    logradouro "MyString"
    especialidade nil
  end
end
