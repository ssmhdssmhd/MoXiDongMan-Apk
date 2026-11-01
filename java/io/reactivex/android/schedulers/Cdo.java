package io.reactivex.android.schedulers;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.dp1;
import io.reactivex.Ctry;
import java.util.Objects;
import java.util.concurrent.Callable;

/* renamed from: io.reactivex.android.schedulers.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final Ctry f25259do = dp1.m1478case(new CallableC0266do());

    /* renamed from: io.reactivex.android.schedulers.do$do, reason: invalid class name and collision with other inner class name */
    public static class CallableC0266do implements Callable<Ctry> {
        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ctry call() throws Exception {
            return Cif.f25260do;
        }
    }

    /* renamed from: io.reactivex.android.schedulers.do$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final Ctry f25260do = new io.reactivex.android.schedulers.Cif(new Handler(Looper.getMainLooper()), false);

        private Cif() {
        }
    }

    private Cdo() {
        throw new AssertionError("No instances.");
    }

    /* renamed from: do, reason: not valid java name */
    public static Ctry m29357do(Looper looper) {
        return m29359if(looper, false);
    }

    /* renamed from: for, reason: not valid java name */
    public static Ctry m29358for() {
        return dp1.m1480else(f25259do);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: if, reason: not valid java name */
    public static Ctry m29359if(Looper looper, boolean z) {
        Objects.requireNonNull(looper, "looper == null");
        int i = Build.VERSION.SDK_INT;
        if (i < 16) {
            z = false;
        } else if (z && i < 22) {
            Message messageObtain = Message.obtain();
            try {
                messageObtain.setAsynchronous(true);
            } catch (NoSuchMethodError unused) {
                z = false;
            }
            messageObtain.recycle();
        }
        return new io.reactivex.android.schedulers.Cif(new Handler(looper), z);
    }
}
