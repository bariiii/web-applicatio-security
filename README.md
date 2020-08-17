# web-applicatio-security

## group name: # Amanah
## group members:

#### Abdulkadir Abikar Abdilbari 1626081 (Database configuration, menu)
#### RAKIBUL HOSSAIN 1520173 ( login and sign up )
#### SY SAVANE IDRISS 1535455 (Database configuration, regular experssion)

## Title:Food delivery web application 

<img src="/security screenshot/scr3.JPG">
<img src="/security screenshot/scr4.JPG">


## introduction: 
### this application provides a food delivery system that requires users to register and sign up to use the system. The system gives users the preference to choose the food and to make deleviry, we are going to provide a secure system by enhancing enhancing the system security by applying these six implementation (input validation, Authentication , Authorization, XSS and CSRF Prevention, Database Security Principles, File Security Principles). 


## objective: 
### is to develop a secure network between users and system admin by providing a secure web application enviroments. 

## Web Application Security Enhancement:

### input validation: 
data validation is the process of ensuring data have undergone data cleansing to ensure they have data quality, that is, that they are both correct and useful.
Input validation is performed to ensure only properly formed data is entering the workflow in an information system, preventing malformed data from persisting in the database and triggering malfunction of various downstream components. Input validation should happen as early as possible in the data flow, preferably as soon as the data is received from the external party. 

<img src="/security screenshot/input valid.JPG">
<img src="/security screenshot/input valid 2.JPG">

users are asked to input the correct data type for each data entry from user such as password and emails.
messages will alert user to enter the correct data in the right text input whenever an error happens.

<img src="/security screenshot/scr1.JPG">
<img src="/security screenshot/scr2.JPG">

### Authentication
#### The process of verifying a claimed identity of a user, device, or other entity in a computer system. the process of verifying the integrity of data that has been stored, transmitted, or otherwise exposed to possible unauthorized access.

<img src="/security screenshot/authin.JPG">

#### to verify user's identity the system will check their account by calling the database to get their information before accessing the system and validating every input from these users. 

<img src="/security screenshot/authi2.JPG">

### Authorization 
#### The right or a permission that is granted to a system entity to access a system resource.
#### we created a session Id that can be used to identify a user that has logged into a website.

<img src="/security screenshot/sessionID.JPG">

##### session Id IS created once user access the system.



### XSS and CSRF Prevention
#### A cross-site scripting attack against your site can really ruin your day, not to mention your users. Many sites avoid XSS attacks by not allowing HTML in user submitted content they enforce plain text only, or use an alternative markup syntax like wiki-text or Markdown. These are seldom optimal solutions for the user, as they lower expressiveness, and force the user to learn a new syntax. Jsoup provides a range of Whitelist configurations to suit most requirements; they can be modified if necessary, but take care.
#### to prevent XSS and CRFS we used jsoup which is a Java library for working with real-world HTML. It provides a very convenient API for fetching URLs and extracting and manipulating data

<img src="/security screenshot/xss 1.JPG">


### Database Security Principles
#### SQL injection usually occurs when you ask a user for input, like their username/userid, and instead of a name/id, the user gives you an SQL statement that you will unknowingly run on your database.To protect a web site from SQL injection, we implemented SQL parameters.

#### 
<img src="/security screenshot/sql.JPG">

### File Security Principles

#### The security principle is our localhost or our server tag that authenticate the accessibility of our network and also the java code include in our source package in which we included the security principle in our project into class and interface java with the Serializable interface, a name string, a getName() method that returns this string, and other support methods such as hashCode() , toString() , and equals(). The Files are customerDAO.java , customerDAOimpl.java , MyProvider.java , MyConnectionProvider.java






