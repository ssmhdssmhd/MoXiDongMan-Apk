package rx.internal.operators;

import android.support.v4.lz1;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import rx.Observable;

/* loaded from: classes4.dex */
public final class a2<T> implements Observable.Operator<List<T>, T> {

    /* renamed from: rx.internal.operators.a2$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public boolean f34485do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ lz1 f34486for;

        /* renamed from: if, reason: not valid java name */
        public List<T> f34487if = new LinkedList();

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ y22 f34488new;

        public Cdo(lz1 lz1Var, y22 y22Var) {
            this.f34486for = lz1Var;
            this.f34488new = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34485do) {
                return;
            }
            this.f34485do = true;
            try {
                ArrayList arrayList = new ArrayList(this.f34487if);
                this.f34487if = null;
                this.f34486for.setValue(arrayList);
            } catch (Throwable th) {
                s80.m7297goto(th, this);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34488new.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f34485do) {
                return;
            }
            this.f34487if.add(t);
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    /* renamed from: rx.internal.operators.a2$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final a2<Object> f34490do = new a2<>();
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> a2<T> m38402if() {
        return (a2<T>) Cif.f34490do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super List<T>> y22Var) {
        lz1 lz1Var = new lz1(y22Var);
        Cdo cdo = new Cdo(lz1Var, y22Var);
        y22Var.add(cdo);
        y22Var.setProducer(lz1Var);
        return cdo;
    }
}
