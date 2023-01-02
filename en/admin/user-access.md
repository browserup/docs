---
title: User Access
key: user-access
---

BrowserUp ships with integrated user access control.

## Roles

There are several standard roles in the system

Each role provides a pre-baked access level.

superadmin
: A superadmin can access everything, including administrating admins.

admin
: An admin can administer everything within their workspace. This includes creating
: other users, granting roles, etc.

user
: A user is able to run tests, but not administer other users, or see other workspaces.

runner
: A runner is able to run tests, but not to define them, change them, or access them in any other manner.
: This user type is ideal for CI/CD.

viewer
: A viewer can view test results and reports, but not make changes.

reporter
: A reporter is only able to view reports.

none
: A user with none access cannot use the system.


## Setting a User's role

In order to set a user's role, you must be a superadmin, or admin. Admin's are only able
to administer users in their own workspace. Click on your username on the top menu bar, then select Users in the
drop-down menu.

[<img src="{{ site.baseurl }}/assets/images/admin/users-menu.png" width="200"/>]({{ site.baseurl }}/assets/images/admin/users-menu.png)
