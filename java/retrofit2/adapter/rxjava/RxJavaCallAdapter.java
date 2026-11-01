package retrofit2.adapter.rxjava;

import android.support.v4.y41;
import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;
import rx.Cif;
import rx.Observable;

/* loaded from: classes4.dex */
final class RxJavaCallAdapter<R> implements CallAdapter<R, Object> {
    private final boolean isAsync;
    private final boolean isBody;
    private final boolean isCompletable;
    private final boolean isResult;
    private final boolean isSingle;
    private final Type responseType;

    @y41
    private final Cif scheduler;

    public RxJavaCallAdapter(Type type, @y41 Cif cif, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.responseType = type;
        this.scheduler = cif;
        this.isAsync = z;
        this.isResult = z2;
        this.isBody = z3;
        this.isSingle = z4;
        this.isCompletable = z5;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
    @Override // retrofit2.CallAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object adapt(Call<R> call) {
        Observable.OnSubscribe bodyOnSubscribe;
        Cif cif;
        Observable.OnSubscribe callEnqueueOnSubscribe = this.isAsync ? new CallEnqueueOnSubscribe(call) : new CallExecuteOnSubscribe(call);
        if (!this.isResult) {
            if (this.isBody) {
                bodyOnSubscribe = new BodyOnSubscribe(callEnqueueOnSubscribe);
            }
            Observable observableS = Observable.S(callEnqueueOnSubscribe);
            cif = this.scheduler;
            if (cif != null) {
                observableS = observableS.e4(cif);
            }
            return !this.isSingle ? observableS.l5() : this.isCompletable ? observableS.c5() : observableS;
        }
        bodyOnSubscribe = new ResultOnSubscribe(callEnqueueOnSubscribe);
        callEnqueueOnSubscribe = bodyOnSubscribe;
        Observable observableS2 = Observable.S(callEnqueueOnSubscribe);
        cif = this.scheduler;
        if (cif != null) {
        }
        if (!this.isSingle) {
        }
    }

    @Override // retrofit2.CallAdapter
    public Type responseType() {
        return this.responseType;
    }
}
