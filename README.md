Requirements:
 * A file called `wiki-test.pem` that is set up as a Deploy Key on GitHub
 * A `.env` file following this format:
```
# Environment variables for docker-compose
SESSION_SECRET=
WIKI_ADMIN_EMAIL=
HOST=  # External URL (including port) that users will connect to
FACEBOOK_APP_ID=
FACEBOOK_APP_SECRET=
GITHUB_CLIENT_ID=
GITHUB_CLIENT_SECRET=
```

To start the wiki, run:
```
docker-compose up --build -d
```
