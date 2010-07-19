# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := urMus
LOCAL_SRC_FILES := urMus.c	\
	lua/lapi.c \
	lua/lauxlib.c \
	lua/lbaselib.c \
	lua/lcode.c \
	lua/ldblib.c \
	lua/ldebug.c \
	lua/ldo.c \
	lua/ldump.c \
	lua/lfs.c \
	lua/lfunc.c \
	lua/lgc.c \
	lua/linit.c \
	lua/liolib.c \
	lua/llex.c \
	lua/lmathlib.c \
	lua/lmem.c \
	lua/loadlib.c \
	lua/lobject.c \
	lua/lopcodes.c \
	lua/loslib.c \
	lua/lparser.c \
	lua/lstate.c \
	lua/lstring.c \
	lua/lstrlib.c \
	lua/ltable.c \
	lua/ltablib.c \
	lua/ltm.c \
	lua/lundump.c \
	lua/lvm.c \
	lua/lzio.c 

include $(BUILD_SHARED_LIBRARY)
