all: validate

install:
	sudo dnf install python3-jsonschema.noarch

validate: json
	jsonschema --instance secret.json secret.schema

json:
	yq e secret.yaml -ojson -P > secret.json
