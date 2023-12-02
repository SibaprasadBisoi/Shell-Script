#!/bin/bash
#Devops script
#Define Varialbles
APP_Name="my-web-app"
Image_Name="my-web-app-image"
Container_Name="my-web-app-container"
App_Path="/path/my-app"
NGINX_CONF="/path/my-app/nginx.conf"
NOTIFICATION_EMAIL="sibaprasadbisoi08@gmail.com"

#function to deploy
app_deploy() {
    echo "Deploying the web application"
    docker build -t $Image_Name $App_Path
    docker run -d --name $Container_Name -p 80:80 -v $App_Path:/usr/share/nginx/html -v $NGINX_CONF:/etc/nginx/nginx.conf $IMAGE_NAME
    echo "Web application deployed successfully"
}
#function to check the application status
check_app_staus() {
    if docker ps | grep -q "$Container_Name"; then
    echo "Web application is running"
    else
    echo "Web application is not running"
    fi
}
#function to send notification
send_notification() {
    local subject="Devops script notification"
    local message="The web application has been deployed successfully"
    echo "$message" | mail -s "$subject" "$NOTIFICATION_EMAIL"
    echo "Notification sent to $NOTIFICATION_EMAIL"
}

# Main Script
echo "Devops script started"
deploy_app
check_app_staus
send_notification
echo "Devops script completed"