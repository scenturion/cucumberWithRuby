require 'selenium-webdriver'
require 'byebug'



browser = Selenium::WebDriver.for :firefox

byebug

browser.get "http://zonados.testingbairesdemo.com/automation"


puts "A jugar!"
