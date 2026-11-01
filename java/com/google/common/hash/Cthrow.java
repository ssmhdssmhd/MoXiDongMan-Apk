package com.google.common.hash;

import com.google.common.base.Supplier;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: com.google.common.hash.throw, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthrow {

    /* renamed from: do, reason: not valid java name */
    private static final Supplier<LongAddable> f15231do;

    /* renamed from: com.google.common.hash.throw$do, reason: invalid class name */
    public static class Cdo implements Supplier<LongAddable> {
        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public LongAddable get() {
            return new Cwhile();
        }
    }

    /* renamed from: com.google.common.hash.throw$for, reason: invalid class name */
    public static final class Cfor extends AtomicLong implements LongAddable {
        private Cfor() {
        }

        @Override // com.google.common.hash.LongAddable
        public void add(long j) {
            getAndAdd(j);
        }

        @Override // com.google.common.hash.LongAddable
        public void increment() {
            getAndIncrement();
        }

        @Override // com.google.common.hash.LongAddable
        public long sum() {
            return get();
        }

        public /* synthetic */ Cfor(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.common.hash.throw$if, reason: invalid class name */
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
            new Cwhile();
            cif = new Cdo();
        } catch (Throwable unused) {
            cif = new Cif();
        }
        f15231do = cif;
    }

    /* renamed from: do, reason: not valid java name */
    public static LongAddable m16969do() {
        return f15231do.get();
    }
}
