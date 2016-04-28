# Testcase

To use current app we need to:
1. Create on our MySQL server "testcase" database, or change jdbc.mysql.url property in the src/main/resources/properties/datasource.prperties;
2. Import TestcaseDump.sql from the root folder;
3. Change MySQL server username and password in the src/main/resources/properties/datasource.prperties;

Front-end consists of two pages:
1. table: shows database content and provides CRUD capability. We can create new record using form which is in "Create" mode by default. To set the form to the "Edit" mode we need to push "edit" button which becomes visible when we hover the cursor on the specified row. Same way we can find "delete" button;
2. diagram: shows donut chart. It uses data in JSON format. It uses JQuery ALAX to get data (/api/engines.json);

