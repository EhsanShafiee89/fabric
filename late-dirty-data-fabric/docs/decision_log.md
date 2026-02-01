## Design Decisions

- Used MERGE to handle late-arriving data instead of full reload
- Chose SCD Type 1 because historical correction is acceptable
- Nullified negative amounts instead of deleting records
- Incremental logic improves performance and cost
