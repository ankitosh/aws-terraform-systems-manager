
<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="logo.png" alt="Project logo"></a>
</p>

<h3 align="center">Update Management</h3>

In this module  
1) We will create Patch Baseline for Windows Server 2016 & Amazon Linux 2. ( patch_baseline.tf)
2) 2 Maintainance Window for Updates to be dployed on instances for TEST and PROD 
   --   For Test systems, maintainance windows is 3rd Sunday of each month
   --   For Prod Systems, Maintance windows is 4th Sunday of each month. ---( mw.tf)
   --   Maintainance window is 4 hours and cutoff point 1 hour before.
3) Register Target for patchig 
   --   ( Targets are registered via Tag and Value) -- (registered_targets.tf )
4) Register Tasks for to be performed. (tasks.tf)
5) TFVARS required for Deployment.
   --   This article assumes that you have configured aws cli and your user can perform administrative tasks. -- (vars.tf)
   --   Keeping backend on S3 Bucket.
6) Create an role for AWS Systems Manager to be assumed. -- (automation_role.tf)
7) SNS Topic to update. You need to manually register EMAILD as terraform doesnt support email id subscribe.
