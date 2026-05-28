## Governance context

This data product implements governance policies to ensure sensitive information is masked for non-privileged users. Columns containing personal identifiable information (PII) will be transformed using dimension masking, while row-level security will be enforced through segment definitions that filter data access based on user roles. This approach ensures compliance with data privacy standards while enabling effective data utilization for customer insights.

## Sample user groups & YAML

```yaml
segments:
  - name: retail_customers
    sql: "{TABLE}.customer_type = 'B2C'"
    meta:
      secure:
        user_groups:
          includes:
            - retail_customer_data_access

user_groups:
  retail_customer_data_access:
    api_scopes:
      - read
    includes:
      - users:id:retail_user_1
      - users:id:retail_user_2
```

## Suggested mode

`mixed`

## Role names (reuse in user_groups + segments)

`retail_customer_data_access`, `enterprise_customer_data_access`
