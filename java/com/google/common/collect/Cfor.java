package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import java.util.NoSuchElementException;

@ki0
/* renamed from: com.google.common.collect.for, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cfor<T> extends ac2<T> {

    /* renamed from: do, reason: not valid java name */
    private Cif f14290do = Cif.NOT_READY;

    /* renamed from: if, reason: not valid java name */
    @b51
    private T f14291if;

    /* renamed from: com.google.common.collect.for$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f14292do;

        static {
            int[] iArr = new int[Cif.values().length];
            f14292do = iArr;
            try {
                iArr[Cif.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14292do[Cif.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.common.collect.for$if, reason: invalid class name */
    public enum Cif {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m15804for() {
        this.f14290do = Cif.FAILED;
        this.f14291if = mo15521do();
        if (this.f14290do == Cif.DONE) {
            return false;
        }
        this.f14290do = Cif.READY;
        return true;
    }

    /* renamed from: do */
    public abstract T mo15521do();

    @Override // java.util.Iterator
    @lf
    public final boolean hasNext() {
        af1.t(this.f14290do != Cif.FAILED);
        int i = Cdo.f14292do[this.f14290do.ordinal()];
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            return m15804for();
        }
        return true;
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public final T m15805if() {
        this.f14290do = Cif.DONE;
        return null;
    }

    @Override // java.util.Iterator
    @lf
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f14290do = Cif.NOT_READY;
        T t = this.f14291if;
        this.f14291if = null;
        return t;
    }

    public final T peek() {
        if (hasNext()) {
            return this.f14291if;
        }
        throw new NoSuchElementException();
    }
}
