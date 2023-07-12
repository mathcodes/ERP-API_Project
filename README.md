

## Running Your SQL File

Create your `SQL` file in your editor (for example, VS Code) and save it with a .sql extension, such as `database.sql`.

Open your terminal and navigate to the directory where you saved your `database.sql` file.

Type `sqlite3` `mydatabase.db` < `database.sql` and press Enter. `SQLite` will create a new SQLite database named `mydatabase.db` and run the SQL commands from the `database.sql` file.

If you want to interact with your database, you can do so by entering the `SQLite` command prompt with sqlite3 `mydatabase.db`.

## Set Up the Entity Framework DbContext
```
|Data
|---DbContext.cs
  <!-- THIS CLASS WILL MANAGE ENTITIY OBJECTS DURING RUN TIME, WHICH INCLUDES
    - POPULATING OBJECTS ITH DATA FROM DB
    - CHANGE TRACKING
    - PERSISTING DATA TO THE DATABASE
```