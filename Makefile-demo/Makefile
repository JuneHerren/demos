#Folders
SRCDIR := ./
BUILDDIR := build
TARGETDIR := bin
#target
EXECUTABLE := target
TRAGET := $(TARGETDIR)/$(EXECUTABLE)
#code lists
SRCEXT := cpp
SOURCES := $(shell find $(SRCDIR) -type f -name "*.$(SRCEXT)")
OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.$(SRCEXT)=.o))

$(TRAGET): $(OBJECTS)
	@mkdir -p $(TARGETDIR)
	@clang++ -std=c++11 $^ -g -o $(TRAGET) # $^ to denote all of its dependencies

$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
	@mkdir -p $(BUILDDIR)
	@clang++ -std=c++11  -g -c -o $@ $<   # $@ and $<to denote its target file and its first dependency which is its corresponding .cpp 

clean:
	@rm -rf target $(TARGETDIR) $(BUILDDIR)