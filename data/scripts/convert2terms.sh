for FILENAME in ../nodes_and_edges/*_nodes.tsv; do
	poetry run python -m ontorunner.pre.util prepare-termlist -i ${FILENAME} -o ../terms/${FILENAME}_terms.tsv
done;
