Sepinoud Fasihimajd

##CMPT 383 Project

1. The goal of the project was to create an AI based automated chatbot system that has been trained to respond questions asked by users. Similar to what most companies have now a days to redirect clients. The aim of the program is automating customer care service 

2. CSS and Javascript were used for the front-end and to display what we see when we connect to the bot. The first part of this system comprises the web based java servlet architecture which acts as an intermediary to send requests to python based server processing JSON as input. It contains code written in Python that has the logic behind the bot itself. The python code is the back-end and communicates the messages and information that a message was sent or received

3. I used REST to connect the python code to the javascript servlet. The javascript files and the CSS files were connected in the .jsp file using script tags in order to create behaviours for the html elements that display on the screen. 

4. Below are the steps that need to be taken to be able to run the code and access the bot:

#Vagrant 

Download Vagrant 
Vagrant up
Vagrant Provision 
Vagrant ssh

Vagrant file needs to be changed to have javascript, python3+ and css installed. 

#Installing

Make sure tomcat and jdk are installed in the vagrant. If not please install them and configure vagrant accordingly.

pip install flask
pip install chatterbot
pip install chatterbot-corpus
(The last three are required for the bot to respond properly.)


#Running

##Python API based chatbot
Copy files server.py and train.py into your terminal/vagrant
Run 'python server.py' to start chatbot server
Will show server started at a certain url which you use on your webapp

#Web app

Deploy the .war file in tomcat webapps directory 'Usually /opt/tomcat/webapps'
Access web app using url may differ based on the computer "http://localhost:8080/Bot"
You may need to modify src/com/GetResponse.java url field with your ip for app to work.





