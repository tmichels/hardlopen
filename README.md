<h1>Installation instructions</h1>
<ol>
    <li>Download the applications. From the application's root directory, run <code>./installation-scripts/git_clone_script.sh</code>. You will be prompted for
        <ul>
            <li>Github personal access code -> required to get access to my private repositories. Available on request by sending me a message.</li>
            <li><a href="https://opencagedata.com/">OpenCage</a> API key -> api to translate GPS coordinates to readable locations. Register at OpenCage and get a free API key.</li>
            <li><a href="https://www.strava.com">Strava</a> Secret -> required to link runs in the application with runs that are also stored in your Strava account.</li>
        </ul>
    </li>
    <li>Build the Docker images. Run <code>./installation-scripts/build_docker_images.sh</code> from the application's root directory.</li>
    <li>Optional: replace the sample runs in the folder <code>sample_runs</code> with your own TCX runs.</li>
    <li>Start the application. Run <code>docker-compose up</code> from the application's root directory. Go to http://localhost:4200 to see the web application.</li>
</ol>