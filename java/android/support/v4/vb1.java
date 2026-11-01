package android.support.v4;

import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class vb1<T> extends ub1<T> {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<T>[] f7137do;

    public vb1(Publisher<T>[] publisherArr) {
        this.f7137do = publisherArr;
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f7137do.length;
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super T>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            for (int i = 0; i < length; i++) {
                this.f7137do[i].subscribe(subscriberArr[i]);
            }
        }
    }
}
