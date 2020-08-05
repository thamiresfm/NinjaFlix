require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "os"

require_relative "helpers"

World(Helpers)

Capybara.configure do |config|
   # config.default_driver = :selenium
   config.default_driver = :selenium_chrome
    Capybara.page.driver.browser.manage.window.maximize
  
   config.app_host = "http://192.168.99.100:8080"

   config.default_max_wait_time = 50
end