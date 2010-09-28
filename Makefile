all: exc1 exc2 exc3 exc4 exc5

exc1:
	mzc --exe exc1 exc1.scm

exc2:
	mzc --exe exc2 exc2.scm

exc3:
	mzc --exe exc3 exc3.scm

exc4:
	mzc --exe exc4 exc4.scm

exc5:
	mzc --exe exc5 exc5.scm

clean:
	find -regex ".*exc." -delete
	rm -rf compiled
