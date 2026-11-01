package com.uber.autodispose.android.lifecycle;

import android.support.v4.ex0;
import android.support.v4.h5;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.subjects.Cif;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
class LifecycleEventsObservable extends Cnew<Lifecycle.Event> {

    /* renamed from: do, reason: not valid java name */
    private final Lifecycle f20748do;

    /* renamed from: if, reason: not valid java name */
    private final Cif<Lifecycle.Event> f20749if = Cif.m29815else();

    /* loaded from: classes.dex */
    public static final class ArchLifecycleObserver extends ex0 implements LifecycleObserver {

        /* renamed from: for, reason: not valid java name */
        private final Observer<? super Lifecycle.Event> f20750for;

        /* renamed from: if, reason: not valid java name */
        private final Lifecycle f20751if;

        /* renamed from: new, reason: not valid java name */
        private final Cif<Lifecycle.Event> f20752new;

        public ArchLifecycleObserver(Lifecycle lifecycle, Observer<? super Lifecycle.Event> observer, Cif<Lifecycle.Event> cif) {
            this.f20751if = lifecycle;
            this.f20750for = observer;
            this.f20752new = cif;
        }

        @Override // android.support.v4.ex0
        /* renamed from: do */
        public void mo2057do() {
            this.f20751if.removeObserver(this);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_ANY)
        public void onStateChange(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            if (isDisposed()) {
                return;
            }
            if (event != Lifecycle.Event.ON_CREATE || this.f20752new.m29824this() != event) {
                this.f20752new.onNext(event);
            }
            this.f20750for.onNext(event);
        }
    }

    /* renamed from: com.uber.autodispose.android.lifecycle.LifecycleEventsObservable$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20753do;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f20753do = iArr;
            try {
                iArr[Lifecycle.State.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20753do[Lifecycle.State.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20753do[Lifecycle.State.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20753do[Lifecycle.State.RESUMED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20753do[Lifecycle.State.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public LifecycleEventsObservable(Lifecycle lifecycle) {
        this.f20748do = lifecycle;
    }

    /* renamed from: do, reason: not valid java name */
    public void m24568do() {
        int i = Cdo.f20753do[this.f20748do.getCurrentState().ordinal()];
        this.f20749if.onNext(i != 1 ? i != 2 ? (i == 3 || i == 4) ? Lifecycle.Event.ON_RESUME : Lifecycle.Event.ON_DESTROY : Lifecycle.Event.ON_START : Lifecycle.Event.ON_CREATE);
    }

    /* renamed from: if, reason: not valid java name */
    public Lifecycle.Event m24569if() {
        return this.f20749if.m29824this();
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Lifecycle.Event> observer) {
        ArchLifecycleObserver archLifecycleObserver = new ArchLifecycleObserver(this.f20748do, observer, this.f20749if);
        observer.onSubscribe(archLifecycleObserver);
        if (!h5.m2947if()) {
            observer.onError(new IllegalStateException("Lifecycles can only be bound to on the main thread!"));
            return;
        }
        this.f20748do.addObserver(archLifecycleObserver);
        if (archLifecycleObserver.isDisposed()) {
            this.f20748do.removeObserver(archLifecycleObserver);
        }
    }
}
