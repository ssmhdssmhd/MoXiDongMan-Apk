package com.umeng.analytics.pro;

import android.content.Context;
import android.support.v4.pl0;
import com.umeng.commonsdk.debug.UMLog;

/* loaded from: classes2.dex */
class ai implements z {
    @Override // com.umeng.analytics.pro.z
    public String a(Context context) {
        String strM6109new = null;
        try {
            if (pl0.m6107for()) {
                strM6109new = pl0.m6109new(context);
            } else {
                UMLog.mutlInfo(2, "当前设备不支持获取OAID");
            }
        } catch (Exception unused) {
            UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
        }
        return strM6109new;
    }
}
