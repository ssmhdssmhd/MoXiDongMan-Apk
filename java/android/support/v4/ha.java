package android.support.v4;

/* loaded from: classes3.dex */
public final class ha<T> extends fa<T> {
    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (this.f1740do == null) {
            this.f1742if = th;
        }
        countDown();
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (this.f1740do == null) {
            this.f1740do = t;
            this.f1741for.dispose();
            countDown();
        }
    }
}
