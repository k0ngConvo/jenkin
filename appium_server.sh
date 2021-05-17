appiumPort=$1
appium -p $appiumPort --session-over --allow-insecure chromedriver_autodownload > /dev/null 2>&1