PROJECT PORTFOLIO
A Collaborated Project By Group 2                                                                                              Valentin Ciubuc: X00194006                                                                                                                       Ryan Curran: X00210445                                                                                                                      Joseph Newsome:X00209800
 
 




	Table Of Contents
Project Details	2
Job Roles	3
Development stages – Database	4
Development stages – Front End	11
Development stages – MQTT	17
Testing	23
Final Deliverable – MQTT, Database, Front End	24
References	31


 
Project Details

here is your real project details
 
 

instead of computer events you need to track student movement events in a building
the building might a building on a tud campus for example
location events perhaps something like 
•	has entered or left building
•	in a particular room
•	not active at all 
•	active but not present 










Job Roles

We divided our roles and responsibilities, when each deliverable was published. After the deliverables were over we set additional goals for ourselves. This can be seen in the additional section. The project was kept on valentins laptop. We used code together, meetups (using the same laptop) and GitHub to communicate and add to our project.

Deliverables 1:
 
MQTT: Ryan and Joseph 

Database Part: Val and Ryan

Front End Web: Val  

Deliverables 2:

Valentin: application feature, Searching, Details page, Delete pages , Function Mosquito publisher script


Ryan: Sorting, Searching, Details page, Delete pages


Joseph: Message Mosquito publisher script , web layout ideas

Additional

Valentin: Report pages, Building Info, Count onMOUNT, Web Layout

Ryan: Portfolio, SQL Queries, Testing and Contact Page 

Joseph: About Us page



Development stages – Database 

First steps we took to develop and brainstorm our database was by inserting a table on word document.
Student Table
X_Number (PK)	First_name	Last_name	DOB	Module
				
				
				
				
				

Building Table
Building_id(PK)	Campus	Capacity 		
				
				
				
				
				

Location Events
X_number(FK)	Building_id(FK)	Location_id(PK)	time in/time out	
				
				
				
				
				


We used a whiteboard to communicate our ideas as a group. Below is examples of how we wanted our three databases to look and the names of each of the columns. Including the context and suggestions. 
 

 
 
















Scanned document with more ideas on what names will be in our table.
 


First database developed on supabase (3 tables). 
 


To understand the concept of our task for the project, we developed a system analysis diagram with an actor. 
 

Location event table with different names and data. Such as start_session and end_session
 
 





More diagrams, communicated via paper to better understand the concept of our project task. These diagrams include the idea of a new table – room.

 






Database with new addition: Room table. Also new names added to tables. 
 
 
 
Development stages – Front End 

First look at Front End
 
 
 
Addition of About US and CONTACT US pages
 
 




At this point of the project, we decided on color themes and with this we also became unsure what we were delivering and producing. This screenshot displays a booking system for students. Which contrasts to what we should have been delivering……
 

Filtering of website. Notable additions: Filtering of data, Search bar and ability to remove any inserted data from mqtt. 


 
 
 













These were potential images we had in mind for the design of the website. These images display the system of tapping card, students, events and the different campuses we based our project off.
 
 

This image is a scanned document, expressing our ideas of a report page. Counting the amount of students in addition with little notes in the corner of testing and designing our website.
 


















Development stages – MQTT 
First MQTT sub script 

 

















Further improvements, manually imported time (start and end session).
 











Data we published. Critical point in project as it gave us a sample dataset to base and improve our project on.
 

 
 
Database received our mqtt 
 
 














Addition of IN and OUT values displayed as status type
  
 



We reached a point, where we decided to improve the efficiency of our mqtt message protocol. Here is sample data to pub to the sub script with multiple echo commands. So we could copy it and publish straightaway, in the circumstance of a presentation or quickly updating database with information. 
 




Testing 

We faced errors at the start of our development of the website and used selenium IDE to correct where the errors occurred. This snippet displays 6 successful runs on each page, where acode has no errors. 

 













Final Deliverable – MQTT, Database, Front End


Database
This is our final database. A complete Contrast to our first database, which had three tables and it started from a word document table, we inserted. Time of insertion of data via mqtt is collected via timestamp instead of start and end session. 
 














Front End

Overall look of front end has changed from background and layout of all pages to the overall functionality, which include additions to the Report Page, Building Info and Event Log Page. 
		Home Page:
  
		Location Event Log:
 








Student Report:
 

Building Information Page:
 








About Us Page:
	 

Contact Us Page:
 


MQTT
MQTT has went from a time consuming process to an effortless process which enables user to enter in data, line by line via a pub script. 

 
 
 
 







References

Contact Us Page contact Form : https://www.w3schools.com/howto/howto_css_contact_form.asp

OnMount:
I’ve used OnMount to run report function that when the component is loaded to the DOM. This can initialize values, calling API to load some data from SUPADATABASE to perform action which needs to run only once.

How to use Svelte onMount Lifecycle method - Eternal Dev | Learn Web development







