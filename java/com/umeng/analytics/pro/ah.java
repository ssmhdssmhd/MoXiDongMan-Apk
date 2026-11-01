package com.umeng.analytics.pro;

import android.content.Context;
import android.support.v4.ol0;
import com.umeng.commonsdk.debug.UMLog;

/* loaded from: classes2.dex */
public class ah implements z {
    @Override // com.umeng.analytics.pro.z
    public String a(Context context) {
        String strM5706for = null;
        try {
            if (ol0.m5707if(context)) {
                strM5706for = ol0.m5706for(context);
            } else {
                UMLog.mutlInfo(2, "当前设备不支持获取OAID");
            }
        } catch (Exception unused) {
            UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
        }
        return strM5706for;
    }
}
