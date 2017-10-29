require 'selenium-webdriver'
require 'byebug'
require 'allure-cucumber'

# Here you have to put all setup (gems and files requiring, configuration, etc)

#include AllureCucumber::DSL
#	attach_file(title, file)

AllureCucumber.configure do |c|
	c.clean_dir  = false
	c.tms_prefix      = '@HIPTEST--'
	c.issue_prefix    = '@JIRA++'
	c.severity_prefix = '@URGENCY:'
end

$marca_de_tiempo = Time.now

puts "Ejecutado el #{$marca_de_tiempo}"