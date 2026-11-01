package retrofit2.adapter.rxjava;

import android.support.v4.s80;
import android.support.v4.w61;
import android.support.v4.x61;
import android.support.v4.y22;
import android.support.v4.y61;
import java.util.concurrent.atomic.AtomicInteger;
import retrofit2.Call;
import retrofit2.Response;
import rx.Producer;
import rx.Subscription;
import rx.exceptions.Cdo;
import rx.plugins.Cnew;

/* loaded from: classes4.dex */
final class CallArbiter<T> extends AtomicInteger implements Subscription, Producer {
    private static final int STATE_HAS_RESPONSE = 2;
    private static final int STATE_REQUESTED = 1;
    private static final int STATE_TERMINATED = 3;
    private static final int STATE_WAITING = 0;
    private final Call<T> call;
    private volatile Response<T> response;
    private final y22<? super Response<T>> subscriber;
    private volatile boolean unsubscribed;

    public CallArbiter(Call<T> call, y22<? super Response<T>> y22Var) {
        super(0);
        this.call = call;
        this.subscriber = y22Var;
    }

    private void deliverResponse(Response<T> response) {
        try {
            if (!isUnsubscribed()) {
                this.subscriber.onNext(response);
            }
            try {
                if (isUnsubscribed()) {
                    return;
                }
                this.subscriber.onCompleted();
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
                Cnew.m39185for().m39195if().m39123do(th);
            }
        } catch (w61 e4) {
            e = e4;
            Cnew.m39185for().m39195if().m39123do(e);
        } catch (x61 e5) {
            e = e5;
            Cnew.m39185for().m39195if().m39123do(e);
        } catch (y61 e6) {
            e = e6;
            Cnew.m39185for().m39195if().m39123do(e);
        } catch (Throwable th2) {
            s80.m7301try(th2);
            try {
                this.subscriber.onError(th2);
            } catch (w61 e7) {
                e = e7;
                Cnew.m39185for().m39195if().m39123do(e);
            } catch (x61 e8) {
                e = e8;
                Cnew.m39185for().m39195if().m39123do(e);
            } catch (y61 e9) {
                e = e9;
                Cnew.m39185for().m39195if().m39123do(e);
            } catch (Throwable th3) {
                s80.m7301try(th3);
                Cnew.m39185for().m39195if().m39123do(new Cdo(th2, th3));
            }
        }
    }

    public void emitError(Throwable th) {
        set(3);
        if (isUnsubscribed()) {
            return;
        }
        try {
            this.subscriber.onError(th);
        } catch (w61 e) {
            e = e;
            Cnew.m39185for().m39195if().m39123do(e);
        } catch (x61 e2) {
            e = e2;
            Cnew.m39185for().m39195if().m39123do(e);
        } catch (y61 e3) {
            e = e3;
            Cnew.m39185for().m39195if().m39123do(e);
        } catch (Throwable th2) {
            s80.m7301try(th2);
            Cnew.m39185for().m39195if().m39123do(new Cdo(th, th2));
        }
    }

    public void emitResponse(Response<T> response) {
        while (true) {
            int i = get();
            if (i == 0) {
                this.response = response;
                if (compareAndSet(0, 2)) {
                    return;
                }
            } else {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        throw new AssertionError();
                    }
                    throw new IllegalStateException("Unknown state: " + i);
                }
                if (compareAndSet(1, 3)) {
                    deliverResponse(response);
                    return;
                }
            }
        }
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.unsubscribed;
    }

    @Override // rx.Producer
    public void request(long j) {
        if (j == 0) {
            return;
        }
        while (true) {
            int i = get();
            if (i != 0) {
                if (i == 1) {
                    return;
                }
                if (i != 2) {
                    if (i == 3) {
                        return;
                    }
                    throw new IllegalStateException("Unknown state: " + i);
                }
                if (compareAndSet(2, 3)) {
                    deliverResponse(this.response);
                    return;
                }
            } else if (compareAndSet(0, 1)) {
                return;
            }
        }
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        this.unsubscribed = true;
        this.call.cancel();
    }
}
