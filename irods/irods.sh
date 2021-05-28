#!/bin/bash
IMAGE_DIRECTORY=/home/username/singularity

for COMMAND in iadmin ibun icd ichksum ichmod icp ienv ierror iexecmd iexit ifsck iget igroupadmin ihelp iinit ils ilsresc imcoll imeta imiscsvrinfo imkdir imv ipasswd iphybun iphymv ips iput ipwd iqdel iqmod iqstat iquest iquota ireg irepl irm irmdir irmtrash irsync irule iscan isysmeta iticket itrim iuserinfo ixmsg izonereport; do
    alias ${COMMAND}="singularity exec $IMAGE_DIRECTORY/irods.sif ${COMMAND}"
done

