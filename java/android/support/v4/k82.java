package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B)\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0096\u0002J5\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00020\u0003\"\u0004\b\u0002\u0010\u00062\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00040\u0007H\u0000¢\u0006\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Landroid/support/v4/k82;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/sequences/Sequence;", "", "iterator", ExifInterface.LONGITUDE_EAST, "Lkotlin/Function1;", "for", "(Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;", "sequence", "transformer", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class k82<T, R> implements Sequence<R> {

    /* renamed from: do, reason: not valid java name */
    private final Sequence<T> f3326do;

    /* renamed from: if, reason: not valid java name */
    private final Function1<T, R> f3327if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002R\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"android/support/v4/k82$do", "", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "", "hasNext", "iterator", "Ljava/util/Iterator;", "do", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.k82$do, reason: invalid class name */
    public static final class Cdo implements Iterator<R>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        @m41
        private final Iterator<T> f3328do;

        public Cdo() {
            this.f3328do = k82.this.f3326do.iterator();
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final Iterator<T> m4287do() {
            return this.f3328do;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3328do.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) k82.this.f3327if.invoke(this.f3328do.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k82(@m41 Sequence<? extends T> sequence, @m41 Function1<? super T, ? extends R> transformer) {
        Csuper.m30700throw(sequence, "sequence");
        Csuper.m30700throw(transformer, "transformer");
        this.f3326do = sequence;
        this.f3327if = transformer;
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public final <E> Sequence<E> m4286for(@m41 Function1<? super R, ? extends Iterator<? extends E>> iterator) {
        Csuper.m30700throw(iterator, "iterator");
        return new mc0(this.f3326do, this.f3327if, iterator);
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<R> iterator() {
        return new Cdo();
    }
}
