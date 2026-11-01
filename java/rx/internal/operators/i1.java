package rx.internal.operators;

import android.support.v4.y22;
import java.util.ArrayDeque;
import java.util.Deque;
import rx.Observable;

/* loaded from: classes4.dex */
public class i1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final int f34912do;

    /* renamed from: rx.internal.operators.i1$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private final Deque<Object> f34913do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f34915if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f34915if = y22Var2;
            this.f34913do = new ArrayDeque();
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34915if.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34915if.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // rx.Observer
        public void onNext(T t) {
            if (i1.this.f34912do == 0) {
                this.f34915if.onNext(t);
                return;
            }
            if (this.f34913do.size() == i1.this.f34912do) {
                this.f34915if.onNext(Creturn.m38691try(this.f34913do.removeFirst()));
            } else {
                request(1L);
            }
            this.f34913do.offerLast(Creturn.m38682break(t));
        }
    }

    public i1(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count could not be negative");
        }
        this.f34912do = i;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        return new Cdo(y22Var, y22Var);
    }
}
