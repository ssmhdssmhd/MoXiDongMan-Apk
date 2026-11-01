package com.wsw.cospa.utils.download;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.tf1;
import java.lang.ref.WeakReference;

/* renamed from: com.wsw.cospa.utils.download.new, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cnew implements ProgressRequestListener {

    /* renamed from: if, reason: not valid java name */
    private static final int f22623if = 1;

    /* renamed from: do, reason: not valid java name */
    private final Handler f22624do = new Cdo(Looper.getMainLooper(), this);

    /* renamed from: com.wsw.cospa.utils.download.new$do, reason: invalid class name */
    public static class Cdo extends Handler {

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<Cnew> f22625do;

        public Cdo(Looper looper, Cnew cnew) {
            super(looper);
            this.f22625do = new WeakReference<>(cnew);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
                return;
            }
            Cnew cnew = this.f22625do.get();
            if (cnew != null) {
                tf1 tf1Var = (tf1) message.obj;
                cnew.m26862do(tf1Var.getCurrentBytes(), tf1Var.getContentLength(), tf1Var.isDone());
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void m26862do(long j, long j2, boolean z);

    @Override // com.wsw.cospa.utils.download.ProgressRequestListener
    public void onRequestProgress(long j, long j2, boolean z) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = new tf1(j, j2, z);
        messageObtain.what = 1;
        this.f22624do.sendMessage(messageObtain);
    }
}
