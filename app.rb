#! /usr/bin/env ruby

require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])

driver = Selenium::WebDriver.for(:chrome, options: options)

driver.get('localhost/phpmyadmin')

username = browser.find_element_by_id("username")
password = browser.find_element_by_id("password")

username.send_keys("name")
password.send_keys("pass")

button = browser.find_element_by_id("submit")
button.click()

browser.get("localhost/phpmyadmin")

file = File.new(index.html, "w")

file.puts(driver.page_source)

file.close

driver.quit
