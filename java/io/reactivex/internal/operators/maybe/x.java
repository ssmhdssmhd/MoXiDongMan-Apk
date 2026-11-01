package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.maybe.b;
import io.reactivex.internal.operators.maybe.w;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class x<T, R> extends fy0<R> {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends MaybeSource<? extends T>> f26264do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Object[], ? extends R> f26265if;

    /* renamed from: io.reactivex.internal.operators.maybe.x$do, reason: invalid class name */
    public final class Cdo implements Function<T, R> {
        public Cdo() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.lang.Object[]] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            return (R) Cif.m29468else(x.this.f26265if.apply(new Object[]{t}), "The zipper returned a null value");
        }
    }

    public x(Iterable<? extends MaybeSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        this.f26264do = iterable;
        this.f26265if = function;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super R> maybeObserver) {
        MaybeSource[] maybeSourceArr = new MaybeSource[8];
        try {
            int i = 0;
            for (MaybeSource<? extends T> maybeSource : this.f26264do) {
                if (maybeSource == null) {
                    io.reactivex.internal.disposables.Cif.error(new NullPointerException("One of the sources is null"), maybeObserver);
                    return;
                }
                if (i == maybeSourceArr.length) {
                    maybeSourceArr = (MaybeSource[]) Arrays.copyOf(maybeSourceArr, (i >> 2) + i);
                }
                int i2 = i + 1;
                maybeSourceArr[i] = maybeSource;
                i = i2;
            }
            if (i == 0) {
                io.reactivex.internal.disposables.Cif.complete(maybeObserver);
                return;
            }
            if (i == 1) {
                maybeSourceArr[0].subscribe(new b.Cdo(maybeObserver, new Cdo()));
                return;
            }
            w.Cif cif = new w.Cif(maybeObserver, i, this.f26265if);
            maybeObserver.onSubscribe(cif);
            for (int i3 = 0; i3 < i && !cif.isDisposed(); i3++) {
                maybeSourceArr[i3].subscribe(cif.observers[i3]);
            }
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, maybeObserver);
        }
    }
}
