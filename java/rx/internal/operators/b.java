package rx.internal.operators;

import android.support.v4.u3;
import android.support.v4.y22;
import rx.Observable;

/* loaded from: classes4.dex */
public final class b<T> implements Observable.OnSubscribe<T> {

    /* renamed from: for, reason: not valid java name */
    public static volatile boolean f34503for;

    /* renamed from: do, reason: not valid java name */
    public final Observable.OnSubscribe<T> f34504do;

    /* renamed from: if, reason: not valid java name */
    public final String f34505if = m38408if();

    /* renamed from: rx.internal.operators.b$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f34506do;

        /* renamed from: if, reason: not valid java name */
        public final String f34507if;

        public Cdo(y22<? super T> y22Var, String str) {
            super(y22Var);
            this.f34506do = y22Var;
            this.f34507if = str;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34506do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            new u3(this.f34507if).attachTo(th);
            this.f34506do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f34506do.onNext(t);
        }
    }

    public b(Observable.OnSubscribe<T> onSubscribe) {
        this.f34504do = onSubscribe;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m38408if() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StringBuilder sb = new StringBuilder("Assembly trace:");
        for (StackTraceElement stackTraceElement : stackTrace) {
            String string = stackTraceElement.toString();
            if (f34503for || (stackTraceElement.getLineNumber() > 1 && !string.contains("RxJavaHooks.") && !string.contains("OnSubscribeOnAssembly") && !string.contains(".junit.runner") && !string.contains(".junit4.runner") && !string.contains(".junit.internal") && !string.contains("sun.reflect") && !string.contains("java.lang.Thread.") && !string.contains("ThreadPoolExecutor") && !string.contains("org.apache.catalina.") && !string.contains("org.apache.tomcat."))) {
                sb.append("\n at ");
                sb.append(string);
            }
        }
        sb.append("\nOriginal exception:");
        return sb.toString();
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        this.f34504do.call(new Cdo(y22Var, this.f34505if));
    }
}
