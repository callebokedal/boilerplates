## Install Flask
```bash
# In the virtual environment!
$ pip install Flask
```
## HTML Escaping
```py
from markupsafe import escape

@app.route("/<name>")
def hello(name):
    return f"Hello, {escape(name)}!"
```

## Variable Rules
```
string      (default) accepts any text without a slash
int         accepts positive integers
float	    accepts positive floating point values
path        like string but also accepts slashes
uuid        accepts UUID strings
```

## HTTP Methods
```py
from flask import request

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        return do_the_login()
    else:
        return show_the_login_form()
```

## SQLite3
```bash
import sqlite3
from flask import g

DATABASE = '/path/to/database.db'

def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect(DATABASE)
    return db

@app.teardown_appcontext
def close_connection(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()
```

## Documentation
- https://flask.palletsprojects.com/en/2.0.x/quickstart/ 
- https://flask.palletsprojects.com/en/2.0.x/patterns/sqlite3/
- https://docs.python-requests.org/en/latest/api/
