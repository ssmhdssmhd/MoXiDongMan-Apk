package android.support.v4;

/* loaded from: classes.dex */
public class mc extends RuntimeException {

    /* renamed from: do, reason: not valid java name */
    private static final String f3873do = "A bug was detected in FreeMarker; please report it with stack-trace";

    public mc() {
        this((Throwable) null);
    }

    public mc(String str) {
        this(str, null);
    }

    public mc(Throwable th) {
        super(f3873do, th);
    }

    public mc(String str, Throwable th) {
        super("A bug was detected in FreeMarker; please report it with stack-trace: " + str, th);
    }

    public mc(int i) {
        this(String.valueOf(i));
    }
}
