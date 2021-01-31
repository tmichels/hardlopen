<h4>Build and deploy</h4>
Ensure [docker](https://www.docker.com/) is running and execute the following commands in the terminal (sudo may be required on UNIX systems):
<ul>
<li><code>git clone https://github.com/tmichels/hardlopen</code></li>
<li><code>docker build ./hardlopen/frontend -t hardlopen-frontend</code></li>
<li><code>docker build ./hardlopen/backend -t hardlopen-backend</code></li>
<li><code>docker-compose -f ./hardlopen/docker-compose.yml up</code></li>
</ul>

<h4>Optional: store API-keys in appropriate location for additional features</h4> 
<p>Some features of the program require API-keys:</p>

- [OpenCage](https://opencagedata.com/) location converter to translate GPS coordinates to readable locations. Register at OpenCage and get a free API key, put it in a text file with the name <code>OpenCageAPIKey.txt</code>, and store the file in this directory [backend\src\main\resources\api-keys](https://github.com/tmichels/hardlopen/tree/master/backend/src/main/resources/api-keys).
- Search if imported run is also uploaded to [Strava](https://www.strava.com). If so, the application will link to the respective run. Updates to the Strava name (in Strava) can be made directly from the application. Contact me to request the api key.

<h4>Load the application</h4>
Go to http://localhost:4200 to load the application.
