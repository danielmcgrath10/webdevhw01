server {
	listen 80;
	listen [::]:80;

	root /home/danny/www/danny-mcgrath.com;
	
	index index.html;

	server_name danny-mcgrath.com www.danny-mcgrath.com;

	location / {
		try_files $uri $uri/ =404;
	}
}