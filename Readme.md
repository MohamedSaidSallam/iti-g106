# Body Mass Index Calculator

This is a Web application to calculate you body mass index built with Spring Boot

## Git Flow Commands Used

```bash
git flow init

git flow feature start update-name

git commit -am "feat: update name"
git commit -am "docs: readme git flow commands"

git flow feature publish update-name

git flow feature finish update-name

git push

git flow release start 1.0.1

git flow release publish 1.0.1

git flow release finish '1.0.1'
git push origin --tags
```

## Prerequisites

* JDK 8+
* Apache Maven 3.5+

## Deployment

```bash
docker build -t iti-g106 .
docker run -d -p 8000:8000 iti-g106
```
