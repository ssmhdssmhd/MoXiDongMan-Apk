package android.support.v4;

import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.functions.Cdo;
import io.reactivex.internal.util.Cbreak;
import io.reactivex.internal.util.Ccase;
import io.reactivex.internal.util.Cif;
import java.util.concurrent.LinkedBlockingQueue;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class uc0 {
    private uc0() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> void m8355do(Publisher<? extends T> publisher) {
        Cif cif = new Cif();
        as0 as0Var = new as0(Cdo.m29427goto(), cif, cif, Cdo.f25279class);
        publisher.subscribe(as0Var);
        ja.m3754do(cif, as0Var);
        Throwable th = cif.f27441do;
        if (th != null) {
            throw Ccase.m29712case(th);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> void m8356for(Publisher<? extends T> publisher, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, int i) {
        io.reactivex.internal.functions.Cif.m29468else(consumer, "onNext is null");
        io.reactivex.internal.functions.Cif.m29468else(consumer2, "onError is null");
        io.reactivex.internal.functions.Cif.m29468else(action, "onComplete is null");
        io.reactivex.internal.functions.Cif.m29470goto(i, "number > 0 required");
        m8358new(publisher, new fc(consumer, consumer2, action, Cdo.m29432new(i), i));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> void m8357if(Publisher<? extends T> publisher, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        io.reactivex.internal.functions.Cif.m29468else(consumer, "onNext is null");
        io.reactivex.internal.functions.Cif.m29468else(consumer2, "onError is null");
        io.reactivex.internal.functions.Cif.m29468else(action, "onComplete is null");
        m8358new(publisher, new as0(consumer, consumer2, action, Cdo.f25279class));
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> void m8358new(Publisher<? extends T> publisher, Subscriber<? super T> subscriber) {
        Object objPoll;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        pa paVar = new pa(linkedBlockingQueue);
        publisher.subscribe(paVar);
        do {
            try {
                if (paVar.isCancelled()) {
                    return;
                }
                objPoll = linkedBlockingQueue.poll();
                if (objPoll == null) {
                    if (paVar.isCancelled()) {
                        return;
                    }
                    ja.m3755if();
                    objPoll = linkedBlockingQueue.take();
                }
                if (paVar.isCancelled() || objPoll == pa.TERMINATED) {
                    return;
                }
            } catch (InterruptedException e) {
                paVar.cancel();
                subscriber.onError(e);
                return;
            }
        } while (!Cbreak.acceptFull(objPoll, subscriber));
    }
}
