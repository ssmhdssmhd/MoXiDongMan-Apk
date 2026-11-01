package rx.internal.operators;

import android.support.v4.y22;
import rx.Cdo;
import rx.Observable;

/* loaded from: classes4.dex */
public final class g0<T> implements Observable.Operator<T, rx.Cdo<T>> {

    /* renamed from: rx.internal.operators.g0$do, reason: invalid class name */
    public class Cdo extends y22<rx.Cdo<T>> {

        /* renamed from: do, reason: not valid java name */
        public boolean f34821do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f34823if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f34823if = y22Var2;
        }

        @Override // rx.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(rx.Cdo<T> cdo) {
            int i = Cif.f34825do[cdo.m38314case().ordinal()];
            if (i == 1) {
                if (this.f34821do) {
                    return;
                }
                this.f34823if.onNext(cdo.m38320goto());
            } else {
                if (i == 2) {
                    onError(cdo.m38319else());
                    return;
                }
                if (i == 3) {
                    onCompleted();
                    return;
                }
                onError(new IllegalArgumentException("Unsupported notification type: " + cdo));
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34821do) {
                return;
            }
            this.f34821do = true;
            this.f34823if.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f34821do) {
                return;
            }
            this.f34821do = true;
            this.f34823if.onError(th);
        }
    }

    /* renamed from: rx.internal.operators.g0$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final g0<Object> f34824do = new g0<>();
    }

    /* renamed from: rx.internal.operators.g0$if, reason: invalid class name */
    public static /* synthetic */ class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f34825do;

        static {
            int[] iArr = new int[Cdo.EnumC0503do.values().length];
            f34825do = iArr;
            try {
                iArr[Cdo.EnumC0503do.OnNext.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34825do[Cdo.EnumC0503do.OnError.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34825do[Cdo.EnumC0503do.OnCompleted.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static g0 m38522if() {
        return Cfor.f34824do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super rx.Cdo<T>> call(y22<? super T> y22Var) {
        return new Cdo(y22Var, y22Var);
    }
}
