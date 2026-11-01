package io.reactivex.internal.operators.mixed;

import android.R;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.MaybeSource;
import io.reactivex.Observer;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.maybe.q;
import io.reactivex.internal.operators.single.a;
import java.util.concurrent.Callable;

/* renamed from: io.reactivex.internal.operators.mixed.while, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cwhile {
    private Cwhile() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> boolean m29557do(Object obj, Function<? super T, ? extends CompletableSource> function, CompletableObserver completableObserver) {
        if (!(obj instanceof Callable)) {
            return false;
        }
        try {
            R.attr attrVar = (Object) ((Callable) obj).call();
            CompletableSource completableSource = attrVar != null ? (CompletableSource) Cif.m29468else(function.apply(attrVar), "The mapper returned a null CompletableSource") : null;
            if (completableSource == null) {
                io.reactivex.internal.disposables.Cif.complete(completableObserver);
            } else {
                completableSource.subscribe(completableObserver);
            }
            return true;
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, completableObserver);
            return true;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static <T, R> boolean m29558for(Object obj, Function<? super T, ? extends SingleSource<? extends R>> function, Observer<? super R> observer) {
        if (!(obj instanceof Callable)) {
            return false;
        }
        try {
            R.attr attrVar = (Object) ((Callable) obj).call();
            SingleSource singleSource = attrVar != null ? (SingleSource) Cif.m29468else(function.apply(attrVar), "The mapper returned a null SingleSource") : null;
            if (singleSource == null) {
                io.reactivex.internal.disposables.Cif.complete(observer);
            } else {
                singleSource.subscribe(a.m29653do(observer));
            }
            return true;
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, observer);
            return true;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static <T, R> boolean m29559if(Object obj, Function<? super T, ? extends MaybeSource<? extends R>> function, Observer<? super R> observer) {
        if (!(obj instanceof Callable)) {
            return false;
        }
        try {
            R.attr attrVar = (Object) ((Callable) obj).call();
            MaybeSource maybeSource = attrVar != null ? (MaybeSource) Cif.m29468else(function.apply(attrVar), "The mapper returned a null MaybeSource") : null;
            if (maybeSource == null) {
                io.reactivex.internal.disposables.Cif.complete(observer);
            } else {
                maybeSource.subscribe(q.m29550do(observer));
            }
            return true;
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, observer);
            return true;
        }
    }
}
