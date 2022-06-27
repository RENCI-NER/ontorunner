for FILENAME in ../ontologies/*.json; do
	BASENAME=$(basename $FILENAME)
	poetry run python -m ontorunner.pre.util json2tsv -i ${FILENAME} -o ../nodes_and_edges/${BASENAME%.json}
done;
