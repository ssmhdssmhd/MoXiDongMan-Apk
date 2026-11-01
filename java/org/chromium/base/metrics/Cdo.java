package org.chromium.base.metrics;

import android.support.v4.ii0;
import android.support.v4.rv0;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.mozilla.javascript.v8dtoa.FastDtoa;

/* renamed from: org.chromium.base.metrics.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo implements UmaRecorder {

    /* renamed from: break, reason: not valid java name */
    public static final /* synthetic */ boolean f33180break = false;

    /* renamed from: else, reason: not valid java name */
    private static final String f33181else = "CachingUmaRecorder";

    /* renamed from: goto, reason: not valid java name */
    private static final int f33182goto = 256;

    /* renamed from: this, reason: not valid java name */
    @VisibleForTesting
    public static final int f33183this = 256;

    /* renamed from: case, reason: not valid java name */
    @Nullable
    @ii0("mRwLock")
    private UmaRecorder f33184case;

    /* renamed from: try, reason: not valid java name */
    @ii0("mRwLock")
    private int f33189try;

    /* renamed from: do, reason: not valid java name */
    private final ReentrantReadWriteLock f33185do = new ReentrantReadWriteLock(false);

    /* renamed from: if, reason: not valid java name */
    @ii0("mRwLock")
    private Map<String, C0472do> f33187if = new HashMap();

    /* renamed from: for, reason: not valid java name */
    private AtomicInteger f33186for = new AtomicInteger();

    /* renamed from: new, reason: not valid java name */
    @ii0("mRwLock")
    private List<Cif> f33188new = new ArrayList();

    @VisibleForTesting
    /* renamed from: org.chromium.base.metrics.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0472do {

        /* renamed from: else, reason: not valid java name */
        @VisibleForTesting
        public static final int f33190else = 256;

        /* renamed from: goto, reason: not valid java name */
        public static final /* synthetic */ boolean f33191goto = false;

        /* renamed from: case, reason: not valid java name */
        @ii0("this")
        private final List<Integer> f33192case = new ArrayList(1);

        /* renamed from: do, reason: not valid java name */
        private final int f33193do;

        /* renamed from: for, reason: not valid java name */
        private final int f33194for;

        /* renamed from: if, reason: not valid java name */
        private final String f33195if;

        /* renamed from: new, reason: not valid java name */
        private final int f33196new;

        /* renamed from: try, reason: not valid java name */
        private final int f33197try;

        @Retention(RetentionPolicy.SOURCE)
        /* renamed from: org.chromium.base.metrics.do$do$do, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public @interface InterfaceC0473do {
            public static final int D6 = 1;
            public static final int E6 = 2;
            public static final int F6 = 3;
            public static final int G6 = 4;
        }

        public C0472do(int i, String str, int i2, int i3, int i4) {
            this.f33193do = i;
            this.f33195if = str;
            this.f33194for = i2;
            this.f33196new = i3;
            this.f33197try = i4;
        }

        /* renamed from: do, reason: not valid java name */
        public synchronized boolean m37164do(int i, String str, int i2, int i3, int i4, int i5) {
            if (this.f33192case.size() >= 256) {
                return false;
            }
            this.f33192case.add(Integer.valueOf(i2));
            return true;
        }

        /* renamed from: if, reason: not valid java name */
        public synchronized int m37165if(UmaRecorder umaRecorder) {
            int size;
            int i = this.f33193do;
            int i2 = 0;
            if (i == 1) {
                for (int i3 = 0; i3 < this.f33192case.size(); i3++) {
                    umaRecorder.recordBooleanHistogram(this.f33195if, this.f33192case.get(i3).intValue() != 0);
                }
            } else if (i == 2) {
                while (i2 < this.f33192case.size()) {
                    umaRecorder.recordExponentialHistogram(this.f33195if, this.f33192case.get(i2).intValue(), this.f33194for, this.f33196new, this.f33197try);
                    i2++;
                }
            } else if (i == 3) {
                while (i2 < this.f33192case.size()) {
                    umaRecorder.recordLinearHistogram(this.f33195if, this.f33192case.get(i2).intValue(), this.f33194for, this.f33196new, this.f33197try);
                    i2++;
                }
            } else if (i == 4) {
                while (i2 < this.f33192case.size()) {
                    umaRecorder.recordSparseHistogram(this.f33195if, this.f33192case.get(i2).intValue());
                    i2++;
                }
            }
            size = this.f33192case.size();
            this.f33192case.clear();
            return size;
        }
    }

    /* renamed from: org.chromium.base.metrics.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final String f33198do;

        /* renamed from: if, reason: not valid java name */
        private final long f33199if;

        public Cif(String str, long j) {
            this.f33198do = str;
            this.f33199if = j;
        }

        /* renamed from: do, reason: not valid java name */
        public void m37166do(UmaRecorder umaRecorder) {
            umaRecorder.recordUserAction(this.f33198do, this.f33199if);
        }
    }

    @ii0("mRwLock")
    /* renamed from: do, reason: not valid java name */
    private void m37157do(int i, String str, int i2, int i3, int i4, int i5) {
        C0472do c0472do = this.f33187if.get(str);
        if (c0472do == null) {
            if (this.f33187if.size() >= 256) {
                this.f33186for.incrementAndGet();
                return;
            } else {
                C0472do c0472do2 = new C0472do(i, str, i3, i4, i5);
                this.f33187if.put(str, c0472do2);
                c0472do = c0472do2;
            }
        }
        if (c0472do.m37164do(i, str, i2, i3, i4, i5)) {
            return;
        }
        this.f33186for.incrementAndGet();
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m37158else(int i, String str, int i2, int i3, int i4, int i5) {
        this.f33185do.readLock().lock();
        try {
            if (this.f33184case != null) {
                m37162try(i, str, i2, i3, i4, i5);
            } else {
                C0472do c0472do = this.f33187if.get(str);
                if (c0472do == null) {
                    return false;
                }
                if (!c0472do.m37164do(i, str, i2, i3, i4, i5)) {
                    this.f33186for.incrementAndGet();
                }
            }
            return true;
        } finally {
            this.f33185do.readLock().unlock();
        }
    }

    @ii0("mRwLock")
    /* renamed from: for, reason: not valid java name */
    private void m37159for(Map<String, C0472do> map, int i) {
        int size = map.size();
        Iterator<C0472do> it = map.values().iterator();
        int iM37165if = 0;
        while (it.hasNext()) {
            iM37165if += it.next().m37165if(this.f33184case);
        }
        rv0.m7155goto(f33181else, "Flushed %d samples from %d histograms.", Integer.valueOf(iM37165if), Integer.valueOf(size));
        this.f33184case.recordExponentialHistogram("UMA.JavaCachingRecorder.DroppedHistogramSampleCount", i, 1, 1000000, 50);
        this.f33184case.recordExponentialHistogram("UMA.JavaCachingRecorder.FlushedHistogramCount", size, 1, FastDtoa.kTen5, 50);
        this.f33184case.recordExponentialHistogram("UMA.JavaCachingRecorder.InputHistogramSampleCount", iM37165if + i, 1, 1000000, 50);
    }

    /* renamed from: if, reason: not valid java name */
    private void m37160if(int i, String str, int i2, int i3, int i4, int i5) {
        if (m37158else(i, str, i2, i3, i4, i5)) {
            return;
        }
        this.f33185do.writeLock().lock();
        try {
            if (this.f33184case == null) {
                m37157do(i, str, i2, i3, i4, i5);
                return;
            }
            this.f33185do.readLock().lock();
            try {
                m37162try(i, str, i2, i3, i4, i5);
            } finally {
                this.f33185do.readLock().unlock();
            }
        } finally {
            this.f33185do.writeLock().unlock();
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m37161new(List<Cif> list, int i) {
        Iterator<Cif> it = list.iterator();
        while (it.hasNext()) {
            it.next().m37166do(this.f33184case);
        }
        this.f33184case.recordExponentialHistogram("UMA.JavaCachingRecorder.DroppedUserActionCount", i, 1, 1000, 50);
        this.f33184case.recordExponentialHistogram("UMA.JavaCachingRecorder.InputUserActionCount", list.size() + i, 1, FastDtoa.kTen4, 50);
    }

    @ii0("mRwLock")
    /* renamed from: try, reason: not valid java name */
    private void m37162try(int i, String str, int i2, int i3, int i4, int i5) {
        if (i == 1) {
            this.f33184case.recordBooleanHistogram(str, i2 != 0);
            return;
        }
        if (i == 2) {
            this.f33184case.recordExponentialHistogram(str, i2, i3, i4, i5);
            return;
        }
        if (i == 3) {
            this.f33184case.recordLinearHistogram(str, i2, i3, i4, i5);
        } else {
            if (i == 4) {
                this.f33184case.recordSparseHistogram(str, i2);
                return;
            }
            throw new UnsupportedOperationException("Unknown histogram type " + i);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public UmaRecorder m37163case(@Nullable UmaRecorder umaRecorder) {
        Map<String, C0472do> map;
        int andSet;
        this.f33185do.writeLock().lock();
        try {
            UmaRecorder umaRecorder2 = this.f33184case;
            this.f33184case = umaRecorder;
            if (umaRecorder == null) {
                return umaRecorder2;
            }
            List<Cif> list = null;
            int i = 0;
            if (this.f33187if.isEmpty()) {
                map = null;
                andSet = 0;
            } else {
                map = this.f33187if;
                this.f33187if = new HashMap();
                andSet = this.f33186for.getAndSet(0);
            }
            if (!this.f33188new.isEmpty()) {
                list = this.f33188new;
                this.f33188new = new ArrayList();
                int i2 = this.f33189try;
                this.f33189try = 0;
                i = i2;
            }
            this.f33185do.readLock().lock();
            if (map != null) {
                try {
                    m37159for(map, andSet);
                } catch (Throwable th) {
                    this.f33185do.readLock().unlock();
                    throw th;
                }
            }
            if (list != null) {
                m37161new(list, i);
            }
            this.f33185do.readLock().unlock();
            return umaRecorder2;
        } finally {
            this.f33185do.writeLock().unlock();
        }
    }

    @Override // org.chromium.base.metrics.UmaRecorder
    public void recordBooleanHistogram(String str, boolean z) {
        m37160if(1, str, z ? 1 : 0, 0, 0, 0);
    }

    @Override // org.chromium.base.metrics.UmaRecorder
    public void recordExponentialHistogram(String str, int i, int i2, int i3, int i4) {
        m37160if(2, str, i, i2, i3, i4);
    }

    @Override // org.chromium.base.metrics.UmaRecorder
    public void recordLinearHistogram(String str, int i, int i2, int i3, int i4) {
        m37160if(3, str, i, i2, i3, i4);
    }

    @Override // org.chromium.base.metrics.UmaRecorder
    public void recordSparseHistogram(String str, int i) {
        m37160if(4, str, i, 0, 0, 0);
    }

    @Override // org.chromium.base.metrics.UmaRecorder
    public void recordUserAction(String str, long j) {
        this.f33185do.readLock().lock();
        try {
            UmaRecorder umaRecorder = this.f33184case;
            if (umaRecorder != null) {
                umaRecorder.recordUserAction(str, j);
                return;
            }
            this.f33185do.readLock().unlock();
            this.f33185do.writeLock().lock();
            try {
                if (this.f33184case == null) {
                    if (this.f33188new.size() < 256) {
                        this.f33188new.add(new Cif(str, j));
                    } else {
                        this.f33189try++;
                    }
                } else {
                    this.f33185do.readLock().lock();
                    try {
                        this.f33184case.recordUserAction(str, j);
                    } finally {
                    }
                }
            } finally {
                this.f33185do.writeLock().unlock();
            }
        } finally {
        }
    }
}
