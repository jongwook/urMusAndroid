
#include <string.h>
#include <jni.h>

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus *

#include "lua/lua.h"
#include "lua/lualib.h"
#include "lua/lauxlib.h"

#ifdef __cplusplus
}
#endif /* __cplusplus */

/* This is a trivial JNI example where we use a native method
 * to return a new VM String. See the corresponding Java source
 * file located at:
 *
 *   apps/samples/hello-jni/project/src/com/example/HelloJni/HelloJni.java
 */
jstring
Java_edu_umich_urMus_urMus_testString( JNIEnv* env,
                                                  jobject thiz )
{
    return (*env)->NewStringUTF(env, "Hello from urMus JNI !");
}


