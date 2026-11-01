package rx.internal.operators;

import android.support.v4.dq;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.plugins.Cif;

/* renamed from: rx.internal.operators.const, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cconst implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Completable[] f34596do;

    /* renamed from: rx.internal.operators.const$do, reason: invalid class name */
    public class Cdo implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ dq f34597do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ CompletableSubscriber f34598for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AtomicBoolean f34599if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ AtomicInteger f34600new;

        public Cdo(dq dqVar, AtomicBoolean atomicBoolean, CompletableSubscriber completableSubscriber, AtomicInteger atomicInteger) {
            this.f34597do = dqVar;
            this.f34599if = atomicBoolean;
            this.f34598for = completableSubscriber;
            this.f34600new = atomicInteger;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            if (this.f34600new.decrementAndGet() == 0 && this.f34599if.compareAndSet(false, true)) {
                this.f34598for.onCompleted();
            }
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            this.f34597do.unsubscribe();
            if (this.f34599if.compareAndSet(false, true)) {
                this.f34598for.onError(th);
            } else {
                Cif.m39151protected(th);
            }
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f34597do.m1488do(subscription);
        }
    }

    public Cconst(Completable[] completableArr) {
        this.f34596do = completableArr;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        dq dqVar = new dq();
        boolean z = true;
        AtomicInteger atomicInteger = new AtomicInteger(this.f34596do.length + 1);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        completableSubscriber.onSubscribe(dqVar);
        Completable[] completableArr = this.f34596do;
        int length = completableArr.length;
        boolean z2 = false;
        int i = 0;
        while (i < length) {
            Completable completable = completableArr[i];
            if (dqVar.isUnsubscribed()) {
                return;
            }
            if (completable == null) {
                dqVar.unsubscribe();
                Throwable nullPointerException = new NullPointerException("A completable source is null");
                if (atomicBoolean.compareAndSet(z2, z)) {
                    completableSubscriber.onError(nullPointerException);
                    return;
                }
                Cif.m39151protected(nullPointerException);
            }
            completable.V(new Cdo(dqVar, atomicBoolean, completableSubscriber, atomicInteger));
            i++;
            z = true;
            z2 = false;
        }
        if (atomicInteger.decrementAndGet() == 0 && atomicBoolean.compareAndSet(false, true)) {
            completableSubscriber.onCompleted();
        }
    }
}
