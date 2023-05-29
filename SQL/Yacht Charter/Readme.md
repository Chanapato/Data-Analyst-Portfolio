# Data Modelling and SQL - Yacht Charter

### Problem Statement
A yacht charter company requires a web-based system to manage aspects of its holiday charter business with the business scenario stating that 

" There are several customers, each of whom may book several holiday charters, with each charter booked by an individual customer. A holiday charter may involve one yacht only, but each yacht may be involved in many holiday charters. A holiday charter may visit several ports and each port will be visited by many holiday charters. Most ports have several yachts based in them (although a few smaller ports have no yachts based in them) with each yacht based in just a single home port. "

Information to be held and manipulated include:

- The name, nationality, email address, phone number and id number of each customer.
- The name, type, model, home port, number of berths and cost of hire per day of each yacht.
- The name, phone number, email address and number of docking places at each port.
- The charter id, start date and duration of each charter, and the visit id, expected date of arrival and duration of stay at each port visited.

Additionally, the company stores customer data in an unstructured file in Excel format which is difficult to manage, analyse, or answer business challenges. 

### Solution
Accoding to the above scenario, I have used Crow Foot notation to design a relational database that devided data into 5 tables and implemented it by using MySQL.

The dirgram below is for a relational database I have created.

![](https://github.com/Chanapato/Data-Analyst-Portfolio/blob/main/SQL/Yacht%20Charter/Yacht.png)

I have also developed the SQL code to support the business processes below which can be seen [HERE](https://github.com/Chanapato/Data-Analyst-Portfolio/blob/main/SQL/Yacht%20Charter/YachtCharter.sql).
- Add details of a new customer together with the start date and duration of the charter they have booked, but without specifying the yacht to be used or the ports to be visited. 
-  List the total length of stay, between two given dates of yachts in the fleet in each port. 
- Get a list of yachts (by name) visiting their home port between two given dates, together with the date of arrival and the length of the stay.
- List the ports visited by a given customer together with the date of arrival and length of stay, ordered by date. 
- Remove a yacht temporarily for a period of time (e.g., for servicing) and get a list of yachts that are not available. 

Hope you find this repository interesting!
