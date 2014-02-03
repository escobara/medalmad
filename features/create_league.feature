Feature: Create A League

In order to compete with friends
As a player
I want to create a league

@omniauth_test
Scenario: Public League
Given there are no leagues
And I am registered
And I am signed in
When I create a public league named "Ena's League"
Then I should see "Ena's League" in my dashboard
And I should be the commissioner of "Ena's League"

Scenario: Private League 
Given there are no leagues 
And I am an authenticated user 
When I create a private league named "Rene's League"
Then I should see "Rene's League" in my dashboard 
And I should be the commissioner of "Rene's League"

Scenario: Public League View
Given I am registered 
And I am signed in 
When I view my dashboard 
Then I should not see "Rene's League" in my dashboard
And I should see "Ena's League" in my dashboard