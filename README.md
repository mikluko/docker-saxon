# Saxon HE as a docker image

## Usage

Assuming there is `input.xml` and `tranform.xsl` in the current directory, following command will
produce resulting `output.xml`:

```bash
docker run --rm -v ${PWD}:/mnt mikluko/saxon-he:latest transform input.xml transform.xsl > output.xml  
```
## Building new release

* Update pom.xml with new version
* Update CHANGELOG.md
* Run `mvn clean package`
* Run `mvn docker:push`

## TODO:

* Automate release process with Github Actions
* Add support for Saxon PE and EE
