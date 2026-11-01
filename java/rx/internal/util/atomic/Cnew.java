package rx.internal.util.atomic;

import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* renamed from: rx.internal.util.atomic.new, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cnew<E> extends Cdo<E> {

    /* renamed from: else, reason: not valid java name */
    private static final Integer f35795else = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* renamed from: case, reason: not valid java name */
    public final int f35796case;

    /* renamed from: for, reason: not valid java name */
    public final AtomicLong f35797for;

    /* renamed from: new, reason: not valid java name */
    public long f35798new;

    /* renamed from: try, reason: not valid java name */
    public final AtomicLong f35799try;

    public Cnew(int i) {
        super(i);
        this.f35797for = new AtomicLong();
        this.f35799try = new AtomicLong();
        this.f35796case = Math.min(i / 4, f35795else.intValue());
    }

    /* renamed from: class, reason: not valid java name */
    private long m38876class() {
        return this.f35799try.get();
    }

    /* renamed from: const, reason: not valid java name */
    private long m38877const() {
        return this.f35797for.get();
    }

    /* renamed from: final, reason: not valid java name */
    private void m38878final(long j) {
        this.f35799try.lazySet(j);
    }

    /* renamed from: super, reason: not valid java name */
    private void m38879super(long j) {
        this.f35797for.lazySet(j);
    }

    @Override // rx.internal.util.atomic.Cdo, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return m38877const() == m38876class();
    }

    @Override // rx.internal.util.atomic.Cdo, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        Objects.requireNonNull(e, "Null is not a valid element");
        AtomicReferenceArray<E> atomicReferenceArray = this.f35791do;
        int i = this.f35792if;
        long j = this.f35797for.get();
        int iM38865if = m38865if(j, i);
        if (j >= this.f35798new) {
            long j2 = this.f35796case + j;
            if (m38859case(atomicReferenceArray, m38865if(j2, i)) == null) {
                this.f35798new = j2;
            } else if (m38859case(atomicReferenceArray, iM38865if) != null) {
                return false;
            }
        }
        m38864goto(atomicReferenceArray, iM38865if, e);
        m38879super(j + 1);
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        return m38868try(m38861do(this.f35799try.get()));
    }

    @Override // java.util.Queue
    public E poll() {
        long j = this.f35799try.get();
        int iM38861do = m38861do(j);
        AtomicReferenceArray<E> atomicReferenceArray = this.f35791do;
        E eM38859case = m38859case(atomicReferenceArray, iM38861do);
        if (eM38859case == null) {
            return null;
        }
        m38864goto(atomicReferenceArray, iM38861do, null);
        m38878final(j + 1);
        return eM38859case;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        long jM38876class = m38876class();
        while (true) {
            long jM38877const = m38877const();
            long jM38876class2 = m38876class();
            if (jM38876class == jM38876class2) {
                return (int) (jM38877const - jM38876class2);
            }
            jM38876class = jM38876class2;
        }
    }
}
