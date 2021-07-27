/*
For use with SSDT database projects.
Add this project to the solution alongside your project.
Rename this project and rename the database in the PreDeployment script's commented out ALTER statement.
	If deployment fails because the database is not marked TRUSTWORTHY, enable that comment. For more information, see the tSQLt.org website.
Add a "Same Database" database reference from this project to your project.
Add a publish profile deploying this solution to your local ProjectsV13 server.
	Make sure to add the profile to git.
Use https://github.com/sdoubleday/cookiecutter-tsqlt-class-vs to add test classes. Move the schema it creates to the Security folder and add a Stored Procedures folder to the schema-class folder the template creates.
Use https://github.com/sdoubleday/cookiecutter-tsqlt-test-assertequalstable-vs to add tests to the Stored Procedures folder.
Use https://github.com/sdoubleday/tSQLt_TestHelperScripter to generate databuilder stored procedures to the TestHelpers/Stored Procedures folder.
	These are used in combination with tSQLt.FakeTable to put fake data in place for unit tests.
*/
