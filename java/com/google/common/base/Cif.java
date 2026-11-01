package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import java.util.Iterator;
import java.util.NoSuchElementException;

@ki0
/* renamed from: com.google.common.base.if, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cif<T> implements Iterator<T> {

    /* renamed from: do, reason: not valid java name */
    private EnumC0076if f13672do = EnumC0076if.NOT_READY;

    /* renamed from: if, reason: not valid java name */
    @b51
    private T f13673if;

    /* renamed from: com.google.common.base.if$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f13674do;

        static {
            int[] iArr = new int[EnumC0076if.values().length];
            f13674do = iArr;
            try {
                iArr[EnumC0076if.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13674do[EnumC0076if.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.common.base.if$if, reason: invalid class name and collision with other inner class name */
    public enum EnumC0076if {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m15107for() {
        this.f13672do = EnumC0076if.FAILED;
        this.f13673if = mo15008do();
        if (this.f13672do == EnumC0076if.DONE) {
            return false;
        }
        this.f13672do = EnumC0076if.READY;
        return true;
    }

    /* renamed from: do */
    public abstract T mo15008do();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        af1.t(this.f13672do != EnumC0076if.FAILED);
        int i = Cdo.f13674do[this.f13672do.ordinal()];
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            return m15107for();
        }
        return true;
    }

    @lf
    @b51
    /* renamed from: if, reason: not valid java name */
    public final T m15108if() {
        this.f13672do = EnumC0076if.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f13672do = EnumC0076if.NOT_READY;
        T t = this.f13673if;
        this.f13673if = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
