# WEB JPA CDI EJB Archetype


> #### Prepare the project structure. Define default folders and files.
> ```bash
> archetype_root
> ├── pom.xml
> ├── README.md
> ├── src
>│   └── main
>│       └── resources
>│           ├── archetype-resources
>│           │   ├── bash.sh
>│           │   ├── Dockerfile
>│           │   ├── pom.xml
>│           │   ├── README.md
>│           │   ├── src
>│           │   │   ├── injection
>│           │   │   │   ├── HelloBean.java
>│           │   │   │   ├── HelloPojo.java
>│           │   │   │   └── Servlet.java
>│           │   │   └── META-INF
>│           │   │       └── persistence.xml
>│           │   └── web
>│           │       └── WEB-INF
>│           │           ├── beans.xml
>│           │           ├── META-INF
>│           │           │   ├── ejb-jar.xml
>│           │           │   └── MANIFEST.MF
>│           │           └── web.xml
>│           └── META-INF
>│               └── maven
>│                   └── archetype-metadata.xml
>```


> ##### Go to the folder of the created project and type:
>```bash
>mvn clean install
>```

>##### The archetype is created. 
>The following files will be created in the .m2 repository:
>```bash
>└── kirilo
>    └── web-ejb
>        ├── 1.0.0
>        │   ├── _remote.repositories
>        │   ├── web-ejb-1.0.0.jar
>        │   └── web-ejb-1.0.0.pom
>        └── maven-metadata-local.xml
>```

> ##### Create a new folder in the work directory and type:
>```bash
>
>mvn archetype:generate \
>-DarchetypeGroupId=com.kirilo \
>-DarchetypeArtifactId=web-ejb \
>-DarchetypeVersion=1.0.0 \
>-DgroupId=com.kirilo.webejb \
>-DartifactId=web-ejb \
>-Dversion=1.0-SNAPSHOT \
>-DinteractiveMode=false -X 
>```

> #### The project template is created and will be look like as follows:
>```bash
> new_project
> └── web-ejb
>    ├── bash.sh
>    ├── db
>    ├── Dockerfile
>    ├── pom.xml
>    ├── README.md
>    ├── src
>    │   ├── com
>    │   │   └── kirilo
>    │   │       └── webejb
>    │   │           └── injection
>    │   │               ├── HelloBean.java
>    │   │               ├── HelloPojo.java
>    │   │               └── Servlet.java
>    │   └── META-INF
>    │       └── persistence.xml
>    ├── test
>    │   └── com
>    │       └── kirilo
>    │           └── webejb
>    └── web
>        └── WEB-INF
>            ├── beans.xml
>            ├── META-INF
>            │   ├── ejb-jar.xml
>            │   └── MANIFEST.MF
>            └── web.xml
>```

> ##### Go to the folder of the created project and type:
> ```bash
> mvn package
> ```
> The following files will be added to the project into target folder:
> ```bash
> target
> ├── classes
> │   └── com
> │       └── kirilo
> │           └── webejb
> │               └── injection
> │                   ├── HelloBean.class
> │                   ├── HelloPojo.class
> │                   └── Servlet.class
> ├── generated-sources
> │   └── annotations
> ├── maven-archiver
> │   └── pom.properties
> ├── maven-status
> │   └── maven-compiler-plugin
> │       └── compile
> │           └── default-compile
> │               ├── createdFiles.lst
> │               └── inputFiles.lst
> ├── web-ejb-1.0-SNAPSHOT
> │   ├── META-INF
> │   └── WEB-INF
> │       ├── beans.xml
> │       ├── classes
> │       │   ├── com
> │       │   │   └── kirilo
> │       │   │       └── webejb
> │       │   │           └── injection
> │       │   │               ├── HelloBean.class
> │       │   │               ├── HelloPojo.class
> │       │   │               └── Servlet.class
> │       │   └── META-INF
> │       │       └── persistence.xml
> │       ├── META-INF
> │       │   ├── ejb-jar.xml
> │       │   └── MANIFEST.MF
> │       └── web.xml
> └── web-ejb.war
>```

>##### The following files will be attached to the war archive:
> ```bash
> web-ejb.war
> ├── META-INF
> └── WEB-INF
> ├── beans.xml
> ├── classes
> │   ├── com
> │   │   └── kirilo
> │   │       └── webejb
> │   │           └── injection
> │   │               ├── HelloBean.class
> │   │               ├── HelloPojo.class
> │   │               └── Servlet.class
> │   └── META-INF
> │       └── persistence.xml
> ├── META-INF
> │   ├── ejb-jar.xml
> │   └── MANIFEST.MF
> └── web.xml
> ```

> #### Run with TomEE APP Server
> ```bash
> mvn package tomee:run
> ``` 
> after typing in the terminal
> ```bash
> curl localhost:8080/web-ejb/
> ```
>  we will receive:
>```html
> <html><body><h1>Hello simple WebServlet!</h1><h1>Hello EJB!!</h1><h1>Hello CDI!!</h1></body></html>
> ```
> Or type in the browser:
> ```text
> localhost:8080/web-ejb/
> ```
> 
><html><body><h1>Hello simple WebServlet!</h1><h1>Hello EJB!!</h1><h1>Hello CDI!!</h1></body></html>

