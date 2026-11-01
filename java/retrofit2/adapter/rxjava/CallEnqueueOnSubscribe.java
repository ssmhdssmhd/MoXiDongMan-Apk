package retrofit2.adapter.rxjava;

import android.support.v4.s80;
import android.support.v4.y22;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import rx.Observable;

/* loaded from: classes4.dex */
final class CallEnqueueOnSubscribe<T> implements Observable.OnSubscribe<Response<T>> {
    private final Call<T> originalCall;

    public CallEnqueueOnSubscribe(Call<T> call) {
        this.originalCall = call;
    }

    @Override // rx.functions.Action1
    public void call(y22<? super Response<T>> y22Var) {
        Call<T> callClone = this.originalCall.clone();
        final CallArbiter callArbiter = new CallArbiter(callClone, y22Var);
        y22Var.add(callArbiter);
        y22Var.setProducer(callArbiter);
        callClone.enqueue(new Callback<T>() { // from class: retrofit2.adapter.rxjava.CallEnqueueOnSubscribe.1
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call, Throwable th) {
                s80.m7301try(th);
                callArbiter.emitError(th);
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call, Response<T> response) {
                callArbiter.emitResponse(response);
            }
        });
    }
}
