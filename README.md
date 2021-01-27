# WEB JPA CDI EJB Archetype


> #### Prepare the project structure. Define default folders and files.
> ```bash
> .
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
>sudo mvn clean install
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
>sudo mvn archetype:generate \\
>-DarchetypeGroupId=com.kirilo \\
>-DarchetypeArtifactId=web-ejb \\
>-DarchetypeVersion=1.0.1 \\
>-DgroupId=com.kirilo.webejb \\
>-DartifactId=web-ejb \\
>-Dversion=1.0-SNAPSHOT \\
>-DinteractiveMode=false -X 
>```

> #### The project template is created and will be look like as follows:
>```bash
> .
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
> .
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
> └── web-ejb-1.0-SNAPSHOT.war
>```

>##### The following files will be attached to the war archive:
> ```bash
> .
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

