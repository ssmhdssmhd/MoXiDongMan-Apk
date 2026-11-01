package com.luck.picture.lib.rxbus2;

import android.support.v4.n10;
import androidx.annotation.NonNull;
import com.luck.picture.lib.rxbus2.Cif;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.concurrent.TimeUnit;

/* renamed from: com.luck.picture.lib.rxbus2.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.luck.picture.lib.rxbus2.if$do, reason: invalid class name */
    public static class Cdo<T> extends n10<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cnew f18866if;

        public Cdo(Cnew cnew) {
            this.f18866if = cnew;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (isDisposed()) {
                return;
            }
            this.f18866if.m23291for();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (isDisposed()) {
                return;
            }
            this.f18866if.m23292new(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (isDisposed()) {
                return;
            }
            this.f18866if.mo22881try(t);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.luck.picture.lib.rxbus2.if$for, reason: invalid class name */
    public static class Cfor<T> extends n10<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cnew f18867if;

        public Cfor(Cnew cnew) {
            this.f18867if = cnew;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (isDisposed()) {
                return;
            }
            this.f18867if.m23291for();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (isDisposed()) {
                return;
            }
            this.f18867if.m23292new(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (isDisposed()) {
                return;
            }
            this.f18867if.mo22881try(t);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.luck.picture.lib.rxbus2.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0181if<T> extends n10<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cnew f18868if;

        public C0181if(Cnew cnew) {
            this.f18868if = cnew;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (isDisposed()) {
                return;
            }
            this.f18868if.m23291for();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (isDisposed()) {
                return;
            }
            this.f18868if.m23292new(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (isDisposed()) {
                return;
            }
            this.f18868if.mo22881try(t);
        }
    }

    /* renamed from: com.luck.picture.lib.rxbus2.if$new, reason: invalid class name */
    public static abstract class Cnew<T> {
        @NonNull
        /* renamed from: do */
        public T mo22879do(Object... objArr) {
            return mo23165if();
        }

        /* renamed from: for, reason: not valid java name */
        public void m23291for() {
        }

        /* renamed from: if */
        public T mo23165if() {
            return null;
        }

        /* renamed from: new, reason: not valid java name */
        public void m23292new(Throwable th) {
        }

        /* renamed from: try */
        public void mo22881try(T t) {
        }
    }

    private Cif() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ void m23279break(Cnew cnew, Object[] objArr, ObservableEmitter observableEmitter) throws Exception {
        Object objMo22879do = cnew.mo22879do(objArr);
        if (objMo22879do == null) {
            objMo22879do = new Object();
        }
        observableEmitter.onNext(objMo22879do);
        observableEmitter.onComplete();
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> void m23280case(long j, final Cnew cnew) {
        io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.op1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cif.m23289this(cnew, observableEmitter);
            }
        }).delay(j, TimeUnit.MILLISECONDS).subscribeOn(io.reactivex.schedulers.Cdo.m29772new()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).subscribe(new Cfor(cnew));
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T> void m23281catch(long j, final Cnew cnew, final Object... objArr) {
        io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.qp1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cif.m23279break(cnew, objArr, observableEmitter);
            }
        }).delay(j, TimeUnit.MILLISECONDS).subscribeOn(io.reactivex.schedulers.Cdo.m29774try()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).subscribe(new C0181if(cnew));
    }

    /* renamed from: class, reason: not valid java name */
    public static <T> void m23282class(Cnew cnew, Object... objArr) {
        m23281catch(0L, cnew, objArr);
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> void m23284else(Cnew cnew) {
        m23280case(0L, cnew);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static /* synthetic */ void m23286goto(Cnew cnew, Object[] objArr, ObservableEmitter observableEmitter) throws Exception {
        Object objMo22879do = cnew.mo22879do(objArr);
        if (objMo22879do == null) {
            objMo22879do = new Object();
        }
        observableEmitter.onNext(objMo22879do);
        observableEmitter.onComplete();
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> n10 m23288new(long j, final Cnew cnew, final Object... objArr) {
        io.reactivex.Cnew<T> cnewObserveOn = io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.pp1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cif.m23286goto(cnew, objArr, observableEmitter);
            }
        }).delay(j, TimeUnit.MILLISECONDS).subscribeOn(io.reactivex.schedulers.Cdo.m29767do()).observeOn(io.reactivex.android.schedulers.Cdo.m29358for());
        Cdo cdo = new Cdo(cnew);
        cnewObserveOn.subscribe(cdo);
        return cdo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ void m23289this(Cnew cnew, ObservableEmitter observableEmitter) throws Exception {
        Object objMo22879do = cnew.mo22879do(new Object[0]);
        if (objMo22879do == null) {
            objMo22879do = new Object();
        }
        observableEmitter.onNext(objMo22879do);
        observableEmitter.onComplete();
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> n10 m23290try(Cnew cnew, Object... objArr) {
        return m23288new(0L, cnew, objArr);
    }
}
