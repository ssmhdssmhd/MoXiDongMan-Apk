package com.efs.sdk.base.core.b;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.efs.sdk.base.core.b.a;
import com.efs.sdk.base.core.controller.ControllerCenter;
import java.io.File;
import org.apache.commons.lang3.time.Cdo;

/* loaded from: classes.dex */
public final class c extends Handler implements Runnable {
    public boolean a;

    public static class a {
        private static final c a = new c(0);
    }

    public /* synthetic */ c(byte b) {
        this();
    }

    public static c a() {
        return a.a;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what == 2) {
            com.efs.sdk.base.core.util.a.d.a(this);
            return;
        }
        com.efs.sdk.base.core.util.d.a("efs.cache", "disk listener not support command: " + message.what, null);
    }

    @Override // java.lang.Runnable
    public final void run() throws NumberFormatException {
        com.efs.sdk.base.core.b.a unused = a.b.a;
        File fileF = com.efs.sdk.base.core.util.a.f(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid());
        if (fileF.exists()) {
            for (File file : com.efs.sdk.base.core.util.b.d(fileF)) {
                if (com.efs.sdk.base.core.b.a.a(file.getName())) {
                    com.efs.sdk.base.core.b.a.c(file);
                }
            }
        }
        com.efs.sdk.base.core.config.a.c cVarA = com.efs.sdk.base.core.config.a.c.a();
        String str = cVarA.d.e.containsKey("disk_bytes") ? cVarA.d.e.get("disk_bytes") : "4194304";
        long j = Long.parseLong(TextUtils.isEmpty(str) ? "4194304" : str);
        long jC = com.efs.sdk.base.core.util.b.c(com.efs.sdk.base.core.util.a.f(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid())) + com.efs.sdk.base.core.util.b.c(com.efs.sdk.base.core.util.a.d(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid()));
        boolean z = jC < j;
        this.a = z;
        if (!z) {
            com.efs.sdk.base.core.util.d.a("efs.cache", "Cache Limited! curr " + jC + "byte, max " + j + " byte.", null);
        }
        sendEmptyMessageDelayed(2, 600000L);
    }

    private c() {
        super(com.efs.sdk.base.core.util.a.a.a.getLooper());
        this.a = true;
        sendEmptyMessageDelayed(2, Cdo.f28827if);
    }
}
