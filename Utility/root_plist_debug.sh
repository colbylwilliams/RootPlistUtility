#!/bin/bash

# c0lby:

source root_plist_utility.sh

##########################################################
##############  Create New Root.plist file  ##############
##########################################################

PreparePreferenceFile

	AddNewPreferenceGroup 	-t "About"

		AddNewTitleValuePreference  -k "VersionNumber" 	-d "${versionNumber}" 	-t "Version"

		AddNewTitleValuePreference  -k "BuildNumber" 	-d "${buildNumber}" 	-t "Build"

		AddNewTitleValuePreference  -k "SvnRevision"  	-d "${svnVersion}" 		-t "SVN Revision"


	AddNewPreferenceGroup	-t "Configure"

		AddNewMultiValuePreference  -k "ServerInstance"   -d 1 	-t "Server Instance"
			SetMultiValuePreferenceValues  0 1 3 4
			SetMultiValuePreferenceTitles  "Local" "Dev" "UAT" "Prod"

		AddNewToggleSwitchPreference 	-k "ForceRefreshData" 	-d false 	-t "Force Refresh Data"


	AddNewPreferenceGroup 	-t "Diagnostics Key"
		AddNewStringNode 	-e "FooterText" 	-v "${copyright}"


	AddNewTitleValuePreference  -k "UserReferenceKey" 	-d ""  	-t ""