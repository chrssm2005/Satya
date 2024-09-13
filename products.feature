Feature: Update Product

  Background:
    Given I am on the "Products Page"
    And I have a product with name "Existing Product" and category "Electronics" and availability "In Stock"

  Scenario: Updating a Product
    # Search for the product by name
    When I type "Existing Product" in the search field
    And I press the "Search" button
    Then I should see a message "Success"
    And the field "Category" should have the value "Electronics"

    # Update the product's category
    When I change the "Category" to "Home Appliances"
    And I press the "Update" button
    Then I should see a message "Success"

    # Retrieve the product by ID and check the updated category
    When I copy the product ID
    And I clear the form
    And I paste the product ID in the ID field
    And I press the "Retrieve" button
    Then I should see a message "Success"
    And the field "Category" should have the value "Home Appliances"

    # Search again to verify the updated product is in the results
    When I press the "Clear" button
    And I press the "Search" button
    Then the field "Category" should be updated to "Home Appliances"
