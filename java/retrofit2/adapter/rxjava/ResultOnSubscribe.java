package retrofit2.adapter.rxjava;

import android.support.v4.s80;
import android.support.v4.w61;
import android.support.v4.x61;
import android.support.v4.y22;
import android.support.v4.y61;
import retrofit2.Response;
import rx.Observable;
import rx.exceptions.Cdo;
import rx.plugins.Cnew;

/* loaded from: classes4.dex */
final class ResultOnSubscribe<T> implements Observable.OnSubscribe<Result<T>> {
    private final Observable.OnSubscribe<Response<T>> upstream;

    public static class ResultSubscriber<R> extends y22<Response<R>> {
        private final y22<? super Result<R>> subscriber;

        public ResultSubscriber(y22<? super Result<R>> y22Var) {
            super(y22Var);
            this.subscriber = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.subscriber.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            try {
                this.subscriber.onNext(Result.error(th));
                this.subscriber.onCompleted();
            } catch (Throwable th2) {
                try {
                    this.subscriber.onError(th2);
                } catch (w61 e) {
                    e = e;
                    Cnew.m39185for().m39195if().m39123do(e);
                } catch (x61 e2) {
                    e = e2;
                    Cnew.m39185for().m39195if().m39123do(e);
                } catch (y61 e3) {
                    e = e3;
                    Cnew.m39185for().m39195if().m39123do(e);
                } catch (Throwable th3) {
                    s80.m7301try(th3);
                    Cnew.m39185for().m39195if().m39123do(new Cdo(th2, th3));
                }
            }
        }

        @Override // rx.Observer
        public void onNext(Response<R> response) {
            this.subscriber.onNext(Result.response(response));
        }
    }

    public ResultOnSubscribe(Observable.OnSubscribe<Response<T>> onSubscribe) {
        this.upstream = onSubscribe;
    }

    @Override // rx.functions.Action1
    public void call(y22<? super Result<T>> y22Var) {
        this.upstream.call(new ResultSubscriber(y22Var));
    }
}
