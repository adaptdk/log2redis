; make file
core = 7.x
api = 2

; Include redis module
projects[redis][version] = 3.7
projects[redis][subdir] = contrib

; Include predis library
libraries[predis][download][type] = git
libraries[predis][download][url] = 'https://github.com/nrk/predis.git'
libraries[predis][download][tag] = 'v1.0.1'
libraries[predis][destination] = libraries
libraries[predis][directory_name] = predis
