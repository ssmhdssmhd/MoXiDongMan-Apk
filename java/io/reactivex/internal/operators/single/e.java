package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.single.Ccontinue;
import io.reactivex.internal.operators.single.d;
import java.util.Arrays;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class e<T, R> extends jz1<R> {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends SingleSource<? extends T>> f27164do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Object[], ? extends R> f27165if;

    /* renamed from: io.reactivex.internal.operators.single.e$do, reason: invalid class name */
    public final class Cdo implements Function<T, R> {
        public Cdo() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.lang.Object[]] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            return (R) Cif.m29468else(e.this.f27165if.apply(new Object[]{t}), "The zipper returned a null value");
        }
    }

    public e(Iterable<? extends SingleSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        this.f27164do = iterable;
        this.f27165if = function;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super R> singleObserver) {
        SingleSource[] singleSourceArr = new SingleSource[8];
        try {
            int i = 0;
            for (SingleSource<? extends T> singleSource : this.f27164do) {
                if (singleSource == null) {
                    io.reactivex.internal.disposables.Cif.error(new NullPointerException("One of the sources is null"), singleObserver);
                    return;
                }
                if (i == singleSourceArr.length) {
                    singleSourceArr = (SingleSource[]) Arrays.copyOf(singleSourceArr, (i >> 2) + i);
                }
                int i2 = i + 1;
                singleSourceArr[i] = singleSource;
                i = i2;
            }
            if (i == 0) {
                io.reactivex.internal.disposables.Cif.error(new NoSuchElementException(), singleObserver);
                return;
            }
            if (i == 1) {
                singleSourceArr[0].subscribe(new Ccontinue.Cdo(singleObserver, new Cdo()));
                return;
            }
            d.Cif cif = new d.Cif(singleObserver, i, this.f27165if);
            singleObserver.onSubscribe(cif);
            for (int i3 = 0; i3 < i && !cif.isDisposed(); i3++) {
                singleSourceArr[i3].subscribe(cif.observers[i3]);
            }
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, singleObserver);
        }
    }
}
