package io.reactivex.internal.schedulers;

import android.support.v4.b41;
import io.reactivex.Ctry;
import io.reactivex.disposables.Cif;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;

/* renamed from: io.reactivex.internal.schedulers.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry extends io.reactivex.Ctry {

    /* renamed from: new, reason: not valid java name */
    public static final Disposable f27385new;

    /* renamed from: if, reason: not valid java name */
    public static final io.reactivex.Ctry f27384if = new Ctry();

    /* renamed from: for, reason: not valid java name */
    public static final Ctry.Cfor f27383for = new Cdo();

    /* renamed from: io.reactivex.internal.schedulers.try$do, reason: invalid class name */
    public static final class Cdo extends Ctry.Cfor {
        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: for */
        public Disposable mo29362for(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit) {
            throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: if */
        public Disposable mo29677if(@b41 Runnable runnable) {
            runnable.run();
            return Ctry.f27385new;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return false;
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: new, reason: not valid java name */
        public Disposable mo29701new(@b41 Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
        }
    }

    static {
        Disposable disposableM29367if = Cif.m29367if();
        f27385new = disposableM29367if;
        disposableM29367if.dispose();
    }

    private Ctry() {
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: case */
    public Disposable mo29689case(@b41 Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: if */
    public Ctry.Cfor mo4229if() {
        return f27383for;
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: new */
    public Disposable mo29697new(@b41 Runnable runnable) {
        runnable.run();
        return f27385new;
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: try */
    public Disposable mo29361try(@b41 Runnable runnable, long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
    }
}
