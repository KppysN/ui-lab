## Test Execution Results

| Step | Expected Result | Actual Result | Status |
|---|---|---|---|
| 1. Open QuickPizza | Homepage is displayed | Homepage displayed successfully | PASS |
| 2. Enable Advanced Mode | Advanced fields are displayed | Advanced fields displayed successfully | PASS |
| 3. Configure Pizza | Input constraints are set correctly | Max Calories = 600, Excluded Tool = Knife, Vegetarian = Yes, Name = QA-Test-01 | PASS |
| 4. Generate Pizza | Pizza matches the specified constraints | QA-Test-01 was generated with Pizza cutter and 450 calories per slice | PASS |
| 5. Click Love it! without login | Display "Please log in first." | The message "Please log in first." was displayed | PASS |
| 6. Admin Login | Admin login succeeds | Successfully logged in using admin/admin | PASS |
| 7. Verify Admin Listing | QA-Test-01 appears in the admin list with the correct tool | QA-Test-01 was not found in the admin list, even after refreshing the page | FAIL |

## Generated Pizza Details

- Pizza Name: QA-Test-01
- Dough: Thin
- Tool: Pizza cutter
- Calories per slice: 450
- Ingredients: Mozzarella di bufala, Spinach, Zucchini, Extra cheese, Fresh basil, Extra virgin olive oil, San Marzano tomatoes

## Summary

- Total Test Steps: 7
- Passed: 6
- Failed: 1
- Pass Rate: 85.71%


### Part 3: Robot Framework

- Robot Framework: 7.5.1
- Python: 3.12.4
- ChromeDriver: 157.0.8103.50
- Browser: Chrome Headless

#### Step 3.2: Wrong-title test
Expected failure message:
`Title should have been 'Web Form' but was 'Web form'.`

#### Step 3.8: Headless Test Runs

Run 1:
- Result: PASS
- Passed: 1, Failed: 0
- Elapsed time: 14.786746 seconds
- Pizza name: Lab Pizza 20261110-121412
- Recommended tool: Pizza cutter

Run 2:
- Result: PASS
- Passed: 1, Failed: 0
- Elapsed time: 11.035938 seconds
- Pizza name: Lab Pizza 20261110-121453
- Recommended tool: Pizza cutter