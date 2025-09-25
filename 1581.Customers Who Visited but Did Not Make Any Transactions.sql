select c.customer_id,count(c.visit_id) as count_no_trans from Visits c  left join Transactions t on c.visit_id=t.visit_id
where t.transaction_id IS NULL
group by c.customer_id
