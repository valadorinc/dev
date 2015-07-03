##Valador Pool2 Submission##

Pool Two: Development Pool: In addition to the Description, above, the Quoter must demonstrate that they followed the U.S. Digital Services Playbook by providing evidence in the repository. The README.md file should also make reference to the following for Pool Two Development:
a. assigned one leader, gave that person authority and responsibility and held that person accountable for the quality of the prototype submitted
Valador follows the Agile Scrum methodology for design and development.  During the kick-off meeting for this Project, Valador assigned Kevin Sadeghian as the Product Owner, then worked to define the scope of the project based on the RFQ content.  Mr. Sadeghian is a Certified Scrum Product Owner (CSPO) and was provided with the authority and responsibility to complete the Project; and was held accountable for the quality and timeliness of the final prototype and accompanying artifacts.


b. assembled a multidisciplinary and collaborative team that includes at a minimum two of the labor categories limited to the Development Pool labor categories to develop the prototype as quoted in Attachment C. The quoter’s proposed mix of labor categories and level of effort for its working prototype, as reflected in Attachment C, shall be evaluated to assess the quoter’s understanding and capability to supply agile delivery services c. used at least five modern and open-source technologies, regardless of architectural layer (frontend, backend etc)
Valador assembled a team which included the following Valador employees:
Kevin Sadeghian – Product Owner
Philip Stroh – Software Engineer
Paulo Ordevez – Graphic Designer 
Adelia Nichols – Graphic Designer 
David White – System Architect
Sean Yao – Software Developer
Ben Franzini – Technical Writer
Each of these individuals has different skillsets and varying years of experience. The resource estimates for each team member were calculated, factored into the project budget, documented in the project PMP and approved by Valador’s CEO to ensure availability throughout the project.

Additionally, Valador set up workspace for the duration of the project in one of our conference rooms.  The room was equipped with four computers (each with two monitors), a projector, and a whiteboard.  For the majority of the Project the team worked in the conference room and held all Sprint related meetings in the same workspace.  This allowed problems to be solved quickly and developers to collaborate when they ran into a roadblock.  This was especially important for this Project given the short duration.  Mr. Franzini was working remotely from out of state so the team utilized Skype, Webex meetings, and teleconferences to included him in the collaborative working process. 


d. deployed the prototype on an Infrastructure as a Service (IaaS) or Platform as a Service (PaaS) provider, and indicated which provider was used
Valador deployed the prototype on Amazon Web Services Infrastructure as a Service (IaaS).  We created used EC2 servers, configured to our needs to host the development, testing, and production platforms. 

e. wrote unit tests for their code
Unit tests were created to test application modules and compiled into test suite which was integrated into the CI environment.  Unit test configurations are stored in a config file which is used to easily change test parameters and/or expected results when applicable.  All builds are automatically run through the test suite by the CI tool and marked as pass or fail.

f. set up or used a continuous integration system to automate the running of tests and continuously deployed their code to their IaaS or PaaS provider
Valador chose Jenkins for our CI tool deployed on the EC2 servers which was linked to our git repository on GitHub for automatic builds when code was checked into the master branch.

g. set up or used configuration management
Valador chose git as our configuration management tool.  We made use of GitHub for the origin repository and managed branches through pull requests.  ADD TP SCREENSHOTS.


h. set up or used continuous monitoring
Valador used Nagios for continuous monitoring of the website, services, and database. 


i. deploy their software in a container (i.e., utilized operating-system-level virtualization)
The application is deployed as an OVF template which is playable in any number of virtual appliance players such as VMWare, VirtualBox or MS Hyper-v.

j. used an interactive approach, where feedback informed subsequent work or versions of the prototype
Valador followed our development approach which is based on the Agile Scrum methodology.  This method promotes disciplined project management practices that encourage frequent inspection of the product, involvement of stakeholders/people, and flexible adaptation of the requirements. Teamwork, self-organization, and accountability are encouraged to allow for rapid delivery of high-quality software and a business approach that aligns development with customer/user needs. Valador followed the project kick-of meeting with a user focus group to help understand what people need, that the preliminary design concepts were simple and intuitive, and that the requirements being developed addressed the whole experience, from start to finish.  Customer-driven, or in this case user-driven feedback based on focus groups, prioritized requirements are broken down into tasks for short development sprints that result in reviewable, potentially shippable product increments.
The Product Owner, a Valador resource working closely with the customer, prioritized the Product Backlog which contained features, requirements, bug fixes or other development tasks. The items in the Product Backlog were contributed by the entire team, focus group stakeholders/people, as well as the customer. This allowed a variety of idea contributions to the product functionality, while allowing the customer and Project Manager to maintain control of their overall priorities in the development schedule. 
The “Sprint” is a development cycle where a set of items from the Product Backlog are fully completed. It begins with a Sprint Planning Meeting where the team breaks Product Backlog items down into subtasks, estimates their effort, and decides on how many Product Backlog items they can get done in the next Sprint. This Sprint Backlog created from the Sprint Planning Meeting is a fixed set of tasks that will be completed by the end of the Sprint. While items in the Product Backlog can be added, removed or re-prioritized at any time, items in the Sprint Backlog will not change once the Sprint has begun. As development takes place on the items in the Sprint Backlog, daily “standup” meetings are held to report on progress. Every team member who is working on Sprint Backlog items briefly discusses what they did the previous day, what they are doing the current day and what, if any, obstacles are preventing them from completing their tasks. It is the Project Manager’s job to remove these obstacles so that the team can complete their work. 
By the end of the Sprint, an operational, fully demonstrable product is created including the items that were defined in the Sprint Backlog. A Sprint Review is held with the customer to demonstrate the product, receive feedback and re-prioritize the Product Backlog in anticipation for the next Sprint if necessary. If the customer is satisfied with the product of the Sprint and believes it can be used in a production environment, they can choose to make it a final release product. After the Sprint Review, the team holds a Sprint Retrospective for the purpose of process improvement including discussing what could be done better in future Sprints and making plans for implementing those improvements. If there are more features on the Product Backlog at this time that the customer wants completed, the Sprint cycle begins anew with another Sprint Planning Meeting. 
This approach allows the Customer to use and evaluate the system early and frequently throughout the overall schedule. The highest priority tasks are addressed early on to provide the end result desired by the customer and give ample time for refinement of the product requirements. Agile development methodologies help attack risk through demonstrable progress – frequent, executable releases that enable and allow continuous customer involvement and feedback.  Because all iterations end with a demonstrable release, the development team stays focused on producing results, and frequent reviews checks help ensure that the project stays on schedule.
This Project included three Sprints.  Given the short timeframe, feedback was solicited from both team members and other Valador employees (ie. Stakeholders/People) during each Sprint.  The Product Owner was ultimately responsible for the end result.  Valador used Target Process to keep track of the requirements and tasks to be implemented in the solution. 

k. provided sufficient documentation to install and run their prototype on another machine
Valador provided an installation guide which is included in <<David/Phil>>

l. prototype and underlying platforms used to create and run the prototype are openly licensed and free of charge
The prototype and underlying platforms used to create and run the prototype are openly licensed and free of charge.  These include:  
•	Bootstrap
•	PHP
•	Google Charts
•	Ajax
•	JQuery
•	MySQL
•	AngularJS
•	Java
•	Restlet 2.x
•	Eclipse
•	Git
•	Jenkins
•	Linux

