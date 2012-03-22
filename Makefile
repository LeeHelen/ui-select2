
JS_SRC_DIR = src/
JS_LIB_DIR = lib/

JS_FILES = \
	${JS_SRC_DIR}directives/linky.js\
	${JS_SRC_DIR}directives/scrollfix.js\
	${JS_SRC_DIR}filters/highlight.js\
	${JS_SRC_DIR}module.js

js:
	cat ${JS_FILES} > ${JS_LIB_DIR}angular-ui.js
	uglifyjs -o ${JS_LIB_DIR}angular-ui.min.js --no-mangle --no-squeeze ${JS_LIB_DIR}angular-ui.js

.PHONY: js