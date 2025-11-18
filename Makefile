MAKEFILE:=$(word $(words $(MAKEFILE_LIST)), $(MAKEFILE_LIST))

TARGET:=o/practical_cpp.md
TITLE=Practical Knowledge of C++($(VERSION))

#MD_SEC_NUM:=--sec_num

MD_GEN:=./md_gen/export/py

VPATH=./md:deep/md/:essential/md

MDS:=practical_intro.md \
     programming_convention.md coding_style.md naming_practice.md \
     comment.md solid.md design_pattern.md template_meta_programming.md \
     core_lang_spec.md stdlib_and_concepts.md cpp_idioms.md \
     bibliography.md 

INDEX_OPT:=--exclude $(addsuffix :1,$(MDS) sample_code.md)

include essential/make/md.mk
