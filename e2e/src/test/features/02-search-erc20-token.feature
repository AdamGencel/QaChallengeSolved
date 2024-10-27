Feature: Search ERC20 tokens

    Scenario: The user can search for an existing ERC20 token and see his balance and deposit history for the selected token.
        Given A randomly generated user with installed Metamask accesses the app page
        When the user accepts connection notifications
        And the user enters the address "0x9982f9A3bA28c34aD03737745d956EC0668ea440" in the input address field
        And the user clicks the Submit button
        Then the page shows the address balance for the selected token
        And the page shows the table of the deposit history for the selected token

    Scenario: The user enter an invalid ERC20 token address
        Given A randomly generated user with installed Metamask accesses the app page
        When the user accepts connection notifications
        And the user enters the address "0x9982f9A3bA28c" in the input address field
        Then the submit button is disabled

    Scenario: The user enter a non ERC20 token address
        Given A randomly generated user with installed Metamask accesses the app page
        When the user accepts connection notifications
        And the user enters the address "9xeJnVY4uCxsytTPicpqz1GdZjHD8UNHhPdTkfv5kTrf" in the input address field
        Then the submit button is disabled

    Scenario: The user clicks the example token link and he will be able to see his balance and deposit history.
        Given A randomly generated user with installed Metamask accesses the app page
        When the user accepts connection notifications
        And the user clicks the example token link
        Then the page shows the address balance for the selected token
        And the page shows the table of the deposit history for the selected token