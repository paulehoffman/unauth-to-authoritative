all: draft-ietf-dprive-unauth-to-authoritative.txt

.PRECIOUS: %.xml

%.txt: %.xml
	xml2rfc $<

%.xml: %.mkd
	kramdown-rfc2629 $< >$@.new
	mv $@.new $@
