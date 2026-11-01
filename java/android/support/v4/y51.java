package android.support.v4;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.functions.Cdo;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.internal.util.Ccase;
import io.reactivex.internal.util.Cif;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes3.dex */
public final class y51 {
    private y51() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> void m9757do(ObservableSource<? extends T> observableSource) {
        Cif cif = new Cif();
        zr0 zr0Var = new zr0(Cdo.m29427goto(), cif, cif, Cdo.m29427goto());
        observableSource.subscribe(zr0Var);
        ja.m3754do(cif, zr0Var);
        Throwable th = cif.f27441do;
        if (th != null) {
            throw Ccase.m29712case(th);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> void m9758for(ObservableSource<? extends T> observableSource, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        io.reactivex.internal.functions.Cif.m29468else(consumer, "onNext is null");
        io.reactivex.internal.functions.Cif.m29468else(consumer2, "onError is null");
        io.reactivex.internal.functions.Cif.m29468else(action, "onComplete is null");
        m9759if(observableSource, new zr0(consumer, consumer2, action, Cdo.m29427goto()));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> void m9759if(ObservableSource<? extends T> observableSource, Observer<? super T> observer) {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        na naVar = new na(linkedBlockingQueue);
        observer.onSubscribe(naVar);
        observableSource.subscribe(naVar);
        while (!naVar.isDisposed()) {
            Object objPoll = linkedBlockingQueue.poll();
            if (objPoll == null) {
                try {
                    objPoll = linkedBlockingQueue.take();
                } catch (InterruptedException e) {
                    naVar.dispose();
                    observer.onError(e);
                    return;
                }
            }
            if (naVar.isDisposed() || objPoll == na.TERMINATED || Cbreak.acceptFull(objPoll, observer)) {
                return;
            }
        }
    }
}
