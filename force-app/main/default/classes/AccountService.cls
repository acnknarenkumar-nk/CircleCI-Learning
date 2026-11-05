public with sharing class AccountService {

    public static List<Account> searchAccounts(String searchKey) {

        // Validate input
        if (String.isBlank(searchKey)) {
            return new List<Account>();
        }

        // Prepare search pattern
        String searchPattern = '%' + searchKey.trim() + '%';

        // Query matching Accounts
        List<Account> accounts = [
            SELECT Id, Name, Industry
            FROM Account
            WHERE Name LIKE :searchPattern
            LIMIT 50
        ];

        return accounts;
    }
}