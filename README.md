# aws-terraform-systems-manager Update Management.

In this module  
1) We will create Patch Baseline for Windows Server 2016 & Amazon Linux 2. ( patch_baseline.tf)
2) 2 Maintainance Window for Updates to be dployed on instances for Test and Prod 
   --For Test systems, maintainance windows is 3rd Sunday of each month
   --For Prod Systems, Maintance windows is 4th Sunday of each month. ---( mw.tf)
3) Register Target for patchig 
   --( Targets are registered via Tag and Value) -- (registered_targets.tf )
4) Register Tasks for to be performed. (tasks.tf)
5) TFVARS regquired for Deployment.
   --This article assumes that you have configured aws cli and your user can perform administrative tasks. -- (vars.tf)
   -- Keeping backend on S3 Bucket.
6) Create an role for AWS Systems Manager to be assumed. -- (automation_role.tf)
7) SNS Topic to update. You need to manually register EMAILD as terraform doesnt support email id subscribe.
