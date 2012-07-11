Feature: Kendaraan Management
  As a User
  I want a Manage Kendaraan
  So I can see the introduction and information of this website

  Scenario: Navigate to Manage Kendaraan
  Given I am on home page
  When I click New Kendaraan
  Then I should see Kendaraan page
  And I fill Kode with 01
  And I fill Keterangan with motor
  When I press Submit button
  Then I should see notification Your Kendaraan Has Been Save On Database