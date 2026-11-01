package kotlin.sequences;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.apache.commons.lang3.Ctry;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\n\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0096\u0002R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlin/sequences/for;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "", "n", "drop", "take", "", "iterator", "do", "Lkotlin/sequences/Sequence;", "sequence", "if", OptRuntime.GeneratorState.resumptionPoint_TYPE, "count", "<init>", "(Lkotlin/sequences/Sequence;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.sequences.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<T> implements Sequence<T>, DropTakeSequence<T> {

    /* renamed from: do, reason: not valid java name */
    private final Sequence<T> f27994do;

    /* renamed from: if, reason: not valid java name */
    private final int f27995if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0006H\u0096\u0002R\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\"\u0010\u0012\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"kotlin/sequences/for$do", "", "Landroid/support/v4/ub2;", "do", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "", "hasNext", "Ljava/util/Iterator;", "if", "()Ljava/util/Iterator;", "iterator", "", OptRuntime.GeneratorState.resumptionPoint_TYPE, "for", "()I", "new", "(I)V", "left", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.for$do, reason: invalid class name */
    public static final class Cdo implements Iterator<T>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        @m41
        private final Iterator<T> f27996do;

        /* renamed from: if, reason: not valid java name */
        private int f27998if;

        public Cdo() {
            this.f27996do = Cfor.this.f27994do.iterator();
            this.f27998if = Cfor.this.f27995if;
        }

        /* renamed from: do, reason: not valid java name */
        private final void m31073do() {
            while (this.f27998if > 0 && this.f27996do.hasNext()) {
                this.f27996do.next();
                this.f27998if--;
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final int m31074for() {
            return this.f27998if;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m31073do();
            return this.f27996do.hasNext();
        }

        @m41
        /* renamed from: if, reason: not valid java name */
        public final Iterator<T> m31075if() {
            return this.f27996do;
        }

        /* renamed from: new, reason: not valid java name */
        public final void m31076new(int i) {
            this.f27998if = i;
        }

        @Override // java.util.Iterator
        public T next() {
            m31073do();
            return this.f27996do.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cfor(@m41 Sequence<? extends T> sequence, int i) {
        Csuper.m30700throw(sequence, "sequence");
        this.f27994do = sequence;
        this.f27995if = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + Ctry.f28883do).toString());
    }

    @Override // kotlin.sequences.DropTakeSequence
    @m41
    public Sequence<T> drop(int i) {
        int i2 = this.f27995if + i;
        return i2 < 0 ? new Cfor(this, i) : new Cfor(this.f27994do, i2);
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<T> iterator() {
        return new Cdo();
    }

    @Override // kotlin.sequences.DropTakeSequence
    @m41
    public Sequence<T> take(int i) {
        int i2 = this.f27995if;
        int i3 = i2 + i;
        return i3 < 0 ? new Cfinal(this, i) : new Cconst(this.f27994do, i2, i3);
    }
}
