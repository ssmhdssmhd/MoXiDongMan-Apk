package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.dq;
import android.support.v4.s80;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Single;
import rx.functions.FuncN;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class y2 {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.internal.operators.y2$do, reason: invalid class name */
    public static class Cdo<R> implements Single.OnSubscribe<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Single[] f35617do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ FuncN f35618if;

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* renamed from: rx.internal.operators.y2$do$do, reason: invalid class name and collision with other inner class name */
        public class C0544do<T> extends b02<T> {

            /* renamed from: case, reason: not valid java name */
            public final /* synthetic */ AtomicBoolean f35619case;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ int f35621for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Object[] f35622if;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ AtomicInteger f35623new;

            /* renamed from: try, reason: not valid java name */
            public final /* synthetic */ b02 f35624try;

            public C0544do(Object[] objArr, int i, AtomicInteger atomicInteger, b02 b02Var, AtomicBoolean atomicBoolean) {
                this.f35622if = objArr;
                this.f35621for = i;
                this.f35623new = atomicInteger;
                this.f35624try = b02Var;
                this.f35619case = atomicBoolean;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.support.v4.b02
            /* renamed from: if */
            public void mo416if(T t) {
                this.f35622if[this.f35621for] = t;
                if (this.f35623new.decrementAndGet() == 0) {
                    try {
                        this.f35624try.mo416if(Cdo.this.f35618if.call(this.f35622if));
                    } catch (Throwable th) {
                        s80.m7301try(th);
                        onError(th);
                    }
                }
            }

            @Override // android.support.v4.b02
            public void onError(Throwable th) {
                if (this.f35619case.compareAndSet(false, true)) {
                    this.f35624try.onError(th);
                } else {
                    Cif.m39151protected(th);
                }
            }
        }

        public Cdo(Single[] singleArr, FuncN funcN) {
            this.f35617do = singleArr;
            this.f35618if = funcN;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super R> b02Var) {
            if (this.f35617do.length == 0) {
                b02Var.onError(new NoSuchElementException("Can't zip 0 Singles."));
                return;
            }
            AtomicInteger atomicInteger = new AtomicInteger(this.f35617do.length);
            AtomicBoolean atomicBoolean = new AtomicBoolean();
            Object[] objArr = new Object[this.f35617do.length];
            dq dqVar = new dq();
            b02Var.m415do(dqVar);
            for (int i = 0; i < this.f35617do.length && !dqVar.isUnsubscribed() && !atomicBoolean.get(); i++) {
                C0544do c0544do = new C0544do(objArr, i, atomicInteger, b02Var, atomicBoolean);
                dqVar.m1488do(c0544do);
                if (dqVar.isUnsubscribed() || atomicBoolean.get()) {
                    return;
                }
                this.f35617do[i].u(c0544do);
            }
        }
    }

    private y2() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T, R> Single<R> m38814do(Single<? extends T>[] singleArr, FuncN<? extends R> funcN) {
        return Single.m38265const(new Cdo(singleArr, funcN));
    }
}
