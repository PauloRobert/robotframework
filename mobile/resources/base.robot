***Settings***
Documentation   Código base mobile

Library         AppiumLibrary
Resource        keywords.robot

***Keywords***
# Hooks
Open Session
#Abrindo uma sessão com o Robot
    Open Application        http://localhost:4723/wd/hub
...		                    automationName=UiAutomator2
...		                    platformName=Android
...		                    app=${EXECDIR}/app/ninjachef.apk
...		                    deviceName=ASUS
...		                    udid=JCAXB60011288TN
...		                    adbExecTimeout=50000

Close Session
    Close Application