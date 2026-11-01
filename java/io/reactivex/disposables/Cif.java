package io.reactivex.disposables;

import android.support.v4.b41;
import io.reactivex.functions.Action;
import io.reactivex.internal.functions.Cdo;
import java.util.concurrent.Future;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.disposables.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {
    private Cif() {
        throw new IllegalStateException("No instances!");
    }

    @b41
    /* renamed from: case, reason: not valid java name */
    public static Disposable m29363case(@b41 Runnable runnable) {
        io.reactivex.internal.functions.Cif.m29468else(runnable, "run is null");
        return new Ctry(runnable);
    }

    @b41
    /* renamed from: do, reason: not valid java name */
    public static Disposable m29364do() {
        return io.reactivex.internal.disposables.Cif.INSTANCE;
    }

    @b41
    /* renamed from: else, reason: not valid java name */
    public static Disposable m29365else(@b41 Subscription subscription) {
        io.reactivex.internal.functions.Cif.m29468else(subscription, "subscription is null");
        return new Ccase(subscription);
    }

    @b41
    /* renamed from: for, reason: not valid java name */
    public static Disposable m29366for(@b41 Action action) {
        io.reactivex.internal.functions.Cif.m29468else(action, "run is null");
        return new Cdo(action);
    }

    @b41
    /* renamed from: if, reason: not valid java name */
    public static Disposable m29367if() {
        return m29363case(Cdo.f25284if);
    }

    @b41
    /* renamed from: new, reason: not valid java name */
    public static Disposable m29368new(@b41 Future<?> future) {
        io.reactivex.internal.functions.Cif.m29468else(future, "future is null");
        return m29369try(future, true);
    }

    @b41
    /* renamed from: try, reason: not valid java name */
    public static Disposable m29369try(@b41 Future<?> future, boolean z) {
        io.reactivex.internal.functions.Cif.m29468else(future, "future is null");
        return new Cfor(future, z);
    }
}
