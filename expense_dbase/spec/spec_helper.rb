require 'rspec'
require 'pg'
require 'category'
require 'company'
require 'expense'

DB = PG.connect({ :dbname => 'expense_test' })

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('TRUNCATE TABLE expense RESTART IDENTITY;')
    DB.exec('TRUNCATE TABLE category RESTART IDENTITY;')
    DB.exec('TRUNCATE TABLE company RESTART IDENTITY;')
  end
end
