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

LOCAL_SRC_FILES := urMus.c \
	mongoose.c \
	httpServer.c \
	urImage.cpp \
	urTexture.cpp \
	urFont.cpp \

LOCAL_LDLIBS	:= -llog -ldl -lGLESv1_CM

# Lua files
LOCAL_SRC_FILES += \
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
	
LOCAL_CFLAGS += -Ilua/
	
# libpng files
LOCAL_SRC_FILES += \
	libpng/png.c \
	libpng/pngerror.c \
	libpng/pngget.c \
	libpng/pngmem.c \
	libpng/pngpread.c \
	libpng/pngread.c \
	libpng/pngrio.c \
	libpng/pngrtran.c \
	libpng/pngrutil.c \
	libpng/pngset.c \
	libpng/pngtrans.c \
	libpng/pngwio.c \
	libpng/pngwrite.c \
	libpng/pngwtran.c \
	libpng/pngwutil.c 
	
LOCAL_CFLAGS += -Ilibpng/
	
# zlib files
LOCAL_SRC_FILES += \
	zlib/adler32.c \
	zlib/compress.c \
	zlib/crc32.c \
	zlib/deflate.c \
	zlib/gzclose.c \
	zlib/gzlib.c \
	zlib/gzread.c \
	zlib/gzwrite.c \
	zlib/infback.c \
	zlib/inffast.c \
	zlib/inflate.c \
	zlib/inftrees.c \
	zlib/trees.c \
	zlib/uncompr.c \
	zlib/zutil.c 
	
# Freetype files
LOCAL_SRC_FILES += \
	Freetype/autofit/autofit.c \
	Freetype/base/ftbase.c \
	Freetype/bdf/bdf.c \
	Freetype/cache/ftcache.c \
	Freetype/cff/cff.c \
	Freetype/cid/type1cid.c \
	Freetype/gxvalid/gxvalid.c \
	Freetype/gzip/ftgzip.c \
	Freetype/lzw/ftlzw.c \
	Freetype/otvalid/otvalid.c \
	Freetype/pcf/pcf.c \
	Freetype/pfr/pfr.c \
	Freetype/psaux/psaux.c \
	Freetype/pshinter/pshinter.c \
	Freetype/psnames/psnames.c \
	Freetype/raster/raster.c \
	Freetype/sfnt/sfnt.c \
	Freetype/smooth/smooth.c \
	Freetype/truetype/truetype.c \
	Freetype/type1/type1.c \
	Freetype/type42/type42.c \
	Freetype/winfonts/winfnt.c
	
LOCAL_CFLAGS += -IFreetype/include/


# STK files

LOCAL_SRC_FILES += \
	stk/src/ADSR.cpp \
	stk/src/Asymp.cpp \
	stk/src/BandedWG.cpp \
	stk/src/BeeThree.cpp \
	stk/src/BiQuad.cpp \
	stk/src/Blit.cpp \
	stk/src/BlitSaw.cpp \
	stk/src/BlitSquare.cpp \
	stk/src/BlowBotl.cpp \
	stk/src/BlowHole.cpp \
	stk/src/Bowed.cpp \
	stk/src/Brass.cpp \
	stk/src/Chorus.cpp \
	stk/src/Clarinet.cpp \
	stk/src/Delay.cpp \
	stk/src/DelayA.cpp \
	stk/src/DelayL.cpp \
	stk/src/Drummer.cpp \
	stk/src/Echo.cpp \
	stk/src/Envelope.cpp \
	stk/src/FileLoop.cpp \
	stk/src/FileRead.cpp \
	stk/src/FileWrite.cpp \
	stk/src/FileWvIn.cpp \
	stk/src/FileWvOut.cpp \
	stk/src/Fir.cpp \
	stk/src/Flute.cpp \
	stk/src/FM.cpp \
	stk/src/FMVoices.cpp \
	stk/src/FormSwep.cpp \
	stk/src/Granulate.cpp \
	stk/src/HevyMetl.cpp \
	stk/src/Iir.cpp \
	stk/src/JCRev.cpp \
	stk/src/Mandolin.cpp \
	stk/src/Mesh2D.cpp \
	stk/src/Modal.cpp \
	stk/src/ModalBar.cpp \
	stk/src/Modulate.cpp \
	stk/src/Moog.cpp \
	stk/src/Noise.cpp \
	stk/src/NRev.cpp \
	stk/src/OnePole.cpp \
	stk/src/OneZero.cpp \
	stk/src/PercFlut.cpp \
	stk/src/Phonemes.cpp \
	stk/src/PitShift.cpp \
	stk/src/Plucked.cpp \
	stk/src/PluckTwo.cpp \
	stk/src/PoleZero.cpp \
	stk/src/PRCRev.cpp \
	stk/src/Resonate.cpp \
	stk/src/Rhodey.cpp \
	stk/src/Sampler.cpp \
	stk/src/Saxofony.cpp \
	stk/src/Shakers.cpp \
	stk/src/Simple.cpp \
	stk/src/SineWave.cpp \
	stk/src/SingWave.cpp \
	stk/src/Sitar.cpp \
	stk/src/Sphere.cpp \
	stk/src/StifKarp.cpp \
	stk/src/Stk.cpp \
	stk/src/TapDelay.cpp \
	stk/src/TubeBell.cpp \
	stk/src/TwoPole.cpp \
	stk/src/TwoZero.cpp \
	stk/src/Voicer.cpp \
	stk/src/VoicForm.cpp \
	stk/src/Whistle.cpp \
	stk/src/Wurley.cpp

LOCAL_CFLAGS += -Istk/include/

# STLport files

LOCAL_SRC_FILES += \
	STLport/src/allocators.cpp \
	STLport/src/bitset.cpp \
	STLport/src/c_locale.c \
	STLport/src/codecvt.cpp \
	STLport/src/collate.cpp \
	STLport/src/complex.cpp \
	STLport/src/complex_io.cpp \
	STLport/src/complex_trig.cpp \
	STLport/src/ctype.cpp \
	STLport/src/cxa.c \
	STLport/src/dll_main.cpp \
	STLport/src/facets_byname.cpp \
	STLport/src/fstream.cpp \
	STLport/src/ios.cpp \
	STLport/src/iostream.cpp \
	STLport/src/istream.cpp \
	STLport/src/locale_catalog.cpp \
	STLport/src/locale_impl.cpp \
	STLport/src/messages.cpp \
	STLport/src/monetary.cpp \
	STLport/src/num_get.cpp \
	STLport/src/num_get_float.cpp \
	STLport/src/num_put.cpp \
	STLport/src/num_put_float.cpp \
	STLport/src/numpunct.cpp \
	STLport/src/ostream.cpp \
	STLport/src/sstream.cpp \
	STLport/src/stdio_streambuf.cpp \
	STLport/src/string.cpp \
	STLport/src/strstream.cpp \
	STLport/src/time_facets.cpp 

LOCAL_CFLAGS += -ISTLport/stlport/ \
	-DANDROID \
	-DOS_ANDROID \
	-D__LITTLE_ENDIAN__ 

# end of source file lists

include $(BUILD_SHARED_LIBRARY)
