# Data Modelling and SQL - Yacht Charter

### Problem Statement
A yacht charter company requires a web-based system to manage aspects of its holiday charter business with the business scenario stating that 

" There are several customers, each of whom may book several holiday charters, with each charter booked by an individual customer. A holiday charter may involve one yacht only, but each yacht may be involved in many holiday charters. A holiday charter may visit several ports and each port will be visited by many holiday charters. Most ports have several yachts based in them (although a few smaller ports have no yachts based in them) with each yacht based in just a single home port. "

Information to be held and manipulated include:

- the name, nationality, email address, phone number and id number of each customer.
- the name, type, model, home port, number of berths and cost of hire per day of each yacht.
- the name, phone number, email address and number of docking places at each port.
- the charter id, start date and duration of each charter, and the visit id, expected date of arrival and duration of stay at each port visited.

Additionally, the company stores customer data in an unstructured file in Excel format which is difficult to manage, analyse, or answer business challenges. 

Therefore, based on the above scenario, I have used Crow Foot notation to design a relational database which splitted data into 5 tables and implemented it by using MySQL.

The dirgram below is for a relational database I have created.

![](https://github.com/Chanapato/Data-Analyst-Portfolio/blob/main/SQL/Yacht%20Charter/Yacht.png)
