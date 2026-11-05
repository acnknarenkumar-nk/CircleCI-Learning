@isTest
private class AccountServiceTest {

    @isTest
    static void searchAccountsReturnsMatchingAccounts() {

        // Create test Account
        Account acc = new Account(
            Name = 'Infosys Learning'
        );

        insert acc;

        // Execute the method
        Test.startTest();

        List<Account> results =
            AccountService.searchAccounts('Infosys');

        Test.stopTest();

        // Verify the result
        System.assertEquals(1, results.size());
        System.assertEquals(acc.Id, results[0].Id);
    }

    @isTest
    static void searchAccountsReturnsEmptyListForBlankInput() {

        Test.startTest();

        List<Account> results =
            AccountService.searchAccounts('');

        Test.stopTest();

        System.assertEquals(0, results.size());
    }
}