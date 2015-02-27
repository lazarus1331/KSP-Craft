all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""  Sync back and forth between KSPinstallations
	@echo "   1. make syncto      - will sync the ships and subassemblies into a given save, will prompt for save location if it does not know it"
	@echo "   2. make syncfrom      - will sync the ships and subassemblies from a give save, will prompt for save location if it does not know it"

syncto: savepath continueto rsyncTo

syncfrom: savepath continuefrom rsyncFrom

# will skip over this step if the name file is left from previous run 'make clean' to remove
savepath:
	@while [ -z "$$SAVEPATH" ]; do \
		read -r -p "Enter the path to the save folder you wish to sync with [SAVEPATH]: " SAVEPATH; echo "$$SAVEPATH">>savepath; cat savepath; \
	done ;

continuefrom:
	@echo ""
	@while [ -z "$$CONTINUE" ]; do \
			read -r -p "I am  about synchronize from the localsave path [`cat savepath`] Type anything but Y or y to exit. [y/N]: " CONTINUE; \
	done ; \
	[ $$CONTINUE = "y" ] || [ $$CONTINUE = "Y" ] || (echo "Exiting."; exit 1;)
	@echo "..building image and uploading keys.."

continueto:
	@echo ""
	@while [ -z "$$CONTINUE" ]; do \
			read -r -p "I am  about synchronize to the localsave path [`cat savepath`] Type anything but Y or y to exit. [y/N]: " CONTINUE; \
	done ; \
	[ $$CONTINUE = "y" ] || [ $$CONTINUE = "Y" ] || (echo "Exiting."; exit 1;)
	@echo "..building image and uploading keys.."

rsyncTo:
	rsync -av Ships $(shell cat savepath)/
	rsync -av Subassemblies $(shell cat savepath)/

rsyncFrom:
	rsync -av $(shell cat savepath)/Ships ./
	rsync -av $(shell cat savepath)/Subassemblies ./
