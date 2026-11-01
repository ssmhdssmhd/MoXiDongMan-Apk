package android.support.v4;

/* loaded from: classes3.dex */
public final class ia<T> extends ga<T> {
    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f2082do == null) {
            this.f2084if = th;
        } else {
            jp1.l(th);
        }
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f2082do == null) {
            this.f2082do = t;
            this.f2083for.cancel();
            countDown();
        }
    }
}
