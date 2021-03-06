#!/bin/sh
# McDaniel
# April 2018
#
# Usage:     To run database migrations for LMS & CMS
#            Native Open edX Ubuntu 20.04 64 bit Installation
#
# Reference: https://openedx.atlassian.net/wiki/spaces/OpenOPS/pages/60227913/Managing+OpenEdX+Tips+and+Tricks
#---------------------------------------------------------

sudo -H -u edxapp -s bash << EOF
cd ~
source /edx/app/edxapp/edxapp_env

python /edx/app/edxapp/edx-platform/manage.py lms makemigrations --settings=production
python /edx/app/edxapp/edx-platform/manage.py lms migrate --settings=production
python /edx/app/edxapp/edx-platform/manage.py cms makemigrations --settings=production
python /edx/app/edxapp/edx-platform/manage.py cms migrate --settings=production
EOF
