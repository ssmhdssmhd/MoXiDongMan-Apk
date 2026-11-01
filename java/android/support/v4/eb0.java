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
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B3\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002¨\u0006\f"}, d2 = {"Landroid/support/v4/eb0;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "", "iterator", "sequence", "", "sendWhen", "Lkotlin/Function1;", "predicate", "<init>", "(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class eb0<T> implements Sequence<T> {

    /* renamed from: do, reason: not valid java name */
    private final Sequence<T> f1342do;

    /* renamed from: for, reason: not valid java name */
    private final Function1<T, Boolean> f1343for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f1344if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\f\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0006H\u0096\u0002R\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0013\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0005\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"android/support/v4/eb0$do", "", "Landroid/support/v4/ub2;", "do", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "", "hasNext", "iterator", "Ljava/util/Iterator;", "if", "()Ljava/util/Iterator;", "", "nextState", OptRuntime.GeneratorState.resumptionPoint_TYPE, "new", "()I", "case", "(I)V", "nextItem", "Ljava/lang/Object;", "for", "try", "(Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: android.support.v4.eb0$do, reason: invalid class name */
    public static final class Cdo implements Iterator<T>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        @m41
        private final Iterator<T> f1345do;

        /* renamed from: for, reason: not valid java name */
        @z41
        private T f1346for;

        /* renamed from: if, reason: not valid java name */
        private int f1347if = -1;

        public Cdo() {
            this.f1345do = eb0.this.f1342do.iterator();
        }

        /* renamed from: do, reason: not valid java name */
        private final void m1757do() {
            while (this.f1345do.hasNext()) {
                T next = this.f1345do.next();
                if (((Boolean) eb0.this.f1343for.invoke(next)).booleanValue() == eb0.this.f1344if) {
                    this.f1346for = next;
                    this.f1347if = 1;
                    return;
                }
            }
            this.f1347if = 0;
        }

        /* renamed from: case, reason: not valid java name */
        public final void m1758case(int i) {
            this.f1347if = i;
        }

        @z41
        /* renamed from: for, reason: not valid java name */
        public final T m1759for() {
            return this.f1346for;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f1347if == -1) {
                m1757do();
            }
            return this.f1347if == 1;
        }

        @m41
        /* renamed from: if, reason: not valid java name */
        public final Iterator<T> m1760if() {
            return this.f1345do;
        }

        /* renamed from: new, reason: not valid java name */
        public final int m1761new() {
            return this.f1347if;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.f1347if == -1) {
                m1757do();
            }
            if (this.f1347if == 0) {
                throw new NoSuchElementException();
            }
            T t = this.f1346for;
            this.f1346for = null;
            this.f1347if = -1;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        /* renamed from: try, reason: not valid java name */
        public final void m1762try(@z41 T t) {
            this.f1346for = t;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public eb0(@m41 Sequence<? extends T> sequence, boolean z, @m41 Function1<? super T, Boolean> predicate) {
        Csuper.m30700throw(sequence, "sequence");
        Csuper.m30700throw(predicate, "predicate");
        this.f1342do = sequence;
        this.f1344if = z;
        this.f1343for = predicate;
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<T> iterator() {
        return new Cdo();
    }

    public /* synthetic */ eb0(Sequence sequence, boolean z, Function1 function1, int i, rx rxVar) {
        this(sequence, (i & 2) != 0 ? true : z, function1);
    }
}
