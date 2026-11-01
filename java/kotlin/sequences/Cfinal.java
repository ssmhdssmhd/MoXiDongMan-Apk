package kotlin.sequences;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.apache.commons.lang3.Ctry;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\n\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0096\u0002R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlin/sequences/final;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "", "n", "drop", "take", "", "iterator", "do", "Lkotlin/sequences/Sequence;", "sequence", "if", OptRuntime.GeneratorState.resumptionPoint_TYPE, "count", "<init>", "(Lkotlin/sequences/Sequence;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.sequences.final, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinal<T> implements Sequence<T>, DropTakeSequence<T> {

    /* renamed from: do, reason: not valid java name */
    private final Sequence<T> f27989do;

    /* renamed from: if, reason: not valid java name */
    private final int f27990if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u000e\u001a\u0004\b\u0007\u0010\u000f¨\u0006\u0011"}, d2 = {"kotlin/sequences/final$do", "", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "", "hasNext", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "if", "()I", "for", "(I)V", "left", "Ljava/util/Iterator;", "()Ljava/util/Iterator;", "iterator", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.final$do, reason: invalid class name */
    public static final class Cdo implements Iterator<T>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        private int f27991do;

        /* renamed from: if, reason: not valid java name */
        @m41
        private final Iterator<T> f27993if;

        public Cdo() {
            this.f27991do = Cfinal.this.f27990if;
            this.f27993if = Cfinal.this.f27989do.iterator();
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final Iterator<T> m31068do() {
            return this.f27993if;
        }

        /* renamed from: for, reason: not valid java name */
        public final void m31069for(int i) {
            this.f27991do = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f27991do > 0 && this.f27993if.hasNext();
        }

        /* renamed from: if, reason: not valid java name */
        public final int m31070if() {
            return this.f27991do;
        }

        @Override // java.util.Iterator
        public T next() {
            int i = this.f27991do;
            if (i == 0) {
                throw new NoSuchElementException();
            }
            this.f27991do = i - 1;
            return this.f27993if.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cfinal(@m41 Sequence<? extends T> sequence, int i) {
        Csuper.m30700throw(sequence, "sequence");
        this.f27989do = sequence;
        this.f27990if = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + Ctry.f28883do).toString());
    }

    @Override // kotlin.sequences.DropTakeSequence
    @m41
    public Sequence<T> drop(int i) {
        int i2 = this.f27990if;
        return i >= i2 ? Cbreak.m31014break() : new Cconst(this.f27989do, i, i2);
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<T> iterator() {
        return new Cdo();
    }

    @Override // kotlin.sequences.DropTakeSequence
    @m41
    public Sequence<T> take(int i) {
        return i >= this.f27990if ? this : new Cfinal(this.f27989do, i);
    }
}
