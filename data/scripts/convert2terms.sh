for FILENAME in ../nodes_and_edges/*_nodes.tsv; do
	BASENAME=$(basename $FILENAME)
	poetry run python -m ontorunner.pre.util prepare-termlist -i ${FILENAME} -o ../terms/${BASENAME%_nodes.tsv}_terms.tsv
done;
