BUILD_DIR = build

# list of repos-branches - each repo corresponds to a branch
REPOS = $(BUILD_DIR)/src \
	$(BUILD_DIR)/pages
BRANCHES = master \
	gh-pages
# for faking named arrays
LEN = $(words $(REPOS))

SRC_DIR = $(word 1, $(REPOS))
DIST_DIR = $(word 2, $(REPOS))

BASE_FILES = $(SRC_DIR)/jquery.xdomainajax.js \
	$(SRC_DIR)/Util.js \
	$(SRC_DIR)/Signals.js \
	$(SRC_DIR)/Object.js \
	$(SRC_DIR)/Ripper.js \
	$(SRC_DIR)/TimeTable.js \
	$(SRC_DIR)/Set.js \
	$(SRC_DIR)/Main.js \
	$(SRC_DIR)/Dragger.js \

SRC_FILES = $(BASE_FILES)

DIST_FILE = $(BUILD_DIR)/index.html

all: $(DIST_FILE)

init:
	@echo -n ""; \
	# copy Makefile variables into shell, and put them into a list \
	REPOS=( $(REPOS) ); \
	BRANCHES=( $(BRANCHES) ); \
	for (( i = 0; i < $${#REPOS[*]}; i++ )); do \
		repo=$${REPOS[$$i]}; \
		branch=$${BRANCHES[$$i]}; \
		test -d $$repo || ( \
			echo "Setting up $$repo with $$branch..."; \
			git clone -s -b $$branch . $$repo > /dev/null \
				|| exit $$?; \
		) && ( \
			echo "Updating $$repo/$$branch"; \
			cd $$repo && \
			git pull > /dev/null \
				|| exit $$?; \
		); \
	done

$(SRC_FILES): init

$(DIST_DIR):
	@mkdir -p $(DIST_DIR)

$(DIST_FILE): $(DIST_DIR) $(SRC_FILES)
	@echo "Building $(DIST_FILE)"; \
	( \
		cd $(SRC_DIR); \
		showoff static $(DIST_DIR); \
	);

	@echo -n ""; \
	FILE=$(subst $(DIST_DIR)/,,$(DIST_FILE)); \
	( \
		cd $(DIST_DIR); \
		if [ $$(git ls-files -m | grep -F $$FILE > /dev/null) ]; then \
		  git add $$FILE \
		  && git commit -m "update static presentation" -q \
		  && git push -q \
			  || exit $$?; \
		else \
			echo "nothing changed"; \
		fi; \
	);
