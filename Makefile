all: validate

install:
	sudo dnf install python3-jsonschema.noarch

validate: json
	jsonschema --instance secret.json secret.schema

json:
	yq e secret.yaml -j -P > secret.json

clean:
	rm -f secret.json
