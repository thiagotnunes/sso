This is an application in order to test out different omniauth solutions.

## How to execute
1. Run rake db:create
2. Run rake db:migrate
3. Move the sso.sh.example to sso.sh script and paste the keys / secrets for each provider
4. Execute the sso.sh script in the current server (. sso.sh)
5. Run the server

## Currently Supported Solutions
* Google oauth2 
  * **website**: [create api keys](https://code.google.com/apis/console/)
* Facebook 
  * **website**: [create api keys](https://developers.facebook.com/apps)
* Github 
  * **website**: [create api keys](https://github.com/account/applications/new)
  * **note**: Need to specify the port of the callback host 
* Twitter 
  * **website**: [create api keys](https://dev.twitter.com/apps)
* Linked in 
  * **website**: [create api keys](https://www.linkedin.com/secure/developer)
* Yahoo
  * **website**: [create api keys](https://developer.apps.yahoo.com/projects)
  * **note**: Need to use at least one API, else you will receive consumer_key rejected failure
