package rx.internal.operators;

import android.support.v4.lz1;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import rx.Observable;
import rx.functions.Func2;

/* loaded from: classes4.dex */
public final class b2<T> implements Observable.Operator<List<T>, T> {

    /* renamed from: for, reason: not valid java name */
    private static final Comparator f34522for = new Cfor();

    /* renamed from: do, reason: not valid java name */
    public final Comparator<? super T> f34523do;

    /* renamed from: if, reason: not valid java name */
    public final int f34524if;

    /* renamed from: rx.internal.operators.b2$do, reason: invalid class name */
    public class Cdo implements Comparator<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func2 f34525do;

        public Cdo(Func2 func2) {
            this.f34525do = func2;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            return ((Integer) this.f34525do.call(t, t2)).intValue();
        }
    }

    /* renamed from: rx.internal.operators.b2$for, reason: invalid class name */
    public static final class Cfor implements Comparator<Object> {
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo((Comparable) obj2);
        }
    }

    /* renamed from: rx.internal.operators.b2$if, reason: invalid class name */
    public class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public List<T> f34527do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ lz1 f34528for;

        /* renamed from: if, reason: not valid java name */
        public boolean f34529if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ y22 f34530new;

        public Cif(lz1 lz1Var, y22 y22Var) {
            this.f34528for = lz1Var;
            this.f34530new = y22Var;
            this.f34527do = new ArrayList(b2.this.f34524if);
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34529if) {
                return;
            }
            this.f34529if = true;
            List<T> list = this.f34527do;
            this.f34527do = null;
            try {
                Collections.sort(list, b2.this.f34523do);
                this.f34528for.setValue(list);
            } catch (Throwable th) {
                s80.m7297goto(th, this);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34530new.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f34529if) {
                return;
            }
            this.f34527do.add(t);
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public b2(int i) {
        this.f34523do = f34522for;
        this.f34524if = i;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super List<T>> y22Var) {
        lz1 lz1Var = new lz1(y22Var);
        Cif cif = new Cif(lz1Var, y22Var);
        y22Var.add(cif);
        y22Var.setProducer(lz1Var);
        return cif;
    }

    public b2(Func2<? super T, ? super T, Integer> func2, int i) {
        this.f34524if = i;
        this.f34523do = new Cdo(func2);
    }
}
