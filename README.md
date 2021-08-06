
This project is to create and save some docker files which can use in different testing 

## webTestBase.Dockerfile
This docker file is a fedora image which contains chrome and firefox browser
It can be used to run front-end test by using webdriver.io or nighwatch.js

## javaApiTestBase.Dockerfile
This docker file install Java and configure JAVA_HOME correctly
Maven is also installed
It can used to run test in maven project 

## seleniumTestBase.Dockerfile
This docker file installs nodejs, mocha, chrome, selenium-standalone
It can used to run selenium test or other test which will use selenium-standalone
