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