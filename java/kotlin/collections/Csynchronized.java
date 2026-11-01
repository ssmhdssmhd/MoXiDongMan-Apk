package kotlin.collections;

import android.support.v4.m41;
import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u0004B\u001f\u0012\u000e\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000f\u0012\u0006\u0010)\u001a\u00020\u0005¢\u0006\u0004\b*\u0010+B\u0011\b\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0005¢\u0006\u0004\b*\u0010,J\u0015\u0010\u0007\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0082\bJ\u0018\u0010\t\u001a\u00028\u00002\u0006\u0010\b\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\f\u001a\u00020\u000bJ\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0096\u0002J)\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f\"\u0004\b\u0001\u0010\u00012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0014J\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0015\u001a\u00020\u0005J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00028\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0005R\u0016\u0010\u001e\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR$\u0010%\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u00058\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010$R\u001e\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006-"}, d2 = {"Lkotlin/collections/synchronized;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/collections/new;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "n", "break", "index", "get", "(I)Ljava/lang/Object;", "", "catch", "", "iterator", "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "maxCapacity", "this", "element", "Landroid/support/v4/ub2;", "goto", "(Ljava/lang/Object;)V", "class", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "capacity", "if", "startIndex", "<set-?>", "for", "getSize", "()I", "size", "new", "[Ljava/lang/Object;", "buffer", "filledSize", "<init>", "([Ljava/lang/Object;I)V", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.collections.synchronized, reason: invalid class name */
/* loaded from: classes3.dex */
final class Csynchronized<T> extends Cnew<T> implements RandomAccess {

    /* renamed from: do, reason: not valid java name */
    private final int f27736do;

    /* renamed from: for, reason: not valid java name */
    private int f27737for;

    /* renamed from: if, reason: not valid java name */
    private int f27738if;

    /* renamed from: new, reason: not valid java name */
    private final Object[] f27739new;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0014R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0006¨\u0006\n"}, d2 = {"kotlin/collections/synchronized$do", "Lkotlin/collections/for;", "Landroid/support/v4/ub2;", "do", "", "for", OptRuntime.GeneratorState.resumptionPoint_TYPE, "count", "new", "index", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.synchronized$do, reason: invalid class name */
    public static final class Cdo extends Cfor<T> {

        /* renamed from: for, reason: not valid java name */
        private int f27740for;

        /* renamed from: new, reason: not valid java name */
        private int f27741new;

        public Cdo() {
            this.f27740for = Csynchronized.this.size();
            this.f27741new = Csynchronized.this.f27738if;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.collections.Cfor
        /* renamed from: do */
        public void mo30083do() {
            if (this.f27740for == 0) {
                m30085if();
                return;
            }
            m30084for(Csynchronized.this.f27739new[this.f27741new]);
            this.f27741new = (this.f27741new + 1) % Csynchronized.this.f27736do;
            this.f27740for--;
        }
    }

    public Csynchronized(@m41 Object[] buffer, int i) {
        Csuper.m30700throw(buffer, "buffer");
        this.f27739new = buffer;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i).toString());
        }
        if (i <= buffer.length) {
            this.f27736do = buffer.length;
            this.f27737for = i;
            return;
        }
        throw new IllegalArgumentException(("ring buffer filled size: " + i + " cannot be larger than the buffer size: " + buffer.length).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public final int m30156break(int i, int i2) {
        return (i + i2) % this.f27736do;
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m30164catch() {
        return size() == this.f27736do;
    }

    /* renamed from: class, reason: not valid java name */
    public final void m30165class(int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("n shouldn't be negative but it is " + i).toString());
        }
        if (!(i <= size())) {
            throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i + ", size = " + size()).toString());
        }
        if (i > 0) {
            int i2 = this.f27738if;
            int i3 = (i2 + i) % this.f27736do;
            if (i2 > i3) {
                Ccatch.A1(this.f27739new, null, i2, this.f27736do);
                Ccatch.A1(this.f27739new, null, 0, i3);
            } else {
                Ccatch.A1(this.f27739new, null, i2, i3);
            }
            this.f27738if = i3;
            this.f27737for = size() - i;
        }
    }

    @Override // kotlin.collections.Cnew, java.util.List
    public T get(int i) {
        Cnew.Companion.m30122if(i, size());
        return (T) this.f27739new[(this.f27738if + i) % this.f27736do];
    }

    @Override // kotlin.collections.Cnew, kotlin.collections.Cdo
    public int getSize() {
        return this.f27737for;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m30166goto(T t) {
        if (m30164catch()) {
            throw new IllegalStateException("ring buffer is full");
        }
        this.f27739new[(this.f27738if + size()) % this.f27736do] = t;
        this.f27737for = size() + 1;
    }

    @Override // kotlin.collections.Cnew, kotlin.collections.Cdo, java.util.Collection, java.lang.Iterable, java.util.Set
    @m41
    public Iterator<T> iterator() {
        return new Cdo();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m41
    /* renamed from: this, reason: not valid java name */
    public final Csynchronized<T> m30167this(int i) {
        Object[] array;
        int i2 = this.f27736do;
        int iM30885return = Ccase.m30885return(i2 + (i2 >> 1) + 1, i);
        if (this.f27738if == 0) {
            array = Arrays.copyOf(this.f27739new, iM30885return);
            Csuper.m30696super(array, "java.util.Arrays.copyOf(this, newSize)");
        } else {
            array = toArray(new Object[iM30885return]);
        }
        return new Csynchronized<>(array, size());
    }

    @Override // kotlin.collections.Cdo, java.util.Collection
    @m41
    public <T> T[] toArray(@m41 T[] array) {
        Csuper.m30700throw(array, "array");
        if (array.length < size()) {
            array = (T[]) Arrays.copyOf(array, size());
            Csuper.m30696super(array, "java.util.Arrays.copyOf(this, newSize)");
        }
        int size = size();
        int i = 0;
        int i2 = 0;
        for (int i3 = this.f27738if; i2 < size && i3 < this.f27736do; i3++) {
            array[i2] = this.f27739new[i3];
            i2++;
        }
        while (i2 < size) {
            array[i2] = this.f27739new[i];
            i2++;
            i++;
        }
        if (array.length > size()) {
            array[size()] = null;
        }
        return array;
    }

    public Csynchronized(int i) {
        this(new Object[i], 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.Cdo, java.util.Collection
    @m41
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
