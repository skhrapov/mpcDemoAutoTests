Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
require 'rspec/expectations'

require 'cucumber/formatter/unicode'
require 'capybara'
require 'capybara/dsl'
require 'capybara/session'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'capybara/rspec'

Capybara.ignore_hidden_elements = true
Capybara.default_wait_time = 15
Capybara.app_host = 'http://mcpdemo.herokuapp.com/'
Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
    profile = Selenium::WebDriver::Firefox::Profile.new
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile)
end

#Before do |scenario|
#    if scenario.source_tag_names.include?('@no_browser') and Capybara.default_driver != :rspec
#        Capybara.default_driver = :rspec
#        elsif !scenario.source_tag_names.include?('@no_browser') and Capybara.default_driver != :selenium
#        Capybara.default_driver = :selenium
#    end
#end

After do |scenario|
    if scenario.failed?
        puts scenario.name
        puts scenario.exception.message
    end
end