<br><br>
>## web-ejb:1.0.1
> ```bash
>\$ cd archetype-root
>\$ mvn clean install
>  
>\$ cd new_project
>\$ mvn archetype:generate \
> -DarchetypeGroupId=com.kirilo \
> -DarchetypeArtifactId=web-ejb \
> -DarchetypeVersion=1.0.1 \
> -DgroupId=com.kirilo.webejb \
> -DartifactId=web-ejb \
> -Dversion=1.0-SNAPSHOT \
> -DinteractiveMode=false -X
> 
>\$ cd web-ejb
>\$ mvn clean package tomee:run
>```
>```text
>http://localhost:8080/web-ejb/JNDIServlet
>```
><h1>Task details</h1>
><table cellspacing="10" cellpadding="5" border="1"><tbody><tr><th>ID</th><th>Name</th><th>Description</th><th>Status</th><th>Created date</th><th>Last modified date</th></tr><tr><td>1</td><td>My first task</td><td>The description of my first task</td><td>TODO</td><td>2021-01-29 00:28:13</td><td>2021-01-29 00:28:13</td></tr><tr><td>2</td><td>My second task</td><td>The description of my second task</td><td>TODO</td><td>2021-01-29 00:28:13</td><td>2021-01-29 00:28:13</td></tr></tbody></table>

<br><br>
>## web-ejb:1.0.2
> ===
> Startup inside Docker containers.
> 
>Created by docker-compose.yml
> 
>Added scripts for building a project and creating containers inside Docker. 
> 
>When done, the script redirects to the default browser page with JNDI information. 
> 
>After a few minutes, when the data source is ready, servlet will display information about the data source and create a link to a servlet with data from the database.
> 
> Includes TomEE, Mysql, Adminer and hello-world container image
> ```bash
>\$ cd archetype-root
>\$ mvn clean install
> 
>\$ cd new_project   
>\$ mvn archetype:generate \
> -DarchetypeGroupId=com.kirilo \
> -DarchetypeArtifactId=web-ejb \
> -DarchetypeVersion=1.0.2 \
> -DgroupId=com.kirilo \
> -DartifactId=web_ejb \
> -Dversion=1.0-SNAPSHOT \
> -DinteractiveMode=false -X
> 
>\$ cd web_ejb/infrastructure
>\$ sh mvn-clean-build-up.sh
>```

>Script Automatically builds a project and redirects to the default browser page
> 
>```text
>org.apache.naming.NamingContext comp
>
>org.apache.naming.NamingContext com.kirilo.injection.Servlet
>
>com.kirilo.injection.HelloBean$$LocalBeanProxy bean
>
>org.apache.openejb.resource.jdbc.managed.local.ManagedDataSource MySQLDataSource
>
>MySQL is not ready. Please wait a few minutes... Try the command: 'docker ps' to check the health of the mysql container.
>
>Communications link failure The last packet sent successfully to the server was 0 milliseconds ago. The driver has not received any packets from the server.
>
>Time left: 0m 0s
>
>org.apache.naming.NamingContext module
>
>java.lang.String ModuleName
>
>Current Time is: 8:43:55 AM
>```

>```text
>org.apache.naming.NamingContext comp
>
>org.apache.naming.NamingContext com.kirilo.injection.Servlet
>
>com.kirilo.injection.HelloBean$$LocalBeanProxy bean
>
>org.apache.openejb.resource.jdbc.managed.local.ManagedDataSource MySQLDataSource
>
> - JDBC Connection is valid
>
> - URL: 'jdbc:mysql://db:3306/web_ejb?useSSL=false'
>
> - DatabaseProductName: 'MySQL'
>
> - DriverName: 'MySQL Connector/J'
>
> - DriverVersion: 'mysql-connector-java-8.0.21 (Revision: 33f65445a1bcc544eb0120491926484da168f199)'
>
> - UserName: 'admin_db@172.25.0.4'
>
>JNDIServlet
>
>Total load time: 1m 33s
>
>org.apache.naming.NamingContext module
>
>java.lang.String ModuleName
>
>Current Time is: 8:50:55 AM
>```

> Click on the 'JNDIServlet' link
> <body><h1>Task details</h1><table cellspacing="10" cellpadding="5" border="1"><tbody><tr><th>ID</th><th>Name</th><th>Description</th><th>Status</th><th>Created date</th><th>Last modified date</th></tr><tr><td>1</td><td>My first task</td><td>The description of my first task</td><td>TODO</td><td>2021-02-09 08:44:40</td><td>2021-02-09 08:44:40</td></tr><tr><td>2</td><td>My second task</td><td>The description of my second task</td><td>TODO</td><td>2021-02-09 08:44:40</td><td>2021-02-09 08:44:40</td></tr><tr><td>3</td><td>My first task</td><td>The description of my first task</td><td>TODO</td><td>2021-02-09 08:45:03</td><td>2021-02-09 08:45:03</td></tr><tr><td>4</td><td>My second task</td><td>The description of my second task</td><td>TODO</td><td>2021-02-09 08:45:03</td><td>2021-02-09 08:45:03</td></tr><tr><td>5</td><td>My first task</td><td>The description of my first task</td><td>TODO</td><td>2021-02-09 08:45:30</td><td>2021-02-09 08:45:30</td></tr><tr><td>6</td><td>My second task</td><td>The description of my second task</td><td>TODO</td><td>2021-02-09 08:45:30</td><td>2021-02-09 08:45:30</td></tr></tbody></table></body>
