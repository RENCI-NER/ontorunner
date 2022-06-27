for FILENAME in ../ontologies/*.json; do
	poetry run python -m ontorunner.pre.util json2tsv -i ${FILENAME} -o ${FILENAME%.tsv}
done;
