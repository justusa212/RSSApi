**Health Check**
----
  Health check to show server is responding
* **URL**

  /v1/

* **Method:**

  `GET`
  
*  **URL Params**
 
* **Body Params**

*  **Authorization(API KEY)**
    NOT REQUIRED

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{}`

**Create User**
----
  Returns json data about a created user.
* **URL**

  /v1/users

* **Method:**

  `POST`
  
*  **URL Params**
 
* **Body Params**
   REQUIRED -Name

*  **Authorization(API KEY)**
    NOT REQUIRED

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{ ID : UUID, CreatedAt : Current Time, UpdatedAt: Current Time, Name: name in Data params, ApiKey: hashed string}`
 
**Gets Feeds**
----
  Returns a list of feeds that is followed by the user.

* **URL**

  /v1/feeds

* **Method:**

  `GET`
  
*  **URL Params**
 
* **Body Params**

*  **Authorization(API KEY)**
   REQUIRED

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
          {
            ID : UUID, CreatedAt : Current Time,
            UpdatedAt: Current Time, Name: name in Data params,
            Url: hashed string, UserID: hashed string, Last Fetched at: Time when fetched
          }
          {
            ID : UUID, CreatedAt : Current Time,
            UpdatedAt: Current Time, Name: name in Data params,
            Url: hashed string, UserID: hashed string, Last Fetched at: Time when fetched
          }
    }`
 
**Creates Feeds**
----
  Returns the created feed requested by a given user.

* **URL**

  /v1/feeds

* **Method:**

  `POST`
  
*  **URL Params**
 
* **Body Params**
   REQUIRED NAME, URL

*  **Authorization(API KEY)**
   REQUIRED

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{
            ID : UUID, CreatedAt : Current Time,
            UpdatedAt: Current Time, Name: name in Data params,
            Url: hashed string, UserID: hashed string, Last Fetched at: Time when fetched    
    }`
 
**Gets user**
----
  Returns the user's own info .

* **URL**

  /v1/user

* **Method:**

  `POST`
  
*  **URL Params**
 
* **Body Params**

*  **Authorization(API KEY)**
   REQUIRED

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{ ID : UUID, CreatedAt : Current Time, UpdatedAt: Current Time, Name: name in Data params, ApiKey: hashed string}`

**Follow Feed**
----
  Returns the feed to be followed.

* **URL**

  /v1/feed/follow

* **Method:**

  `POST`
  
*  **URL Params**
 
* **Body Params**
  REQUIRED feedId

*  **Authorization(API KEY)**
   REQUIRED

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{
            ID : UUID, CreatedAt : Current Time,
            UpdatedAt: Current Time, Name: name in Data params,
            Url: hashed string, UserID: hashed string, Last Fetched at: Time when fetched    
    }`

**Unfollow Feed**
----
  Returns Empty JSON to show success.

* **URL**

  /v1/feed/unfollow/{feedFollowId}

* **Method:**

  `DELETE`
  
*  **URL Params**
   REQUIRED feedFollowId
 
* **Body Params**

*  **Authorization(API KEY)**
   REQUIRED

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{}`

**Get Feeds**
----
  Returns feeds followed by user.

* **URL**

  /v1/feeds/follow/

* **Method:**

  `GET`
  
*  **URL Params**
   REQUIRED feedFollowId
 
* **Body Params**

*  **Authorization(API KEY)**
   REQUIRED

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{
          {
            ID : UUID, CreatedAt : Current Time,
            UpdatedAt: Current Time, Name: name in Data params,
            Url: hashed string, UserID: hashed string, Last Fetched at: Time when fetched
          }
          {
            ID : UUID, CreatedAt : Current Time,
            UpdatedAt: Current Time, Name: name in Data params,
            Url: hashed string, UserID: hashed string, Last Fetched at: Time when fetched
          }
    }`

**Get Posts**
----
  Returns posts from feeds followed by user.

* **URL**

  /v1/posts

* **Method:**

  `GET`
  
*  **URL Params**
   
* **Body Params**

*  **Authorization(API KEY)**
   REQUIRED

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
            id ,
            created_at ,
            updated_at ,
            title ,
            description ,
            published_at ,
            url ,
            feed_id   
    }`