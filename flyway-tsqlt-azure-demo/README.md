# flyway-tsqlt-azure-demo
How to use Azure DevOps, Flyway &amp; tSQLt to apply CI/CD to a SQL Server database.


This demo uses a very simple pipeline scenario of a small company that uses 3 environments:
"Dev" -> "UAT" -> "Prod".

At the time of writing, this demo does not make use of containers (working on it). There will be one database per environment, and they all exist in the same SQL Server instance. Here's what you need to setup beforehand:

1. Create an Azure DevOps [Organization](https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/create-organization?view=azure-devops) and [Project](https://docs.microsoft.com/en-us/azure/devops/organizations/projects/create-project?view=azure-devops);
2. Create 3 [Agent Pools](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/pools-queues?view=azure-devops) for your Organization - "Dev", "UAT" and "Prod";
3. Install a self-hosted [Agent](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops#install) from each of these Pools on your machine. These Agents will run the Build/Deploy jobs on your machine, tageting your local environment DBs;
4. Either use an Azure [Git repo](https://docs.microsoft.com/en-us/azure/devops/repos/git/create-new-repo?view=azure-devops), or [link](https://docs.microsoft.com/en-us/azure/devops/repos/git/import-git-repository?view=azure-devops) the Project you just created to a GitHub repo of your choosing;
3. Install SQL Server on your machine. Originally tested on the SQL Server Developer edition, but should work on other editions, like SQL Server Express;
4. Install [Flyway](https://flywaydb.org/download/) on your machine. Just download and extract the ZIP, and add that folder to your PATH;
5. Run "demo/setup.ps1". This creates the "Dev", "UAT" and "Prod" databases on your SQL Server instance, and baselines them;
	
After that, you're up and running. SQL migrations have been split up into 2 sprints, so you can play around with commiting them at different times and simulate working with the Agile methodology. Check this repo's Issues and Milestones for an example.