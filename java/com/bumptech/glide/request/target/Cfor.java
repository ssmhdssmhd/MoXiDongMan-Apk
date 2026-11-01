package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.ht;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Cgoto;
import com.bumptech.glide.request.transition.Transition;

/* renamed from: com.bumptech.glide.request.target.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor<Z> extends ht<Z> {

    /* renamed from: case, reason: not valid java name */
    private static final Handler f10413case = new Handler(Looper.getMainLooper(), new Cdo());

    /* renamed from: try, reason: not valid java name */
    private static final int f10414try = 1;

    /* renamed from: new, reason: not valid java name */
    private final Cgoto f10415new;

    /* renamed from: com.bumptech.glide.request.target.for$do, reason: invalid class name */
    public class Cdo implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((Cfor) message.obj).m12002do();
            return true;
        }
    }

    private Cfor(Cgoto cgoto, int i, int i2) {
        super(i, i2);
        this.f10415new = cgoto;
    }

    /* renamed from: if, reason: not valid java name */
    public static <Z> Cfor<Z> m12001if(Cgoto cgoto, int i, int i2) {
        return new Cfor<>(cgoto, i, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public void m12002do() {
        this.f10415new.m11225this(this);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onResourceReady(@NonNull Z z, @Nullable Transition<? super Z> transition) {
        f10413case.obtainMessage(1, this).sendToTarget();
    }
}
