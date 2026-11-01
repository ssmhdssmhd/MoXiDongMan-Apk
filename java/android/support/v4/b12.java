package android.support.v4;

import io.reactivex.internal.fuseable.SimplePlainQueue;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes3.dex */
public final class b12<E> extends AtomicReferenceArray<E> implements SimplePlainQueue<E> {

    /* renamed from: do, reason: not valid java name */
    private static final Integer f309do = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    private static final long serialVersionUID = -1296597691183856449L;
    public final AtomicLong consumerIndex;
    public final int lookAheadStep;
    public final int mask;
    public final AtomicLong producerIndex;
    public long producerLookAhead;

    public b12(int i) {
        super(we1.m9129if(i));
        this.mask = length() - 1;
        this.producerIndex = new AtomicLong();
        this.consumerIndex = new AtomicLong();
        this.lookAheadStep = Math.min(i / 4, f309do.intValue());
    }

    public int calcElementOffset(long j) {
        return this.mask & ((int) j);
    }

    public int calcElementOffset(long j, int i) {
        return ((int) j) & i;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return this.producerIndex.get() == this.consumerIndex.get();
    }

    public E lvElement(int i) {
        return get(i);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(E e) {
        Objects.requireNonNull(e, "Null is not a valid element");
        int i = this.mask;
        long j = this.producerIndex.get();
        int iCalcElementOffset = calcElementOffset(j, i);
        if (j >= this.producerLookAhead) {
            long j2 = this.lookAheadStep + j;
            if (lvElement(calcElementOffset(j2, i)) == null) {
                this.producerLookAhead = j2;
            } else if (lvElement(iCalcElementOffset) != null) {
                return false;
            }
        }
        soElement(iCalcElementOffset, e);
        soProducerIndex(j + 1);
        return true;
    }

    @Override // io.reactivex.internal.fuseable.SimplePlainQueue, io.reactivex.internal.fuseable.SimpleQueue
    @a51
    public E poll() {
        long j = this.consumerIndex.get();
        int iCalcElementOffset = calcElementOffset(j);
        E eLvElement = lvElement(iCalcElementOffset);
        if (eLvElement == null) {
            return null;
        }
        soConsumerIndex(j + 1);
        soElement(iCalcElementOffset, null);
        return eLvElement;
    }

    public void soConsumerIndex(long j) {
        this.consumerIndex.lazySet(j);
    }

    public void soElement(int i, E e) {
        lazySet(i, e);
    }

    public void soProducerIndex(long j) {
        this.producerIndex.lazySet(j);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(E e, E e2) {
        return offer(e) && offer(e2);
    }
}
