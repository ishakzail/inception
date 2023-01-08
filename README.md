# INCEPTION :whale:

## How to test this project
    - clone the repo above.
    - Change the value in the variable `path` in the `Makefile` and `.env` files.
    - run `make` command in your terminal.
    - when the the containers running go to the links:
	      - https://localhost for page wordpress.
        - to access the admin dashboard in wordpress you have to change the WP_URL variable in .env file
            sudo vi /etc/hosts and add a new hostname after localhost | 127.0.0.1 {your_host} |
            https://{your_host}/wp-admin for dashboard admin in wordpress.
	      - https://localhost/index.html for my website.
	      - localhost:8080 for adminer
	      - localhost:2000 for cadvisor
