<h4>Build and deploy</h4>
Ensure [docker](https://www.docker.com/) is running.
Download script <code>windows-installation.bat</code> to an empty folder and run it. No need to clone a project, script will do it for you.

<h4>Optional: store API-keys in appropriate location for additional features</h4> 
<p>Some features of the program require API-keys:</p>
<ul>
<li>[OpenCage](https://opencagedata.com/) location converter to translate GPS coordinates to readable locations. Register at OpenCage and get a free API key, put it in a text file with the name <code>OpenCageAPIKey.txt</code>, and store the file in this directory: \hardlopen\backend-runs\src\main\resources\api-keys.</li>
<li>Search if imported run is also uploaded to [Strava](https://www.strava.com). If so, the application will link to the respective run. Updates to the Strava name (in Strava) can be made directly from the application. Contact me to request the api key.</li>
</ul>

<h4>Load the application</h4>
Go to http://localhost:4200 to load the application.