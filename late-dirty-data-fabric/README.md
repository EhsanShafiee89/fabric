
# Late & Dirty Data Handling in Microsoft Fabric with MERGE

## Business Problem
Sales data arrives late and sometimes corrected. Reports must stay accurate without full reloads.

## Architecture
CSV → Bronze → Silver → Gold (MERGE)

## Key Challenges
- Late-arriving records
- Duplicate orders
- Invalid values

## Solution
- Incremental processing
- SQL MERGE logic
- Data quality checks

## What makes this project realistic
- Production-like data issues
- Documented trade-offs
- Focus on reliability, not just tools
