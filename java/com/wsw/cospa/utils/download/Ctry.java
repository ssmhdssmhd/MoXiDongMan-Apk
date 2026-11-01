package com.wsw.cospa.utils.download;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.tf1;
import java.lang.ref.WeakReference;

/* renamed from: com.wsw.cospa.utils.download.try, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Ctry implements ProgressResponseListener {

    /* renamed from: if, reason: not valid java name */
    private static final int f22626if = 2;

    /* renamed from: do, reason: not valid java name */
    private final Handler f22627do = new Cdo(Looper.getMainLooper(), this);

    /* renamed from: com.wsw.cospa.utils.download.try$do, reason: invalid class name */
    public static class Cdo extends Handler {

        /* renamed from: do, reason: not valid java name */
        private final WeakReference<Ctry> f22628do;

        public Cdo(Looper looper, Ctry ctry) {
            super(looper);
            this.f22628do = new WeakReference<>(ctry);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 2) {
                super.handleMessage(message);
                return;
            }
            Ctry ctry = this.f22628do.get();
            if (ctry != null) {
                tf1 tf1Var = (tf1) message.obj;
                ctry.mo25368do(tf1Var.getCurrentBytes(), tf1Var.getContentLength(), tf1Var.isDone());
            }
        }
    }

    /* renamed from: do */
    public abstract void mo25368do(long j, long j2, boolean z);

    @Override // com.wsw.cospa.utils.download.ProgressResponseListener
    public void onResponseProgress(long j, long j2, boolean z) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = new tf1(j, j2, z);
        messageObtain.what = 2;
        this.f22627do.sendMessage(messageObtain);
    }
}
