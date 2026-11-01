package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v4.cf1;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.manager.ConnectivityMonitor;

/* renamed from: com.bumptech.glide.manager.for, reason: invalid class name */
/* loaded from: classes.dex */
final class Cfor implements ConnectivityMonitor {

    /* renamed from: case, reason: not valid java name */
    private static final String f10287case = "ConnectivityMonitor";

    /* renamed from: do, reason: not valid java name */
    private final Context f10288do;

    /* renamed from: for, reason: not valid java name */
    public boolean f10289for;

    /* renamed from: if, reason: not valid java name */
    public final ConnectivityMonitor.ConnectivityListener f10290if;

    /* renamed from: new, reason: not valid java name */
    private boolean f10291new;

    /* renamed from: try, reason: not valid java name */
    private final BroadcastReceiver f10292try = new Cdo();

    /* renamed from: com.bumptech.glide.manager.for$do, reason: invalid class name */
    public class Cdo extends BroadcastReceiver {
        public Cdo() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, Intent intent) {
            Cfor cfor = Cfor.this;
            boolean z = cfor.f10289for;
            cfor.f10289for = cfor.m11900do(context);
            if (z != Cfor.this.f10289for) {
                if (Log.isLoggable(Cfor.f10287case, 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("connectivity changed, isConnected: ");
                    sb.append(Cfor.this.f10289for);
                }
                Cfor cfor2 = Cfor.this;
                cfor2.f10290if.onConnectivityChanged(cfor2.f10289for);
            }
        }
    }

    public Cfor(@NonNull Context context, @NonNull ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.f10288do = context.getApplicationContext();
        this.f10290if = connectivityListener;
    }

    /* renamed from: for, reason: not valid java name */
    private void m11898for() {
        if (this.f10291new) {
            this.f10288do.unregisterReceiver(this.f10292try);
            this.f10291new = false;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m11899if() {
        if (this.f10291new) {
            return;
        }
        this.f10289for = m11900do(this.f10288do);
        try {
            this.f10288do.registerReceiver(this.f10292try, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f10291new = true;
        } catch (SecurityException unused) {
            Log.isLoggable(f10287case, 5);
        }
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: do, reason: not valid java name */
    public boolean m11900do(@NonNull Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) cf1.m900new((ConnectivityManager) context.getSystemService("connectivity"))).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException unused) {
            Log.isLoggable(f10287case, 5);
            return true;
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
        m11899if();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
        m11898for();
    }
}
