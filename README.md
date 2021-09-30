# Simple webUI example built on the Ulfius HTTP Framework

Runs a simple file webserver and a small REST API.


## Usage:

### WebUI

This is meant to run on an embedded platform, so jansson json support was replaced with cJSON.

Open in your browser the url [http://localhost/info](http://localhost/info), and a webUI should appear.  You will have to replace localhost with the valid ip address if connecting remotely.

### Install and Build

The easiest way to install and build is to copy the install.sh script to the location you wish to build (with an Internet connection), and run it.  The script should download and install all dependencies and build the executable file.
```bash
$ sh install.sh
```

### Required Files

To run the code, you will need to copy the compiled file and the static folder to your desired location.
```bash
$ cp ./webui_app $(dest_folder)
$ cp -r ./static $(dest_folder)
```

### Run

```bash
$ ./webui_app
```
