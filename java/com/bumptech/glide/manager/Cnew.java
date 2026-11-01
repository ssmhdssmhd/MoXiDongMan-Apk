package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.manager.ConnectivityMonitor;

/* renamed from: com.bumptech.glide.manager.new, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnew implements ConnectivityMonitorFactory {

    /* renamed from: do, reason: not valid java name */
    private static final String f10294do = "ConnectivityMonitor";

    /* renamed from: if, reason: not valid java name */
    private static final String f10295if = "android.permission.ACCESS_NETWORK_STATE";

    @Override // com.bumptech.glide.manager.ConnectivityMonitorFactory
    @NonNull
    public ConnectivityMonitor build(@NonNull Context context, @NonNull ConnectivityMonitor.ConnectivityListener connectivityListener) {
        boolean z = ContextCompat.checkSelfPermission(context, f10295if) == 0;
        Log.isLoggable(f10294do, 3);
        return z ? new Cfor(context, connectivityListener) : new Ccase();
    }
}
