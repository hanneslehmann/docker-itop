A small docker file to create an image with iTop-2.2.0-2459

After spinning up the container you can browse to http://localhost and configure itop.
Spinning up:
- Clone: git clone https://github.com/hanneslehmann/docker-itop.git
- Build: cd docker-itop && docker build -t <somename>/itop:latest .
- Run: docker run -d -p 80:80 -p 3306:3306 <somename>/itop:latest

Hint: the database connection is localhost/root without password. Any database name can be choosen. 
