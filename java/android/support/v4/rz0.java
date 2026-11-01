package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u00028\u00020\u0004B=\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00020\u0005H\u0096\u0002¨\u0006\r"}, d2 = {"Landroid/support/v4/rz0;", "T1", "T2", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/sequences/Sequence;", "", "iterator", "sequence1", "sequence2", "Lkotlin/Function2;", "transform", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class rz0<T1, T2, V> implements Sequence<V> {

    /* renamed from: do, reason: not valid java name */
    private final Sequence<T1> f5967do;

    /* renamed from: for, reason: not valid java name */
    private final Function2<T1, T2, V> f5968for;

    /* renamed from: if, reason: not valid java name */
    private final Sequence<T2> f5969if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002R\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0007\u001a\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"android/support/v4/rz0$do", "", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "", "hasNext", "iterator1", "Ljava/util/Iterator;", "do", "()Ljava/util/Iterator;", "iterator2", "if", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.rz0$do, reason: invalid class name */
    public static final class Cdo implements Iterator<V>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        @m41
        private final Iterator<T1> f5970do;

        /* renamed from: if, reason: not valid java name */
        @m41
        private final Iterator<T2> f5972if;

        public Cdo() {
            this.f5970do = rz0.this.f5967do.iterator();
            this.f5972if = rz0.this.f5969if.iterator();
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final Iterator<T1> m7213do() {
            return this.f5970do;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f5970do.hasNext() && this.f5972if.hasNext();
        }

        @m41
        /* renamed from: if, reason: not valid java name */
        public final Iterator<T2> m7214if() {
            return this.f5972if;
        }

        @Override // java.util.Iterator
        public V next() {
            return (V) rz0.this.f5968for.invoke(this.f5970do.next(), this.f5972if.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public rz0(@m41 Sequence<? extends T1> sequence1, @m41 Sequence<? extends T2> sequence2, @m41 Function2<? super T1, ? super T2, ? extends V> transform) {
        Csuper.m30700throw(sequence1, "sequence1");
        Csuper.m30700throw(sequence2, "sequence2");
        Csuper.m30700throw(transform, "transform");
        this.f5967do = sequence1;
        this.f5969if = sequence2;
        this.f5968for = transform;
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<V> iterator() {
        return new Cdo();
    }
}
