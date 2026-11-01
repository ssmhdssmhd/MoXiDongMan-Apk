package android.support.v4;

/* loaded from: classes3.dex */
public final class z61 extends RuntimeException {
    private static final long serialVersionUID = -6298857009889503852L;

    public z61(String str, @b41 Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }

    public z61(@b41 Throwable th) {
        this("The exception was not handled due to missing onError handler in the subscribe() method call. Further reading: https://github.com/ReactiveX/RxJava/wiki/Error-Handling | " + th, th);
    }
}
