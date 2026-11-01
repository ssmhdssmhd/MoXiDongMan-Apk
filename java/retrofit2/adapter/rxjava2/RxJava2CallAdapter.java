package retrofit2.adapter.rxjava2;

import android.support.v4.jp1;
import android.support.v4.y41;
import io.reactivex.Cif;
import io.reactivex.Cnew;
import io.reactivex.Ctry;
import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;

/* loaded from: classes4.dex */
final class RxJava2CallAdapter<R> implements CallAdapter<R, Object> {
    private final boolean isAsync;
    private final boolean isBody;
    private final boolean isCompletable;
    private final boolean isFlowable;
    private final boolean isMaybe;
    private final boolean isResult;
    private final boolean isSingle;
    private final Type responseType;

    @y41
    private final Ctry scheduler;

    public RxJava2CallAdapter(Type type, @y41 Ctry ctry, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.responseType = type;
        this.scheduler = ctry;
        this.isAsync = z;
        this.isResult = z2;
        this.isBody = z3;
        this.isFlowable = z4;
        this.isSingle = z5;
        this.isMaybe = z6;
        this.isCompletable = z7;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    @Override // retrofit2.CallAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object adapt(Call<R> call) {
        Cnew bodyObservable;
        Ctry ctry;
        Cnew callEnqueueObservable = this.isAsync ? new CallEnqueueObservable(call) : new CallExecuteObservable(call);
        if (!this.isResult) {
            if (this.isBody) {
                bodyObservable = new BodyObservable(callEnqueueObservable);
            }
            ctry = this.scheduler;
            if (ctry != null) {
                callEnqueueObservable = callEnqueueObservable.subscribeOn(ctry);
            }
            return !this.isFlowable ? callEnqueueObservable.toFlowable(Cif.LATEST) : this.isSingle ? callEnqueueObservable.singleOrError() : this.isMaybe ? callEnqueueObservable.singleElement() : this.isCompletable ? callEnqueueObservable.ignoreElements() : jp1.i(callEnqueueObservable);
        }
        bodyObservable = new ResultObservable(callEnqueueObservable);
        callEnqueueObservable = bodyObservable;
        ctry = this.scheduler;
        if (ctry != null) {
        }
        if (!this.isFlowable) {
        }
    }

    @Override // retrofit2.CallAdapter
    public Type responseType() {
        return this.responseType;
    }
}
