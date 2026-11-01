package org.chromium.base.compat;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Notification;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.os.Process;
import android.security.NetworkSecurityPolicy;
import android.support.v4.le2;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RemoteViews;

@le2
@TargetApi(24)
/* renamed from: org.chromium.base.compat.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {
    private Cdo() {
    }

    /* renamed from: break, reason: not valid java name */
    public static void m37018break(Activity activity, boolean z, ComponentName componentName) throws PackageManager.NameNotFoundException {
        activity.setVrModeEnabled(z, componentName);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m37019case(MediaCodec.CryptoInfo cryptoInfo, int i, int i2) {
        cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(i, i2));
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m37020catch(WebViewClient webViewClient, WebView webView, WebResourceRequest webResourceRequest) {
        return webViewClient.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m37021class(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object obj, int i) {
        return view.startDragAndDrop(clipData, dragShadowBuilder, obj, i);
    }

    /* renamed from: do, reason: not valid java name */
    public static PointerIcon m37022do(Bitmap bitmap, float f, float f2) {
        return PointerIcon.create(bitmap, f, f2);
    }

    /* renamed from: else, reason: not valid java name */
    public static Notification.Builder m37023else(Notification.Builder builder, RemoteViews remoteViews) {
        return builder.setCustomBigContentView(remoteViews);
    }

    /* renamed from: for, reason: not valid java name */
    public static long m37024for() {
        return Process.getStartUptimeMillis();
    }

    /* renamed from: goto, reason: not valid java name */
    public static Notification.Builder m37025goto(Notification.Builder builder, RemoteViews remoteViews) {
        return builder.setCustomContentView(remoteViews);
    }

    /* renamed from: if, reason: not valid java name */
    public static JobInfo m37026if(JobScheduler jobScheduler, int i) {
        return jobScheduler.getPendingJob(i);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m37027new(String str) {
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m37028this(View view, PointerIcon pointerIcon) {
        view.setPointerIcon(pointerIcon);
    }

    /* renamed from: try, reason: not valid java name */
    public static PointerIcon m37029try(View view, MotionEvent motionEvent, int i) {
        return view.onResolvePointerIcon(motionEvent, i);
    }
}
