package retrofit2.adapter.rxjava;

import android.support.v4.s80;
import android.support.v4.y22;
import retrofit2.Call;
import retrofit2.Response;
import rx.Observable;

/* loaded from: classes4.dex */
final class CallExecuteOnSubscribe<T> implements Observable.OnSubscribe<Response<T>> {
    private final Call<T> originalCall;

    public CallExecuteOnSubscribe(Call<T> call) {
        this.originalCall = call;
    }

    @Override // rx.functions.Action1
    public void call(y22<? super Response<T>> y22Var) {
        Call<T> callClone = this.originalCall.clone();
        CallArbiter callArbiter = new CallArbiter(callClone, y22Var);
        y22Var.add(callArbiter);
        y22Var.setProducer(callArbiter);
        try {
            callArbiter.emitResponse(callClone.execute());
        } catch (Throwable th) {
            s80.m7301try(th);
            callArbiter.emitError(th);
        }
    }
}
