ENV['RACK_ENV'] = 'test'

require("rspec")
require("pg")
require("capybara")
require("sinatra/activerecord")
require("task")
require("list")

RSpec.configure do |config|
  config.after(:each) do
    Task.all().each() do |task|
      task.destroy()
    end
    List.all().each() do |list|
      task.destroy()
    end
  end
end
