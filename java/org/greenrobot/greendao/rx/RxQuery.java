package org.greenrobot.greendao.rx;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import org.greenrobot.greendao.query.LazyList;
import org.greenrobot.greendao.query.Query;
import rx.Cif;
import rx.Observable;

@Experimental
/* loaded from: classes3.dex */
public class RxQuery<T> extends RxBase {
    private final Query<T> query;

    public RxQuery(Query<T> query) {
        this.query = query;
    }

    @Override // org.greenrobot.greendao.rx.RxBase
    @Experimental
    public /* bridge */ /* synthetic */ Cif getScheduler() {
        return super.getScheduler();
    }

    @Experimental
    public Observable<List<T>> list() {
        return (Observable<List<T>>) wrap(new Callable<List<T>>() { // from class: org.greenrobot.greendao.rx.RxQuery.1
            @Override // java.util.concurrent.Callable
            public List<T> call() throws Exception {
                return RxQuery.this.query.forCurrentThread().list();
            }
        });
    }

    public Observable<T> oneByOne() {
        return (Observable<T>) wrap(Observable.S(new Observable.OnSubscribe<T>() { // from class: org.greenrobot.greendao.rx.RxQuery.3
            @Override // rx.functions.Action1
            public void call(y22<? super T> y22Var) {
                try {
                    LazyList<T> lazyListListLazyUncached = RxQuery.this.query.forCurrentThread().listLazyUncached();
                    try {
                        Iterator<T> it = lazyListListLazyUncached.iterator();
                        while (it.hasNext()) {
                            T next = it.next();
                            if (y22Var.isUnsubscribed()) {
                                break;
                            } else {
                                y22Var.onNext(next);
                            }
                        }
                        lazyListListLazyUncached.close();
                        if (y22Var.isUnsubscribed()) {
                            return;
                        }
                        y22Var.onCompleted();
                    } catch (Throwable th) {
                        lazyListListLazyUncached.close();
                        throw th;
                    }
                } catch (Throwable th2) {
                    s80.m7301try(th2);
                    y22Var.onError(th2);
                }
            }
        }));
    }

    @Experimental
    public Observable<T> unique() {
        return (Observable<T>) wrap(new Callable<T>() { // from class: org.greenrobot.greendao.rx.RxQuery.2
            @Override // java.util.concurrent.Callable
            public T call() throws Exception {
                return RxQuery.this.query.forCurrentThread().unique();
            }
        });
    }

    public RxQuery(Query<T> query, Cif cif) {
        super(cif);
        this.query = query;
    }
}
