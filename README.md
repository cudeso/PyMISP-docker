# PyMISP-docker
Docker images for PyMISP https://github.com/MISP/PyMISP

Use: run the scrips in the examples directory without the need of installing PyMISP

## keys.py
You need to supply a keys.py to PyMISP. You can do this by mounting the a local keys.py in the container.

## python3
Run the scripts in the example directory by calling them with python3

# Tags

**cudeso** : my own repository, for example when I create an image when there's a PR pending
**misp** : a container build on the official MISP repository

# Example

```
docker run --rm --mount type=bind,source="$(pwd)"/config/keys.py,target=/PyMISP/examples/keys.py pymisp python3 /PyMISP/examples/stats_report.py -t 30d
```

