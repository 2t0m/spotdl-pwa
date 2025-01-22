# spotdl-pwa
SpotDL web UI container with PWA compatibility.
<p>
        This container runs the <strong>SpotDL web UI</strong> on port <strong>8800</strong>, enhanced with 
        <strong>PWA compatibility</strong>.
</p>
<h3>Features</h3>
    <ul>
        <li>Access the SpotDL web UI on <code>http://localhost:8800</code>.</li>
        <li><strong>PWA compatibility</strong>: Add the app to your home screen.</li>
    </ul>
    <h2>Docker Compose Example</h2>
    <p>To easily run the container using Docker Compose, use the following <code>docker-compose.yml</code> configuration:</p>
    <pre><code>version: '3.8'
services:
  spotdl-pwa:
    image: 2t0m/spotdl-pwa:latest
    container_name: spotdl-pwa
    restart: always
    volumes:
      - /path/to/music:/app/downloads
    ports:
      - "8800:8800"
</code></pre>
    <h2>Source Code</h2>
    <p>The original source code for the SpotDL web UI is available at the following GitHub repository:</p>
<p><a href="https://github.com/spotDL/web-ui/tree/master/dist" target="_blank">https://github.com/spotDL/web-ui/tree/master/dist</a></p>
<p>The customized source code for the SpotDL web UI is available at the following GitHub repository:</p>
    <p><a href="https://github.com/2t0m/web-ui/tree/master/dist" target="_blank">https://github.com/2t0m/web-ui/tree/master/dist</a></p>
