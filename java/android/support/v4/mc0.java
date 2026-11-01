package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u00028\u00020\u0004BC\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00050\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00020\u0005H\u0096\u0002¨\u0006\f"}, d2 = {"Landroid/support/v4/mc0;", ExifInterface.GPS_DIRECTION_TRUE, "R", ExifInterface.LONGITUDE_EAST, "Lkotlin/sequences/Sequence;", "", "iterator", "sequence", "Lkotlin/Function1;", "transformer", "<init>", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class mc0<T, R, E> implements Sequence<E> {

    /* renamed from: do, reason: not valid java name */
    private final Sequence<T> f3874do;

    /* renamed from: for, reason: not valid java name */
    private final Function1<R, Iterator<E>> f3875for;

    /* renamed from: if, reason: not valid java name */
    private final Function1<T, R> f3876if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\r\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0002H\u0096\u0002R\u001f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR*\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\n\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"android/support/v4/mc0$do", "", "", "do", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "hasNext", "iterator", "Ljava/util/Iterator;", "for", "()Ljava/util/Iterator;", "itemIterator", "if", "new", "(Ljava/util/Iterator;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.mc0$do, reason: invalid class name */
    public static final class Cdo implements Iterator<E>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        @m41
        private final Iterator<T> f3877do;

        /* renamed from: if, reason: not valid java name */
        @z41
        private Iterator<? extends E> f3879if;

        public Cdo() {
            this.f3877do = mc0.this.f3874do.iterator();
        }

        /* renamed from: do, reason: not valid java name */
        private final boolean m4895do() {
            Iterator<? extends E> it = this.f3879if;
            if (it != null && !it.hasNext()) {
                this.f3879if = null;
            }
            while (true) {
                if (this.f3879if != null) {
                    break;
                }
                if (!this.f3877do.hasNext()) {
                    return false;
                }
                Iterator<? extends E> it2 = (Iterator) mc0.this.f3875for.invoke(mc0.this.f3876if.invoke(this.f3877do.next()));
                if (it2.hasNext()) {
                    this.f3879if = it2;
                    break;
                }
            }
            return true;
        }

        @m41
        /* renamed from: for, reason: not valid java name */
        public final Iterator<T> m4896for() {
            return this.f3877do;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return m4895do();
        }

        @z41
        /* renamed from: if, reason: not valid java name */
        public final Iterator<E> m4897if() {
            return this.f3879if;
        }

        /* renamed from: new, reason: not valid java name */
        public final void m4898new(@z41 Iterator<? extends E> it) {
            this.f3879if = it;
        }

        @Override // java.util.Iterator
        public E next() {
            if (!m4895do()) {
                throw new NoSuchElementException();
            }
            Iterator<? extends E> it = this.f3879if;
            Csuper.m30672const(it);
            return it.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public mc0(@m41 Sequence<? extends T> sequence, @m41 Function1<? super T, ? extends R> transformer, @m41 Function1<? super R, ? extends Iterator<? extends E>> iterator) {
        Csuper.m30700throw(sequence, "sequence");
        Csuper.m30700throw(transformer, "transformer");
        Csuper.m30700throw(iterator, "iterator");
        this.f3874do = sequence;
        this.f3876if = transformer;
        this.f3875for = iterator;
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<E> iterator() {
        return new Cdo();
    }
}
