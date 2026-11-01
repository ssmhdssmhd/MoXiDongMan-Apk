package com.efs.sdk.memoryinfo;

import android.content.Context;
import android.text.TextUtils;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.protocol.record.EfsJSONLog;
import com.umeng.analytics.pro.ak;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class e {
    public final List<EfsJSONLog> B = new ArrayList();
    public volatile boolean C;
    private final EfsReporter a;

    public e(final Context context, EfsReporter efsReporter) {
        this.a = efsReporter;
        String uMId = UMUtils.getUMId(context);
        this.C = !TextUtils.isEmpty(uMId);
        if (!this.C) {
            ImprintHandler.getImprintService(context).registImprintCallback(ak.g, new UMImprintChangeCallback() { // from class: com.efs.sdk.memoryinfo.e.1
                @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
                public final void onImprintValueChanged(String str, String str2) {
                    try {
                        if (ak.g.equals(str)) {
                            HashMap map = new HashMap(1);
                            map.put(UMCrash.KEY_HEADER_UMID, str2);
                            e.this.a.addPublicParams(map);
                            synchronized (e.class) {
                                e.b(e.this);
                            }
                            Iterator it = e.this.B.iterator();
                            while (it.hasNext()) {
                                e.this.a((EfsJSONLog) it.next());
                            }
                            new StringBuilder("send cache:").append(e.this.B.size());
                            boolean z = a.DEBUG;
                            e.this.B.clear();
                            ImprintHandler.getImprintService(context).unregistImprintCallback(ak.g, this);
                        }
                    } catch (Throwable th) {
                        f.a("umid ", th);
                    }
                }
            });
            return;
        }
        HashMap map = new HashMap(1);
        map.put(UMCrash.KEY_HEADER_UMID, uMId);
        efsReporter.addPublicParams(map);
    }

    public static /* synthetic */ boolean b(e eVar) {
        eVar.C = true;
        return true;
    }

    public final void a(EfsJSONLog efsJSONLog) {
        try {
            this.a.send(efsJSONLog);
        } catch (Throwable th) {
            f.a("send", th);
        }
    }
}
