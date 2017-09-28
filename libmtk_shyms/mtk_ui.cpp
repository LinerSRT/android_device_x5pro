#define LOG_TAG "HW_UI_SHIM"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <pthread.h>
#include <ui/GraphicBufferMapper.h>
#include <ui/PixelFormat.h>
//#include <ui/Rect.h>
#include <log/log.h>
#include <dlfcn.h>

extern "C" {
//Export Graphic Symbols be SeriniTY
void _ZN7android11BufferQueue17createBufferQueueEPNS_2spINS_22IGraphicBufferProducerEEEPNS1_INS_22IGraphicBufferConsumerEEERKNS1_INS_19IGraphicBufferAllocEEE () {

}

void _ZN7android13GraphicBufferC1Ejjij(void *instance, uint32_t inWidth, uint32_t inHeight, android::PixelFormat inFormat, uint32_t inUsage) {

    static void (*func)(void *instance, uint32_t, uint32_t, android::PixelFormat, uint32_t, std::string) = NULL;
	static void (*func2)(void *instance) = NULL;

	func  = (void (*)(void *instance, uint32_t, uint32_t, android::PixelFormat, uint32_t, std::string))dlsym(RTLD_NEXT, "_ZN7android13GraphicBufferC1EjjijNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE");	
	func2 = (void (*)(void *instance))dlsym(RTLD_NEXT, "_ZN7android13GraphicBufferC1Ev");	

    }
}