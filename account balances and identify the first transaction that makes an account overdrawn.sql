WITH RunningBalances AS (
    SELECT
        txn_id,
        account_id,
        txn_date,
        amount,
        SUM(amount) OVER (
            PARTITION BY account_id
            ORDER BY txn_date, txn_id
            ROWS BETWEEN UNBOUNDED PRECEDING
                     AND CURRENT ROW
        ) AS balance
    FROM Transactions
),
Overdrafts AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY account_id
            ORDER BY txn_date, txn_id
        ) AS rn
    FROM RunningBalances
    WHERE balance < 0
)
SELECT
    account_id,
    txn_id,
    txn_date,
    amount,
    balance
FROM Overdrafts
WHERE rn = 1;