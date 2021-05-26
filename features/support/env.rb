require 'capybara'
require 'capybara/cucumber'
require "allure-cucumber"
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'


CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))

    case ENV["BROWSER"]
        when "firefox"
            @driver = :selenium
        when "chrome"
            @driver = :selenium_chrome
        else
            puts "Browser Inválido!!!"
    end
    
        Capybara.configure do |config|
            config.default_driver = @driver
            config.app_host = CONFIG['url']
            
        Capybara.page.driver.browser.manage.window.maximize
        Capybara.default_max_wait_time = 15          

        end

        AllureCucumber.configure do |config|
            config.results_directory = "/logs"
            config.clean_results_directory = true
        end