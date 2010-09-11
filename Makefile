BUILD_DIR = build

SHOWOFF = showoff
SHOULD_COMMIT = YesPlease

# list of repos-branches - each repo corresponds to a branch
REPOS = $(BUILD_DIR)/src \
	$(BUILD_DIR)/pages
BRANCHES = master \
	gh-pages
# for faking named arrays
LEN = $(words $(REPOS))

SRC_DIR = $(word 1, $(REPOS))
DIST_DIR = $(word 2, $(REPOS))

INTRO_FILES = $(SRC_DIR)/intro/01_title.md \
	$(SRC_DIR)/intro/03_rationale.md \
	$(SRC_DIR)intro/04_install_check.md \
	$(SRC_DIR)intro/Mercurial_logo.png \
	$(SRC_DIR)intro/msys_icon.jpg \
	$(SRC_DIR)intro/tortoise_hg_logo.png

BASICS_FILES = $(SRC_DIR)/basics/01_basics.md \
	$(SRC_DIR)/basics/02_config.md \
	$(SRC_DIR)/basics/03_repo.md \
	$(SRC_DIR)/basics/04_add.md \
	$(SRC_DIR)/basics/05_commit.md \
	$(SRC_DIR)/basics/06_summary.md

STATIC_FILES = $(SRC_DIR)/styles.css \
	$(SRC_DIR)/repo.css

SRC_FILES = $(SRC_DIR)/showoff.json \
	$(INTRO_FILES) $(BASIC_FILES) $(STATIC_FILES)

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

$(DIST_DIR): init

$(DIST_FILE): $(DIST_DIR) $(SRC_FILES)
	@echo "Building $(DIST_FILE)"; \
	( \
		rm -r $(DIST_DIR)/* && \
		cd $(SRC_DIR) && \
		$(SHOWOFF) static > /dev/null; \
	)	&& ( \
		mv $(SRC_DIR)/static/* $(DIST_DIR) \
		&& for file in $(STATIC_FILES); do\
			cp $$file $(DIST_DIR)/; \
		done; \
	);

	@echo -n ""; \
	( \
		cd $(DIST_DIR); \
		! git diff > /dev/null && (\
			test "$(SHOULD_COMMIT)" == YesPlease \
			&& git commit -am "update static presentation" -q \
		  && git push -q \
			  || exit $$?; \
		) || ( \
			echo "nothing changed"; \
		); \
	);
