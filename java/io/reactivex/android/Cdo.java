package io.reactivex.android;

import android.os.Looper;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: io.reactivex.android.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo implements Disposable {

    /* renamed from: do, reason: not valid java name */
    private final AtomicBoolean f25257do = new AtomicBoolean();

    /* renamed from: io.reactivex.android.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0265do implements Runnable {
        public RunnableC0265do() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Cdo.this.mo24566do();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m29356if() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException("Expected to be called on the main thread but was " + Thread.currentThread().getName());
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (this.f25257do.compareAndSet(false, true)) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                mo24566do();
            } else {
                io.reactivex.android.schedulers.Cdo.m29358for().mo29697new(new RunnableC0265do());
            }
        }
    }

    /* renamed from: do */
    public abstract void mo24566do();

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f25257do.get();
    }
}
