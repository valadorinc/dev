[http://pool2.valador.net:8080/openfda-dev/](http://pool2.valador.net:8080/openfda-dev/)
###(A) Assign A Leader
Valador follows the Agile Scrum methodology for design and development.  During the kick-off meeting for this Project, Valador assigned Kevin Sadeghian as the Product Owner, then worked to define the scope of the project based on the RFQ content.  Mr. Sadeghian is a Certified Scrum Product Owner and was given the authority and responsibility to complete the Project; and was held accountable for the quality and timeliness of the final prototype and accompanying artifacts.

###(B) Multidisciplinary Team
Valador assembled a team of Valador employees with different skillsets and varying years of experience:

|Labor Category|GSA Labor Category|Name|
|---|---|---|
|Technical Architect|Senior Systems Engineer|Ben Franzini|
|Front End Web Developer|Developer|Philip Stroh, Paulo Ordoveza|
|Back End Web Developer|Developer|David White|
|DevOps Engineer|Software Engineer|David White|

The resource estimates for each were factored into the project budget, documented in the project PMP and approved by Valador’s CEO to ensure availability.

Valador set up workspace for the duration of the project in one of our conference rooms with four workstations, a projector, and a whiteboard.  The team worked in the conference room which allowed problems to be solved quickly through [collaboration](https://github.com/valadorinc/openfda-pool2/tree/master/docs/TeamCollaboration). Mr. Franzini was working remotely so the team utilized Skype, Webex meetings, and teleconferences to include him in the collaborative process. 

###(C) Technologies
Valador used open-source technologies in the development of the prototype including:
* Bootstrap
* PHP
* Google Charts
* Ajax
* jQuery
* MySQL
* Java
* Restlet
* Eclipse
* Git
* Jenkins
* JSP
* Tomcat

###(D) Infrastructure as a Service (IaaS)
Valador deployed the prototype on Amazon Web Services Infrastructure as a Service (IaaS).  We used EC2 servers, configured to our needs to host the development, testing, and production platforms. 

###(E) Unit Testing
Unit tests were created to test application modules and compiled into test suite which was integrated into the CI environment.  Unit test configurations are stored in a config file which is used to easily change test parameters and/or expected results when applicable.  All builds are automatically run through the test suite by the CI tool and marked as pass or fail.

###(F) Continuous Integration 
Valador chose Jenkins for our CI tool deployed on the EC2 servers which was linked to our git repository on GitHub for automatic builds when code was checked into the master branch.

###(G) Configuration Management
Valador chose git as our configuration management tool.  We made use of GitHub for the origin repository and managed branches through pull requests.  


###(H) Continuous Monitoring
Valador deployed the prototype on Amazon AWS platform which is fully FedRAMP certified. Tools like CoudWatch provide continuous monitoring of logs and metrics collection which work in concert with application frameworks to provide alarm thresholds and alerts. 


###(I) Deploy in a Container 
The application is deployed as a Docker image.  Valador uploaded versions to Dockerhub. Unfortunately the site was experiencing problems so we have placed the image [here](http://pool2.valador.net/18F/valador_pool2.tar). 

###(J) Interactive Approach
Valador followed our development approach based on the Agile Scrum methodology. The project kick-of meeting was followed by a user focus group to develop requirements based on user need. These requirements, tracked using Target Process, created the Product Backlog which is controlled by the Product Owner to set overall priorities in the development schedule. 

The “Sprint” begins with a Planning Meeting where the team breaks requirements into tasks, estimates their effort, and decides how many can be completed during a Sprint. During the Sprint, daily “standup” meetings are held for team members to share what tasks they worked on the previous day, what tasks they will work on during the current day and any impediments they may have. The Product Owner’s job is to remove these impediments. 

At the end of the Sprint, completed products are demonstrated at a Sprint Review held with the customer/users to receive feedback and re-prioritize the Product Backlog as necessary. After the Sprint Review, the team holds a Sprint Retrospective for the purpose of process improvement. A Sprint Planning Meeting follows and the process begins again.

This Project included three Sprints. The Product Owner was ultimately responsible for the end result. 

###(K) Installation Documentation 
Valador’s installation guide is included in the Git repository [here](https://github.com/valadorinc/openfda-pool2/blob/master/docs/InstallGuide_pool2.txt).

###(L) Openly Licensed Prototype and Platforms 
The prototype and underlying platforms used to create and run the prototype are openly licensed and free of charge.  These include:  
*	Bootstrap
*	PHP
*	Google Charts
*	Ajax
*	JQuery
*	MySQL
*	AngularJS
*	Java
*	Restlet 2.x
*	Linux

 

