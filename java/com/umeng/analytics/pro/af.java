package com.umeng.analytics.pro;

import android.content.Context;
import android.support.v4.s71;
import com.umeng.commonsdk.debug.UMLog;

/* loaded from: classes2.dex */
public class af implements z {
    private boolean a = false;

    @Override // com.umeng.analytics.pro.z
    public String a(Context context) {
        try {
            if (!this.a) {
                s71.m7285do(context);
                this.a = true;
            }
            if (s71.m7287if()) {
                return s71.m7288new(context);
            }
            UMLog.mutlInfo(2, "当前设备不支持获取OAID");
            return null;
        } catch (Exception unused) {
            UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
            return null;
        }
    }
}
