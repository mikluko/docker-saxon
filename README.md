# Saxon HE as a docker image

## Usage

Assuming there is `input.xml` and `tranform.xsl` in the current directory, following command will
produce resulting `output.xml`:

```bash
docker run --rm -v ${PWD}:/mnt mikluko/saxon-he:latest transform input.xml transform.xsl > output.xml  
```

## Building new release

```bash
git tag -a 0.1.0 -m "Release 0.1.0"
docker build -t mikluko/saxon-he:0.1.0 --build-arg VERSION=0.1.0 .
docker tag mikluko/saxon-he:0.1.0 mikluko/saxon-he:latest
docker push mikluko/saxon-he:0.1.0; docker push mikluko/saxon-he:latest
```

## TODO:

* Automate release process with Github Actions
* Add support for Saxon PE and EE
