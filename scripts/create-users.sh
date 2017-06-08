################################################################################
# Description:
# Commands to create groups, users and query them
################################################################################

################################################################################
# Add Groups
################################################################################
groupadd applications;
groupadd development;
groupadd quality;

################################################################################
# Add users to groups
################################################################################
useradd -G applications,hdfs admin;
useradd -G development dev1;
useradd -G development dev2;
useradd -G quality qa1;
useradd -G quality qa2;

################################################################################
# Query users
################################################################################
id yarn;
id hdfs;
id admin;
id dev1;
id dev2;
id qa1;
id qa2;

################################################################################
# Output of query
################################################################################
# [root@localhost ~]# id yarn;
#  uid=1005(yarn) gid=1001(hadoop) groups=1001(hadoop)
# [root@localhost ~]# id hdfs;
#  uid=1004(hdfs) gid=1001(hadoop) groups=1001(hadoop),1003(hdfs)
# [root@localhost ~]# id admin;
#  uid=1008(admin) gid=1008(admin) groups=1008(admin),1004(applications)
# [root@localhost ~]# id dev1;
#  uid=1009(dev1) gid=1009(dev1) groups=1009(dev1),1005(development)
# [root@localhost ~]# id dev2;
#  uid=1010(dev2) gid=1010(dev2) groups=1010(dev2),1005(development)
# [root@localhost ~]# id qa1;
#  uid=1011(qa1) gid=1011(qa1) groups=1011(qa1),1006(quality)
# [root@localhost ~]# id qa2;
#  uid=1012(qa2) gid=1012(qa2) groups=1012(qa2),1006(quality)
