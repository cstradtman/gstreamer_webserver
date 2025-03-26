## **README**

**Gstreamer\_webserver** is the source for a container intended to work with gstreamer\_livesource. This container provides a web front for the live source. It uses the `ngx_rtmp_module` to enable live DASH and HLS segments for streaming. The default webpage wraps the streams in JavaScript-based players, allowing end users to access them with a modern browser.

This is an example service used in a **build-your-own low-cost Kubernetes demo**, available at https://kube-demo.chrisstradtman.com/.

## **Files**

This README focuses only on the files that are unique or critical to the functionality being provided. Notes on basic nginx deployment files are omitted.

* `./Dockerfile`: A basic nginx Dockerfile extended with `mod-rtmp` modules.  
* `./html/index.html`: A simple `index.html` file that provides access to HLS and DASH versions of the stream from the `gstreamer_livesource` container.  
* `./README.md`: This file.  
* `./etc/nginx/sites-enabled/default`: A straightforward configuration file defining `/live/hls` and `/live/dash` paths for the respective HLS and DASH live sources.  
* `./etc/nginx/nginx.conf`: A standard nginx configuration file with an additional stanza defining an RTMP server, supporting the JavaScript players referenced in the nginx site configuration.
