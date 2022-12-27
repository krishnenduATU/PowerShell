# PowerShell

### Table of Contents
**[Description](#description)**<br>
**[Requirements](#requirements)**<br>
**[Tested On](#tested-on)**<br>
**[Overview](#overview)**<br>
**[Git Branching Strategy](#git-branching-strategy)**<br>
**[Bug Fix Request](#bug-fix-request)**<br>
**[Feature Request](#feature-request)**<br>
**[Authors](#authors)**<br>
**[Conclusion](#conclusion)**<br>

# Description

This PowerShell repository covers the fundamental concepts of PowerShell and provides a practical method for honing scripting skills. In accordance with the exercises provided and research on the same, learners should be able to use PowerShell to automate a wide range of tasks, manage enterprise infrastructure using PowerShell's Desired State Configuration (DSC) framework, and control nearly every aspect of the Windows operating system.

## Requirements
- Operating System : > Windows-10
- PowerShell :  > PowerShell 5.1.22621.963

## Tested On

Windows-10-10.0.22621-SP0 with PowerShell version 7.3.0

## Overview

#### Variables and Loops

Variables are an essential part of any programming language, and PowerShell is no exception. In Windows PowerShell, a variable is a named storage location to store, retrieve, and manipulate data within scripts and modules. To create a variable in PowerShell, use the $ character followed by the variable name. To retrieve the value of a variable, type the variable name, preceded by a dollar sign ($), or use Write-Output. PowerShell also provides some additional features for variables, such as Clear-Variable to delete the value of a variable, Remove-Variable to delete the variable, etc. Variables can store any type of object, including integers, strings, and arrays. To view a variable's object type, use GetType(). As variables play a vital role in the script, it is important to follow a standard naming convention for variables that, for instance, includes only alphanumeric characters and the underscore (_) character. 

In PowerShell, tests are used to evaluate the value of an expression and determine if it meets certain criteria. Tests can be used in a variety of situations, such as in if statements to control the flow of a script, in while loops to determine when to stop looping, and in switch statements to match a value against multiple possible options. PowerShell provides a number of built-in control flow constructs such as for, foreach, do, while, and so on, which are typically used to make decisions, repeat blocks of code, and perform other tasks that require more complex control flow than a simple sequential execution of statements

| Script   |      Usage     | 
|----------| :---------------|
| variables_and_types.ps1 | To comprehend assignment, operators, and variables' interactions   | 
| string_types.ps1 | To understand the string manipulations   | 
| ifconditions.ps1 | To begin writing PowerShell code that uses control flows and statements  |
| switch.ps1 | To allow a variable to be tested for equality against a list of values | 
| while.ps1 | To run a command till the condition evaluates to true | 
| while_switch.ps1 | To implement while with switch | 
| forloop.ps1 | To iterate through an array of values |
| do_until.ps1  | To repeatedly execute statements as long as the condition is false | 
| TaxCalculation.ps1 | To develop PowerShell script to calculate VAT | 

#### Remote Control

A collection of exercises for administering Windows servers remotely with PowerShell.

| Script   |      Usage     | 
|----------| :---------------|
| DHCP.ps1 | To install DHCP feature and create scope on a Remote server  | 
| DemoteDC.ps1 | To uninstall a domain controller in Active Directory   | 
| DiskRecce.ps1 | To recce on a remote servers disks  |
| DiskOperations.ps1 | To prepare, partition and format disks | 
| PGDipCLOD2022.ps1 | To create AD users from a csv file | 
| ExportVMs.ps1 | To Backsup VMs | 
| Setup DC1.ps1 | To setup Active Directory Forest/domain  |
| Setup DC2.ps1  | To add doamin controller and DHCP | 
| Setup Server-1.ps1  | To setup DNS | 

#### Desired State Configuration

In order to manage and configure the desired state of a system, PowerShell introduced a feature known as Desired State Configuration (DSC), which helps administrators to declaratively specify the configuration of the system, including the software and services that should be installed and running, the security settings that should be applied, and the configuration settings that should be used. In environments with many systems or where systems need to be quickly and consistently configured, administrators can make use of DSC along with automation to ensure that all systems are always in the desired state, which reduces the need for manual intervention.

To use DSC, a DSC configuration file is created in PowerShell and uses the Configuration keyword to define the configuration, followed by a block of code that specifies the desired state by using various built-in DSC resources. When the file is executed, a Managed Object Format (MOF) file is created, which Windows Management Instrumentation (WMI) uses to configure the target machine. The cmdlet "Start-DscConfiguration" is used to apply the configuration to the systems. This cmdlet takes the configuration file as an input and applies the desired state to target systems. If any differences are found between the current state of the systems and the desired state, DSC will automatically make the necessary changes to bring the systems into compliance.

| Script   |      Usage     | 
|----------| :---------------|
| dsc1.ps1 | To ensure that RSAT,DNS feature is present  | 
| ApplyDSC.ps1 | To apply configuration to nodes   | 

## Git Branching Strategy

An efficient branching strategy is useful in separating code that is currently in development from stable code for production environments. Below are the branches created for this project:

- Main: Current State of the production environment, contains only stable codes.
- Dev: Code development starts at this branch, features are added first to this branch.
- Test:  For extensive testing and bug fixes.
- Feature: Created from the development branch to add new code features.
- Bug Fix: Created from the test branch to fix code bugs.

The "main" branch stores only stable code and needs to be protected from accidental commits. This is done by setting branch protection rules for this branch. Here, before pulling/merging requests to the "main" branch, it requires at least one approver with write permissions in the repository or from a designated code owner to review and approve the changes.

![image](https://user-images.githubusercontent.com/119352610/209624457-3922fbfe-1f97-4843-94b8-20d72dbe86e6.png)

## Bug Fix Request

Reported bugs can be found at [Bug Fix](https://github.com/krishnenduATU/PowerShell/issues?q=is%3Aissue+is%3Aclosed+label%3Abug)  

If developers encounter a bug with one of the PowerShell scripts, the steps below should be followed:

- A "Bug" issue is created for the identified bug as shown below.

![image](https://user-images.githubusercontent.com/119352610/209618576-2e6813f6-3ba6-462f-a658-828333d81e97.png)

- Clone the PowerShell repo to local machine.
```
git clone https://github.com/krishnenduATU/PowerShell.git
``` 
- A new branch is created from the "test" branch, named "BugFix#<bug_fix_number>"
  
![image](https://user-images.githubusercontent.com/119352610/209617745-41afe240-d0be-4581-a435-3cdf18b7f082.png)

- A developer will work on the bug and fix the issue, then commit the changes. Make sure to add the bug fix number to the commit message, for example, " BugFix #1 : Updated VAT variable value"
- Now merge the newly created bug fix branch into the "test" branch. Delete the bugfix branch once it has been merged.
- Checkout to "dev" branch and merge the changes made in the "test" branch so that all the branch are in same state.
- Push the changes on local "dev" and "test" branches to remote repo. 
- In the end, the changes from "dev" branch is pulled to "main" branch and issue is closed in GitHub.
 
## Feature Request

Feature requests can be found at [Features](https://github.com/krishnenduATU/PowerShell/issues?q=is%3Aissue+is%3Aclosed+label%3Aenhancement)

To create a new feature in the PowerShell scripts, developer should follow below steps :

- A "Enhancement" issue is created as shown below.

![image](https://user-images.githubusercontent.com/119352610/209618347-f6bb1740-0818-4151-9490-34ba1f31881d.png)

- Clone the PowerShell repository to the local machine.
```
git clone https://github.com/krishnenduATU/PowerShell.git
``` 

- A new branch is created from "dev" branch, named "Feature_#<issue number>" as shown below.
  
  ![image](https://user-images.githubusercontent.com/119352610/209641449-c5a0ee6d-5888-4de5-9920-58fa1629062b.png)

- Developer will work on the new feature. Then commits the changes. Make sure to add issue number to the commit message, for example " Feature #4 : Created Disk Recce script " to track the changes.
- Now, checkout to "dev" branch and merge the newly created feature branch. Delete the feature branch.
- Checkout to "test" branch and merge the changes made in "dev" branch so that all the branch are in same state.
- Push the changes on local "dev" and "test" branches to remote repo.
- In the end, the changes from "dev" branch is pulled to "main" branch and the feature request is closed in GitHub.

## Authors

This PowerShell repository was developed as a part of Infrastructure as Code module's assignment by Krishnendu VP.  

## Conclusion

This PowerShell repository briefly introduced PowerShell as a viable scripting language for automating, managing administrative tasks, and configuring Windows systems. Its rich and extensible architecture, powerful features, and wide range of built-in cmdlets make it a valuable tool for IT professionals, providing a powerful and versatile way to automate and manage many different tasks in the Windows operating system.


