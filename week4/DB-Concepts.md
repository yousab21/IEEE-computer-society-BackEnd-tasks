# a personal refrance to Data Base designe concepts
-----
## design steps :   
to design effetiant scalable databases one must go through these steps: 
### 1. gathering information 
- the goal here is to gather information from the client about the nature   
of the date stored and the potintioal quereies
### 2. choosing a DB manager    
- we decide whether to use a relation DB or a non-relational DB bassed on   
    1. the scale of the data being stored    
    2. vertival vs hozinontinal scaling plans   
    3. the type of queries that will be done   

### 3. analysis:
- we examine entities that we want to store in the data base      
and thier **attributes** which can be :
    1. unique arttributes
    2. optinal attribues
    3. mendetoryu attributes
- we also examine the **relations** between those entities which have many types including: 
    1. one to one
    2. one to many 
    3. many to many
- we also descibe the **cardinalaty** -*(max entities)*- and      
the **participation** -*(minimum entities)*- on both sides of the relation
- a common way to analyze data bases is the use of **entitie-relationship***(ER)* diagram      
to visualize the design goals of the database especially to non-technical clients

### 4. logical design :
- at this stage we begin to examin the actual properties of each entitie to      
begin actually forming an idea of how the DB will be structured these properties     
may include **data type of attributes** , or **general table structures**
- we also begin theorizing the potintial queuries that may be performed    
and optimize data placment to optimize for these queries

### 5. pyhsical design :
- at this point we should have clear structure of what we need to build    
so we can begin to study the DBMS we will be using and its features    
to plan out the actual creation on the DB

### 6. creation: 
- finaly after all this planning we being to actually run the queries to create our database    
and designing the API to interact with it

## DB keyes    
- keys are atrributes that can be used to identify members of a database
- there are mant types of keys thoes aand the can be picifies on diffirant specifications like :   
    1. on number of attruibuts in a key : (**simple keys** and **composite keys**)
    2. on minimal data required to define a key : (**minimal key** or **none-minimal key**)     
#### candidate keys :
- are defined as **minimal super keys** that are **unique** for each member
#### primary key : 
- is a chosen key from avilibale **candidate keys** to serve as the main way to identify members    
of an entity, for that reason it **can not be null** for any member     
- every other candidate key that is not the primary key is called an **alternate key**
#### forign keys :
- is the way tables are connected to each other by sharing a common    
candidate keye **usually the primayry key**
