package retrofit2.adapter.rxjava2;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Cdo;
import retrofit2.Response;

/* loaded from: classes4.dex */
final class ResultObservable<T> extends Cnew<Result<T>> {
    private final Cnew<Response<T>> upstream;

    public static class ResultObserver<R> implements Observer<Response<R>> {
        private final Observer<? super Result<R>> observer;

        public ResultObserver(Observer<? super Result<R>> observer) {
            this.observer = observer;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.observer.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            try {
                this.observer.onNext(Result.error(th));
                this.observer.onComplete();
            } catch (Throwable th2) {
                try {
                    this.observer.onError(th2);
                } catch (Throwable th3) {
                    t80.m7781if(th3);
                    jp1.l(new Cdo(th2, th3));
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.observer.onSubscribe(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(Response<R> response) {
            this.observer.onNext(Result.response(response));
        }
    }

    public ResultObservable(Cnew<Response<T>> cnew) {
        this.upstream = cnew;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Result<T>> observer) {
        this.upstream.subscribe(new ResultObserver(observer));
    }
}
