package android.support.v4;

import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import rx.Cif;
import rx.functions.Action0;
import rx.internal.schedulers.Cdo;
import rx.internal.util.Ccase;

/* loaded from: classes4.dex */
public class kp1 {

    /* renamed from: do, reason: not valid java name */
    private static final kp1 f3452do = new kp1();

    /* renamed from: case, reason: not valid java name */
    public static Cif m4460case(ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory == null");
        return new i31(threadFactory);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cif m4461do() {
        return m4464if(new Ccase("RxComputationScheduler-"));
    }

    /* renamed from: for, reason: not valid java name */
    public static Cif m4462for() {
        return m4465new(new Ccase("RxIoScheduler-"));
    }

    /* renamed from: goto, reason: not valid java name */
    public static kp1 m4463goto() {
        return f3452do;
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m4464if(ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory == null");
        return new rx.internal.schedulers.Cif(threadFactory);
    }

    /* renamed from: new, reason: not valid java name */
    public static Cif m4465new(ThreadFactory threadFactory) {
        Objects.requireNonNull(threadFactory, "threadFactory == null");
        return new Cdo(threadFactory);
    }

    /* renamed from: try, reason: not valid java name */
    public static Cif m4466try() {
        return m4460case(new Ccase("RxNewThreadScheduler-"));
    }

    /* renamed from: break, reason: not valid java name */
    public Cif m4467break() {
        return null;
    }

    @Deprecated
    /* renamed from: catch, reason: not valid java name */
    public Action0 m4468catch(Action0 action0) {
        return action0;
    }

    /* renamed from: else, reason: not valid java name */
    public Cif m4469else() {
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public Cif m4470this() {
        return null;
    }
}
