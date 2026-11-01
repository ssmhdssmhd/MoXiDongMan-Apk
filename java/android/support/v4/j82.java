package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B/\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0096\u0002¨\u0006\f"}, d2 = {"Landroid/support/v4/j82;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/sequences/Sequence;", "", "iterator", "sequence", "Lkotlin/Function2;", "", "transformer", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class j82<T, R> implements Sequence<R> {

    /* renamed from: do, reason: not valid java name */
    private final Sequence<T> f3031do;

    /* renamed from: if, reason: not valid java name */
    private final Function2<Integer, T, R> f3032if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002R\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"android/support/v4/j82$do", "", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "", "hasNext", "iterator", "Ljava/util/Iterator;", "if", "()Ljava/util/Iterator;", "", "index", OptRuntime.GeneratorState.resumptionPoint_TYPE, "do", "()I", "for", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.j82$do, reason: invalid class name */
    public static final class Cdo implements Iterator<R>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        @m41
        private final Iterator<T> f3033do;

        /* renamed from: if, reason: not valid java name */
        private int f3035if;

        public Cdo() {
            this.f3033do = j82.this.f3031do.iterator();
        }

        /* renamed from: do, reason: not valid java name */
        public final int m3750do() {
            return this.f3035if;
        }

        /* renamed from: for, reason: not valid java name */
        public final void m3751for(int i) {
            this.f3035if = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3033do.hasNext();
        }

        @m41
        /* renamed from: if, reason: not valid java name */
        public final Iterator<T> m3752if() {
            return this.f3033do;
        }

        @Override // java.util.Iterator
        public R next() {
            Function2 function2 = j82.this.f3032if;
            int i = this.f3035if;
            this.f3035if = i + 1;
            if (i < 0) {
                Cthrow.j();
            }
            return (R) function2.invoke(Integer.valueOf(i), this.f3033do.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j82(@m41 Sequence<? extends T> sequence, @m41 Function2<? super Integer, ? super T, ? extends R> transformer) {
        Csuper.m30700throw(sequence, "sequence");
        Csuper.m30700throw(transformer, "transformer");
        this.f3031do = sequence;
        this.f3032if = transformer;
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<R> iterator() {
        return new Cdo();
    }
}
