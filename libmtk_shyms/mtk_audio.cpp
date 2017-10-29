#define LOG_TAG "HW_AUDIO_SHIM"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <pthread.h>
#include <utils/Log.h>
#include <hardware/power.h>
#include <hardware/hardware.h>

extern "C" {
    void _ZN7android13AwesomePlayer24mtk_omx_get_current_timeEPx(long long* time){
        time = (long long*)-1;
    }
	
    bool _ZN7android11AudioSystem24getVoiceUnlockDLInstanceEv(){
        return 0;
    }
    
    void _ZN7android12AudioPCMxWay4stopEv(){
	    
    }
	
    int _ZN7android11AudioSystem23GetVoiceUnlockDLLatencyEv(){
        return 0;
    }
 
    int _ZN7android11AudioSystem17SetVoiceUnlockSRCEjj(uint32_t, uint32_t){
        return 0;
    }

    bool _ZN7android11AudioSystem18startVoiceUnlockDLEv(){
        return 0;
    }
 
    int _ZN7android11AudioSystem15ReadRefFromRingEPvjS1_(void*, uint32_t, void*){
        return 0;
    }
    
    int _ZN7android11AudioSystem20GetVoiceUnlockULTimeEPv(void*) {
        return 0;
    }

    void _ZN7android11AudioSystem25freeVoiceUnlockDLInstanceEv() { }

    bool _ZN7android11AudioSystem17stopVoiceUnlockDLEv(){
        return 0;
    }
}
