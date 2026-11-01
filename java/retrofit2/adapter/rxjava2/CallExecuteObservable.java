package retrofit2.adapter.rxjava2;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Cdo;
import retrofit2.Call;
import retrofit2.Response;

/* loaded from: classes4.dex */
final class CallExecuteObservable<T> extends Cnew<Response<T>> {
    private final Call<T> originalCall;

    public static final class CallDisposable implements Disposable {
        private final Call<?> call;
        private volatile boolean disposed;

        public CallDisposable(Call<?> call) {
            this.call = call;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.disposed = true;
            this.call.cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }
    }

    public CallExecuteObservable(Call<T> call) {
        this.originalCall = call;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Response<T>> observer) {
        boolean z;
        Call<T> callClone = this.originalCall.clone();
        CallDisposable callDisposable = new CallDisposable(callClone);
        observer.onSubscribe(callDisposable);
        if (callDisposable.isDisposed()) {
            return;
        }
        try {
            Response<T> responseExecute = callClone.execute();
            if (!callDisposable.isDisposed()) {
                observer.onNext(responseExecute);
            }
            if (callDisposable.isDisposed()) {
                return;
            }
            try {
                observer.onComplete();
            } catch (Throwable th) {
                th = th;
                z = true;
                t80.m7781if(th);
                if (z) {
                    jp1.l(th);
                    return;
                }
                if (callDisposable.isDisposed()) {
                    return;
                }
                try {
                    observer.onError(th);
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    jp1.l(new Cdo(th, th2));
                }
            }
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
    }
}
