package com.google.common.cache;

import android.support.v4.ki0;
import com.google.common.base.Supplier;
import java.util.concurrent.atomic.AtomicLong;

@ki0(emulated = true)
/* renamed from: com.google.common.cache.case, reason: invalid class name */
/* loaded from: classes.dex */
final class Ccase {

    /* renamed from: do, reason: not valid java name */
    private static final Supplier<LongAddable> f13901do;

    /* renamed from: com.google.common.cache.case$do, reason: invalid class name */
    public static class Cdo implements Supplier<LongAddable> {
        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public LongAddable get() {
            return new Celse();
        }
    }

    /* renamed from: com.google.common.cache.case$for, reason: invalid class name */
    public static final class Cfor extends AtomicLong implements LongAddable {
        private Cfor() {
        }

        @Override // com.google.common.cache.LongAddable
        public void add(long j) {
            getAndAdd(j);
        }

        @Override // com.google.common.cache.LongAddable
        public void increment() {
            getAndIncrement();
        }

        @Override // com.google.common.cache.LongAddable
        public long sum() {
            return get();
        }

        public /* synthetic */ Cfor(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.common.cache.case$if, reason: invalid class name */
    public static class Cif implements Supplier<LongAddable> {
        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public LongAddable get() {
            return new Cfor(null);
        }
    }

    static {
        Supplier<LongAddable> cif;
        try {
            new Celse();
            cif = new Cdo();
        } catch (Throwable unused) {
            cif = new Cif();
        }
        f13901do = cif;
    }

    /* renamed from: do, reason: not valid java name */
    public static LongAddable m15293do() {
        return f13901do.get();
    }
}
