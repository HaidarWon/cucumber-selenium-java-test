Feature: Login test to saucedemo
  Scenario: Login success on saucedemo
    Given Open web url "https://www.saucedemo.com/"
    And Input username "standard_user" and password "secret_sauce"
    When Click button login
    Then Should success login and redirect to homepage
  Scenario Outline: Login success on saucedemo using scenario outline
    Given Open web url "https://www.saucedemo.com/"
    And Input username "<username>" and password "<password>"
    When Click button login
    Then Should success login and redirect to homepage
    Examples:
      |username|password|
      |standard_user|secret_sauce|
  Scenario Outline: Login failed on saucedemo using scenario outline
    Given Open web url "https://www.saucedemo.com/"
    And Input username "<username>" and password "<password>"
    When Click button login
    Then Failed login and showing message
    Examples:
      |username|password|
      |standard_user|xxxyyyzzzzzz|