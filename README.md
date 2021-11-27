<h1>Description</h1>
<p><a href="https://en.wikipedia.org/wiki/Training_Center_XML">TCX files</a> are XML files that are widely used to track
    sport activities. All major sport platforms such as <a href="http://www.strava.com">Strava</a>,
    <a href="https://en-gb.smashrun.com/">Smashrun</a>, <a href="https://mysports.tomtom.com">TomTom</a> and
    <a href="https://sports.garmin.com">Garmin</a> offer the ability to export activities captured by smartphone or
    sports watches in the form of TCX files.</p>
<p>This application helps to analyze your TCX files. Some functionalities:</p>
<ul>
    <li>Review statistics (data and graphs) of your TCX runs on a web page</li>
    <li>Store runs in your local database and export runs to Excel</li>
    <li>Communicate with external <a href="https://opencagedata.com/">OpenCage</a> API to get information about
        locations
    </li>
    <li>Connect to <a href="http://www.strava.com">Strava</a> and link the imported TCX runs to the respective runs on
        your Strava account
    </li>
    <li>Write comments and upload them to Strava</li>
</ul>

<h1>Technologies</h1>
<p>The application consists of 5 Java (Spring), Python and Angular microservices. Each service is in a private git
    repository. In order to download the services, you will need the Github token that I created. If I have provided you
    with the Github token, you can use the installation scripts to download the repositories (see instructions below),
    build docker images of each service and run the application with docker-compose. Some sample TCX runs are included
    in this repository.</p>

<h1>Installation instructions</h1>
<ol>
    <li>Clone this (public) repository. From the repository's root directory, run <code>./installation-scripts/git_clone_script.sh</code>
        to download the private repositories with all the services. You will be prompted for the Github personal access
        code (available on request by sending me a message).
    </li>
    <li>Build the Docker images. Run <code>./installation-scripts/build_docker_images.sh</code> from the application's
        root directory.
    </li>
    <li>Optional: replace the sample runs in the folder <code>sample_runs</code> with your own TCX runs.</li>
    <li>Start the application. Run <code>docker-compose up</code> from the application's root directory. Go to
        http://localhost:4200 to see the web application.
    </li>
</ol>
