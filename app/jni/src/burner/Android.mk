BURNER_PATH := $(call my-dir)

BURNER := 	$(subst ,, \
			burner/unzip.c \
			burner/ioapi.c \
			$(wildcard $(BURNER_PATH)/*.cpp) \
			$(wildcard $(BURNER_PATH)/sdl/*.cpp))





