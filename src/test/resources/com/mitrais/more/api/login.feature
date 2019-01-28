
Feature: Login system
  I want to login to system

  
  Scenario Outline: Admin try login
    Given username is "<username>" and password is "<password>"
    When I submit to system
    Then I get "<statuscode>"
    
	Examples:
    | username | password | statuscode |
    | admin@site.com | passwords | 401 |
    | admin@site.com | password | 200 |
    | blabla@site.com | password | 401 |
    
