package android.support.v4;

/* loaded from: classes2.dex */
public abstract class kl1 extends Exception {
    public static final StackTraceElement[] NO_TRACE;
    public static final boolean isStackTrace;

    static {
        isStackTrace = System.getProperty("surefire.test.class.path") != null;
        NO_TRACE = new StackTraceElement[0];
    }

    public kl1() {
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return null;
    }

    public kl1(Throwable th) {
        super(th);
    }
}
