package io.reactivex.schedulers;

import android.support.v4.b41;
import android.support.v4.f90;
import android.support.v4.jp1;
import android.support.v4.k31;
import io.reactivex.internal.schedulers.Cclass;
import io.reactivex.internal.schedulers.Cfinal;
import io.reactivex.internal.schedulers.Csuper;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* renamed from: io.reactivex.schedulers.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    @b41
    public static final io.reactivex.Ctry f27535do = jp1.m4047transient(new Cgoto());

    /* renamed from: if, reason: not valid java name */
    @b41
    public static final io.reactivex.Ctry f27537if = jp1.m4049volatile(new Cif());

    /* renamed from: for, reason: not valid java name */
    @b41
    public static final io.reactivex.Ctry f27536for = jp1.m4031interface(new Cfor());

    /* renamed from: new, reason: not valid java name */
    @b41
    public static final io.reactivex.Ctry f27538new = Csuper.m29698break();

    /* renamed from: try, reason: not valid java name */
    @b41
    public static final io.reactivex.Ctry f27539try = jp1.m4036protected(new Ccase());

    /* renamed from: io.reactivex.schedulers.do$case, reason: invalid class name */
    public static final class Ccase implements Callable<io.reactivex.Ctry> {
        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public io.reactivex.Ctry call() throws Exception {
            return Ctry.f27543do;
        }
    }

    /* renamed from: io.reactivex.schedulers.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0349do {

        /* renamed from: do, reason: not valid java name */
        public static final io.reactivex.Ctry f27540do = new io.reactivex.internal.schedulers.Cif();
    }

    /* renamed from: io.reactivex.schedulers.do$else, reason: invalid class name */
    public static final class Celse {

        /* renamed from: do, reason: not valid java name */
        public static final io.reactivex.Ctry f27541do = new Cfinal();
    }

    /* renamed from: io.reactivex.schedulers.do$for, reason: invalid class name */
    public static final class Cfor implements Callable<io.reactivex.Ctry> {
        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public io.reactivex.Ctry call() throws Exception {
            return Cnew.f27542do;
        }
    }

    /* renamed from: io.reactivex.schedulers.do$goto, reason: invalid class name */
    public static final class Cgoto implements Callable<io.reactivex.Ctry> {
        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public io.reactivex.Ctry call() throws Exception {
            return Celse.f27541do;
        }
    }

    /* renamed from: io.reactivex.schedulers.do$if, reason: invalid class name */
    public static final class Cif implements Callable<io.reactivex.Ctry> {
        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public io.reactivex.Ctry call() throws Exception {
            return C0349do.f27540do;
        }
    }

    /* renamed from: io.reactivex.schedulers.do$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        public static final io.reactivex.Ctry f27542do = new io.reactivex.internal.schedulers.Celse();
    }

    /* renamed from: io.reactivex.schedulers.do$try, reason: invalid class name */
    public static final class Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final io.reactivex.Ctry f27543do = new k31();
    }

    private Cdo() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: case, reason: not valid java name */
    public static void m29766case() {
        m29767do().mo29679else();
        m29772new().mo29679else();
        m29774try().mo29679else();
        m29768else().mo29679else();
        m29773this().mo29679else();
        Cclass.m29673new();
    }

    @b41
    /* renamed from: do, reason: not valid java name */
    public static io.reactivex.Ctry m29767do() {
        return jp1.k(f27537if);
    }

    @b41
    /* renamed from: else, reason: not valid java name */
    public static io.reactivex.Ctry m29768else() {
        return jp1.p(f27535do);
    }

    @b41
    @f90
    /* renamed from: for, reason: not valid java name */
    public static io.reactivex.Ctry m29769for(@b41 Executor executor, boolean z) {
        return new io.reactivex.internal.schedulers.Cnew(executor, z);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m29770goto() {
        m29767do().mo29680goto();
        m29772new().mo29680goto();
        m29774try().mo29680goto();
        m29768else().mo29680goto();
        m29773this().mo29680goto();
        Cclass.m29674try();
    }

    @b41
    /* renamed from: if, reason: not valid java name */
    public static io.reactivex.Ctry m29771if(@b41 Executor executor) {
        return new io.reactivex.internal.schedulers.Cnew(executor, false);
    }

    @b41
    /* renamed from: new, reason: not valid java name */
    public static io.reactivex.Ctry m29772new() {
        return jp1.m(f27536for);
    }

    @b41
    /* renamed from: this, reason: not valid java name */
    public static io.reactivex.Ctry m29773this() {
        return f27538new;
    }

    @b41
    /* renamed from: try, reason: not valid java name */
    public static io.reactivex.Ctry m29774try() {
        return jp1.n(f27539try);
    }
}
