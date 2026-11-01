package kotlin.sequences;

import android.support.v4.m41;
import android.support.v4.od1;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u000f\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0096\u0002R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0014\u001a\u00020\u00048B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lkotlin/sequences/const;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "", "n", "drop", "take", "", "iterator", "do", "Lkotlin/sequences/Sequence;", "sequence", "if", OptRuntime.GeneratorState.resumptionPoint_TYPE, "startIndex", "for", "endIndex", "new", "()I", "count", "<init>", "(Lkotlin/sequences/Sequence;II)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.sequences.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst<T> implements Sequence<T>, DropTakeSequence<T> {

    /* renamed from: do, reason: not valid java name */
    private final Sequence<T> f27980do;

    /* renamed from: for, reason: not valid java name */
    private final int f27981for;

    /* renamed from: if, reason: not valid java name */
    private final int f27982if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002J\u0010\u0010\u0006\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\"\u0010\u0012\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"kotlin/sequences/const$do", "", "Landroid/support/v4/ub2;", "do", "", "hasNext", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "Ljava/util/Iterator;", "if", "()Ljava/util/Iterator;", "iterator", "", OptRuntime.GeneratorState.resumptionPoint_TYPE, "for", "()I", "new", "(I)V", od1.f4551case, "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.const$do, reason: invalid class name */
    public static final class Cdo implements Iterator<T>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        @m41
        private final Iterator<T> f27983do;

        /* renamed from: if, reason: not valid java name */
        private int f27985if;

        public Cdo() {
            this.f27983do = Cconst.this.f27980do.iterator();
        }

        /* renamed from: do, reason: not valid java name */
        private final void m31055do() {
            while (this.f27985if < Cconst.this.f27982if && this.f27983do.hasNext()) {
                this.f27983do.next();
                this.f27985if++;
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final int m31056for() {
            return this.f27985if;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m31055do();
            return this.f27985if < Cconst.this.f27981for && this.f27983do.hasNext();
        }

        @m41
        /* renamed from: if, reason: not valid java name */
        public final Iterator<T> m31057if() {
            return this.f27983do;
        }

        /* renamed from: new, reason: not valid java name */
        public final void m31058new(int i) {
            this.f27985if = i;
        }

        @Override // java.util.Iterator
        public T next() {
            m31055do();
            if (this.f27985if >= Cconst.this.f27981for) {
                throw new NoSuchElementException();
            }
            this.f27985if++;
            return this.f27983do.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cconst(@m41 Sequence<? extends T> sequence, int i, int i2) {
        Csuper.m30700throw(sequence, "sequence");
        this.f27980do = sequence;
        this.f27982if = i;
        this.f27981for = i2;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("startIndex should be non-negative, but is " + i).toString());
        }
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException(("endIndex should be non-negative, but is " + i2).toString());
        }
        if (i2 >= i) {
            return;
        }
        throw new IllegalArgumentException(("endIndex should be not less than startIndex, but was " + i2 + " < " + i).toString());
    }

    /* renamed from: new, reason: not valid java name */
    private final int m31054new() {
        return this.f27981for - this.f27982if;
    }

    @Override // kotlin.sequences.DropTakeSequence
    @m41
    public Sequence<T> drop(int i) {
        return i >= m31054new() ? Cbreak.m31014break() : new Cconst(this.f27980do, this.f27982if + i, this.f27981for);
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<T> iterator() {
        return new Cdo();
    }

    @Override // kotlin.sequences.DropTakeSequence
    @m41
    public Sequence<T> take(int i) {
        if (i >= m31054new()) {
            return this;
        }
        Sequence<T> sequence = this.f27980do;
        int i2 = this.f27982if;
        return new Cconst(sequence, i2, i + i2);
    }
}
