ZIP = zip -r
RM = rm -f
DIST = ./dist
SRC = ./src
SPECIAL_POWERS = $(DIST)/SpecialPowers.xpi

build: xpi
	@@echo "Building .xpi in dist/"

xpi: $(DIST)
	@@$(RM) $(SPECIAL_POWERS)
	@@cd $(SRC) ; find . -print | zip ../$(SPECIAL_POWERS) -@
