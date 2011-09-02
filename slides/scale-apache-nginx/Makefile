# Compile landslide slides and note
CWD=`pwd`

all:
	landslide -t tango -r -d scale-apache-nginx-slides.html . >/dev/null
	sed -i -e "s/\/.[^\"]*themes\//themes\//g" scale-apache-nginx-slides.html
	${CWD}/gen-note.sh 0apache_scale.markdown apache_scale.html
	${CWD}/gen-note.sh 1scalable_architectures.markdown scalable_architectures.html

