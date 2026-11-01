package android.support.v4;

/* loaded from: classes3.dex */
public final class la<T> extends ga<T> {
    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        this.f2082do = null;
        this.f2084if = th;
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        this.f2082do = t;
    }
}
