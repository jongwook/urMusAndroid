/*
 *  config.h
 *  urMus
 *
 *  Created by Jong Wook Kim on 5/26/10.\
 *
 */

#ifndef __CONFIG_H__
#define __CONFIG_H__

#if defined( __WIN32__ ) || defined( _WIN32 )
	#define TARGET_WIN32
#elif defined( __APPLE_CC__)
	#include <TargetConditionals.h>

	#if (TARGET_OF_IPHONE_SIMULATOR) || (TARGET_OS_IPHONE) || (TARGET_IPHONE)
		#define TARGET_OF_IPHONE
		#define TARGET_OPENGLES
	#else
		#define TARGET_OSX
	#endif
#else
	#ifdef ANDROID
		#define TARGET_ANDROID
		#define SO_NOSIGPIPE 0
		#include <stdio.h>
	#else
		#define TARGET_LINUX
	#endif
#endif

//-------------------------------


// then the the platform specific includes:
#ifdef TARGET_WIN32
//this is for TryEnterCriticalSection
//http://www.zeroc.com/forums/help-center/351-ice-1-2-tryentercriticalsection-problem.html
#ifndef _WIN32_WINNT
#   define _WIN32_WINNT 0x400
#endif
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <gl/gl.h>
#include <gl/glu.h>
#if (_MSC_VER)       // microsoft visual studio
#pragma warning(disable : 4996)     // disable all deprecation warnings
#pragma warning(disable : 4068)     // unknown pragmas
#pragma warning(disable : 4101)     // unreferenced local variable
#pragma	warning(disable : 4312)		// type cast conversion (in qt vp)
#pragma warning(disable : 4311)		// type cast pointer truncation (qt vp)
#pragma warning(disable : 4018)		// signed/unsigned mismatch (since vector.size() is a size_t)
#pragma warning(disable : 4267)		// conversion from size_t to Size warning... possible loss of data
#pragma warning(disable : 4800)		// 'Boolean' : forcing value to bool 'true' or 'false'
#pragma warning(disable : 4099)		// for debug, PDB 'vc80.pdb' was not found with...
#endif

#define TARGET_LITTLE_ENDIAN			// intel cpu

// some gl.h files, like dev-c++, are old - this is pretty universal
#ifndef GL_BGR_EXT
#define GL_BGR_EXT 0x80E0
#endif
#endif

#ifdef TARGET_OSX
#ifndef __MACOSX_CORE__
#define __MACOSX_CORE__
#endif
#include <unistd.h>
#include "GLee.h"
#include <OpenGL/glu.h>
#include <ApplicationServices/ApplicationServices.h>

#if defined(__LITTLE_ENDIAN__)
#define TARGET_LITTLE_ENDIAN		// intel cpu
#endif
#endif

#ifdef TARGET_ANDROID
#include <GLES/gl.h>
#include <GLES/glext.h>
#define GL_BGRA 0x80E1
#endif

#ifdef TARGET_LINUX
#include <unistd.h>
#include "GLee.h"
#include <GL/glu.h>
#define TARGET_LITTLE_ENDIAN		// intel cpu
#define B14400	14400
#define B28800	28800
#endif


#ifdef TARGET_OF_IPHONE
#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>
#endif

#endif
