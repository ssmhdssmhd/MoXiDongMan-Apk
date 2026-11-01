package kotlin.sequences;

import android.support.v4.m41;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B-\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006\u0012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0096\u0002R\u001e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlin/sequences/try;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "", "iterator", "Lkotlin/Function0;", "do", "Lkotlin/jvm/functions/Function0;", "getInitialValue", "Lkotlin/Function1;", "if", "Lkotlin/jvm/functions/Function1;", "getNextValue", "<init>", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.sequences.try, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ctry<T> implements Sequence<T> {

    /* renamed from: do, reason: not valid java name */
    private final Function0<T> f28010do;

    /* renamed from: if, reason: not valid java name */
    private final Function1<T, T> f28011if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0006H\u0096\u0002R$\u0010\f\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"kotlin/sequences/try$do", "", "Landroid/support/v4/ub2;", "do", ES6Iterator.NEXT_METHOD, "()Ljava/lang/Object;", "", "hasNext", "Ljava/lang/Object;", "if", "new", "(Ljava/lang/Object;)V", "nextItem", "", OptRuntime.GeneratorState.resumptionPoint_TYPE, "for", "()I", "try", "(I)V", "nextState", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.sequences.try$do, reason: invalid class name */
    public static final class Cdo implements Iterator<T>, KMappedMarker {

        /* renamed from: do, reason: not valid java name */
        @z41
        private T f28012do;

        /* renamed from: if, reason: not valid java name */
        private int f28014if = -2;

        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        private final void m31091do() {
            T t;
            if (this.f28014if == -2) {
                t = (T) Ctry.this.f28010do.invoke();
            } else {
                Function1 function1 = Ctry.this.f28011if;
                T t2 = this.f28012do;
                Csuper.m30672const(t2);
                t = (T) function1.invoke(t2);
            }
            this.f28012do = t;
            this.f28014if = t == null ? 0 : 1;
        }

        /* renamed from: for, reason: not valid java name */
        public final int m31092for() {
            return this.f28014if;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f28014if < 0) {
                m31091do();
            }
            return this.f28014if == 1;
        }

        @z41
        /* renamed from: if, reason: not valid java name */
        public final T m31093if() {
            return this.f28012do;
        }

        /* renamed from: new, reason: not valid java name */
        public final void m31094new(@z41 T t) {
            this.f28012do = t;
        }

        @Override // java.util.Iterator
        @m41
        public T next() {
            if (this.f28014if < 0) {
                m31091do();
            }
            if (this.f28014if == 0) {
                throw new NoSuchElementException();
            }
            T t = this.f28012do;
            Objects.requireNonNull(t, "null cannot be cast to non-null type T");
            this.f28014if = -1;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        /* renamed from: try, reason: not valid java name */
        public final void m31095try(int i) {
            this.f28014if = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Ctry(@m41 Function0<? extends T> getInitialValue, @m41 Function1<? super T, ? extends T> getNextValue) {
        Csuper.m30700throw(getInitialValue, "getInitialValue");
        Csuper.m30700throw(getNextValue, "getNextValue");
        this.f28010do = getInitialValue;
        this.f28011if = getNextValue;
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<T> iterator() {
        return new Cdo();
    }
}
