# Simple CI/CD System
- This is tutorial about Simple CI/CD system. You can use simple technologies of current system to build it.

## Ideas and Environment
### Environment
- Tools:
	- Flyway (https://flywaydb.org/): Version control for your database.
	- Backlog: Git server
	- Chatwork: Group chat for teams
- Environment:
	- OS: Ubuntu 14.04
	- Git: 1.9.1
	- PHP: 5.5+
	- Nginx: 1.4.6
	- PostgreSQL: 9.3.16

### Idea
After you Build environment for server sucessfully.
1. Create an API Pull source code automatically has method is POST ([index.php](index.php)): To call bash script file and send message to Chatwork.
2. Create and bash script file: Pull latest source code from Git server (Backlog) and run Database migration tool (Flyway). I have written a example (bash_deploy.sh).
3. Create ssh key by nginx user (www-data user) and add public key to Backlog server.
- Create a ssh key by nginx user :

```
sudo -H -u www-data bash -c 'ssh-keygen -t rsa -b 4096 -C "your_email@example.com"' 
```

This creates a new ssh key. Add new ssh to Git server.

4. User Backlog git webhook to to trigger CI build (https://backlog.com/help/usersguide/git/userguide1710/)
5. Install ```php-curl``` extension on Server.

```
apt-get install -y php-curl
```
6. Permission for ```bash_deploy.sh``` file and source codes of project. So web service can read, write and execute them.
7. Get chatwork access token (http://download.chatwork.com/ChatWork_API_Documentation.pdf).
8. Change configuration in API to server can send message to Chatwork.
9. You can try create a pulling request on Backlog.

Goodluck!!!
