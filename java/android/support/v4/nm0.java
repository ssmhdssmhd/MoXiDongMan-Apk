package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0004H\u0096\u0002¨\u0006\t"}, d2 = {"Landroid/support/v4/nm0;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "Landroid/support/v4/km0;", "", "iterator", "sequence", "<init>", "(Lkotlin/sequences/Sequence;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class nm0<T> implements Sequence<km0<? extends T>> {

    /* renamed from: do, reason: not valid java name */
    private final Sequence<T> f4263do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0002R\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"android/support/v4/nm0$do", "", "Landroid/support/v4/km0;", "for", "", "hasNext", "iterator", "Ljava/util/Iterator;", "if", "()Ljava/util/Iterator;", "", "index", OptRuntime.GeneratorState.resumptionPoint_TYPE, "do", "()I", "new", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.nm0$do, reason: invalid class name */
    public static final class Cdo implements Iterator<km0<? extends T>>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        @m41
        private final Iterator<T> f4264do;

        /* renamed from: if, reason: not valid java name */
        private int f4266if;

        public Cdo() {
            this.f4264do = nm0.this.f4263do.iterator();
        }

        /* renamed from: do, reason: not valid java name */
        public final int m5273do() {
            return this.f4266if;
        }

        @Override // java.util.Iterator
        @m41
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public km0<T> next() {
            int i = this.f4266if;
            this.f4266if = i + 1;
            if (i < 0) {
                Cthrow.j();
            }
            return new km0<>(i, this.f4264do.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4264do.hasNext();
        }

        @m41
        /* renamed from: if, reason: not valid java name */
        public final Iterator<T> m5275if() {
            return this.f4264do;
        }

        /* renamed from: new, reason: not valid java name */
        public final void m5276new(int i) {
            this.f4266if = i;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public nm0(@m41 Sequence<? extends T> sequence) {
        Csuper.m30700throw(sequence, "sequence");
        this.f4263do = sequence;
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<km0<T>> iterator() {
        return new Cdo();
    }
}
