all: exc1 exc2 exc3

exc1:
	mzc --exe exc1 exc1.scm &

exc2:
	mzc --exe exc2 exc2.scm &

exc3:
	mzc --exe exc3 exc3.scm &

clean:
	find -regex ".*exc." -delete
	rm -rf compiled