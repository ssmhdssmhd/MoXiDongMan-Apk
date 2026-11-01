package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* renamed from: com.bumptech.glide.load.engine.while, reason: invalid class name */
/* loaded from: classes.dex */
class Cwhile {

    /* renamed from: do, reason: not valid java name */
    private boolean f9944do;

    /* renamed from: if, reason: not valid java name */
    private final Handler f9945if = new Handler(Looper.getMainLooper(), new Cdo());

    /* renamed from: com.bumptech.glide.load.engine.while$do, reason: invalid class name */
    public static final class Cdo implements Handler.Callback {

        /* renamed from: do, reason: not valid java name */
        public static final int f9946do = 1;

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((Resource) message.obj).recycle();
            return true;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized void m11591do(Resource<?> resource, boolean z) {
        if (this.f9944do || z) {
            this.f9945if.obtainMessage(1, resource).sendToTarget();
        } else {
            this.f9944do = true;
            resource.recycle();
            this.f9944do = false;
        }
    }
}
