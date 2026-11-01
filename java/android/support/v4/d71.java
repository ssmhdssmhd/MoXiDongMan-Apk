package android.support.v4;

import java.util.concurrent.Callable;
import rx.Observable;

/* loaded from: classes4.dex */
public final class d71<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    private final Callable<? extends T> f946do;

    public d71(Callable<? extends T> callable) {
        this.f946do = callable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        lz1 lz1Var = new lz1(y22Var);
        y22Var.setProducer(lz1Var);
        try {
            lz1Var.setValue(this.f946do.call());
        } catch (Throwable th) {
            s80.m7297goto(th, y22Var);
        }
    }
}
