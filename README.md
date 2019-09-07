## Before you begin
Setup your DNS records, preferably have a wildcard domain or subdomain pointing to your server

## Setting up the server
 1. Clone this repository
 1. Run `setup.sh` to install all the required dependencies
 1. Copy `sample.env` into `.env` and change the configuration values
 1. Run `run.sh` to spin up the docker containers (It might take awhile for everything to start)
 1. Check out `yourdomain.yourext:81` (default user: admin@example.com, default pass: changeme; you will be asked to change these values)

## Setting up the Nginx Proxy Configuration
First thing to do should be to create a proxy record to your admin page so that you access your admin page over HTTPS. Choose to create a new proxy record and fill up the form. Make sure to also hit the `SSL` tab and choose to generate a new Let's Encrypt certificate. After the record is created, you may need to go back into the record and hit the SSL tab again to turn on the Force SSL and HTTP/2 options.

<img width="500" alt="Proxy Record Form" src="https://user-images.githubusercontent.com/9781814/64473904-4d654b00-d19f-11e9-86f4-23d57bbe08e3.png">
<img width="500" alt="Proxy Record SSL Tab" src="https://user-images.githubusercontent.com/9781814/64473907-4dfde180-d19f-11e9-9691-61cd3446b123.png">

----------

Next, create a proxy record to your minio server. Take special note of the hostname and port in the form. Again, you may need to edit the proxy record after creating it, to turn on the Force SSL and HTTP/2 options.

<img width="500" alt="Screen Shot 2019-09-07 at 6 44 25 PM" src="https://user-images.githubusercontent.com/9781814/64473928-8d2c3280-d19f-11e9-8974-6995c00f6899.png">

## Enjoy!
Enter your Minio URL into the browser and enjoy!

<img width="500" alt="Minio Web Client" src="https://user-images.githubusercontent.com/9781814/64473977-f8760480-d19f-11e9-951b-478a6ccd2ef3.png">
