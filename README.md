# KarateApiTest

> Repository with examples of automation of api test with Karate DSL.
---

## Table of Contents

> Índice `README`.

- [Prerequisites](#prerequisites)
- [Configuration](#configuration)
---

## Prerequisites

- [JDK install +8](https://www.oracle.com/technetwork/java/javase/downloads/index.html)
- [Intellij ide install](https://www.jetbrains.com/idea/download/#section=mac)
- [Maven install](https://maven.apache.org/install.html)
- Cucumber plugin (in Intellij):
 - Menu: IntelliJ IDEA / Preferences.../ Plugins / Marketplace
    - Search by: Cucumber for Java and Gherkin
    - Proceed with installation them

## Configuration

> environment variables and bash_profile

### Java

- Mac:
`export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home`

- Windows:
https://confluence.atlassian.com/doc/setting-the-java_home-variable-in-windows-8895.html

### Maven
- Mac:
`export PATH=/opt/apache-maven-3.5.3/bin:$PATH`

- Windows:
https://www.mkyong.com/maven/how-to-install-maven-in-windows/

### Clone

- Clone this repo to your local machine using `https://enderecoDoRepositorio`

### Run test

> Http verbs available:

```
GET
POST
PUT
DELETE
```

> Run test by specific verb

```shell
Get:

$ mvn clean -Dtest=ExamplesTestRunner#testGet test
```

```shell
Post:

$ mvn clean -Dtest=ExamplesTestRunner#testPost test
```

```shell
Put:

$ mvn clean -Dtest=ExamplesTestRunner#testPut test
```

```shell
Delete:

$ mvn clean -Dtest=ExamplesTestRunner#testDelete test
```

> Run all tests
```shell
$ mvn clean -Dtest=ExamplesTestRunner#testAll test
```

> Open execution report
- See the output in terminal:
```
---------------------------------------------------------
HTML report: (paste into browser to view) | Karate version: 0.9.4
file:/Users/eloy/Documents/mykarate/target/surefire-reports/examples.posts.get.html
---------------------------------------------------------

```
- Copy the path in "file:" and paste in your browser.

### Run in debug mode

- Put your break points
- Open the terminal window and type command
```shell
$ mvnDebug clean -Dtest=ExamplesTestRunner#FEATURE_NAME_HERE test
```
- In Intellij window, select the runner "ExamplesTestRunner" on dropdown list
- Click in debug icon on right side of play icon
- Wait for stop execution in your first break point



