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
final class BodyOnSubscribe<T> implements Observable.OnSubscribe<T> {
    private final Observable.OnSubscribe<Response<T>> upstream;

    public static class BodySubscriber<R> extends y22<Response<R>> {
        private final y22<? super R> subscriber;
        private boolean subscriberTerminated;

        public BodySubscriber(y22<? super R> y22Var) {
            super(y22Var);
            this.subscriber = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.subscriberTerminated) {
                return;
            }
            this.subscriber.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (!this.subscriberTerminated) {
                this.subscriber.onError(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a Retrofit bug with the full stacktrace.");
            assertionError.initCause(th);
            Cnew.m39185for().m39195if().m39123do(assertionError);
        }

        @Override // rx.Observer
        public void onNext(Response<R> response) {
            if (response.isSuccessful()) {
                this.subscriber.onNext(response.body());
                return;
            }
            this.subscriberTerminated = true;
            HttpException httpException = new HttpException(response);
            try {
                this.subscriber.onError(httpException);
            } catch (w61 e) {
                e = e;
                Cnew.m39185for().m39195if().m39123do(e);
            } catch (x61 e2) {
                e = e2;
                Cnew.m39185for().m39195if().m39123do(e);
            } catch (y61 e3) {
                e = e3;
                Cnew.m39185for().m39195if().m39123do(e);
            } catch (Throwable th) {
                s80.m7301try(th);
                Cnew.m39185for().m39195if().m39123do(new Cdo(httpException, th));
            }
        }
    }

    public BodyOnSubscribe(Observable.OnSubscribe<Response<T>> onSubscribe) {
        this.upstream = onSubscribe;
    }

    @Override // rx.functions.Action1
    public void call(y22<? super T> y22Var) {
        this.upstream.call(new BodySubscriber(y22Var));
    }
}
