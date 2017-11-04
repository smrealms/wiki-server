Requirements:
 * A file called `wiki-test.pem` that is set up as a Deploy Key on GitHub
 * A `.env` file following this format:
```
# Environment variables for docker-compose
SESSION_SECRET=
WIKI_ADMIN_EMAIL=
PORT=
HOST=
```

To start the wiki, run:
```
docker-compose up --build -d
```
