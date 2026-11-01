package kotlin;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.oa2;
import android.support.v4.qa2;
import android.support.v4.up0;
import android.support.v4.wg1;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.collections.Cclass;
import kotlin.jvm.internal.Cfinal;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@up0
@Cbreak
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\b\f\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0014\b\u0001\u0012\u0006\u0010%\u001a\u00020 ø\u0001\u0000¢\u0006\u0004\b(\u0010)B\u0014\b\u0016\u0012\u0006\u0010'\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b*\u0010+J\u001e\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J \u0010\u0013\u001a\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001e\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cHÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fR\u001c\u0010%\u001a\u00020 8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b!\u0010\"\u0012\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u001bø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006,"}, d2 = {"Lkotlin/transient;", "", "Landroid/support/v4/oa2;", "", "index", "break", "([JI)J", ES6Iterator.VALUE_PROPERTY, "Landroid/support/v4/ub2;", "while", "([JIJ)V", "", "throw", "([J)Ljava/util/Iterator;", "element", "", "case", "([JJ)Z", "elements", "else", "([JLjava/util/Collection;)Z", "super", "([J)Z", "", "import", "([J)Ljava/lang/String;", "final", "([J)I", "", "other", "goto", "([JLjava/lang/Object;)Z", "", "do", "[J", "getStorage$annotations", "()V", "storage", "class", "size", "new", "([J)[J", "for", "(I)[J", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.transient, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctransient implements Collection<oa2>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final long[] f28075do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0005\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\f\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0010"}, d2 = {"kotlin/transient$do", "Landroid/support/v4/qa2;", "", "hasNext", "Landroid/support/v4/oa2;", "if", "()J", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "", "[J", "array", "<init>", "([J)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.transient$do, reason: invalid class name */
    public static final class Cdo extends qa2 {

        /* renamed from: do, reason: not valid java name */
        private int f28076do;

        /* renamed from: if, reason: not valid java name */
        private final long[] f28077if;

        public Cdo(@m41 long[] array) {
            Csuper.m30700throw(array, "array");
            this.f28077if = array;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f28076do < this.f28077if.length;
        }

        @Override // android.support.v4.qa2
        /* renamed from: if */
        public long mo6465if() {
            int i = this.f28076do;
            long[] jArr = this.f28077if;
            if (i >= jArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f28076do));
            }
            this.f28076do = i + 1;
            return oa2.m5524goto(jArr[i]);
        }
    }

    @wg1
    private /* synthetic */ Ctransient(long[] storage) {
        Csuper.m30700throw(storage, "storage");
        this.f28075do = storage;
    }

    /* renamed from: break, reason: not valid java name */
    public static final long m31397break(long[] jArr, int i) {
        return oa2.m5524goto(jArr[i]);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m31398case(long[] jArr, long j) {
        return Cclass.b7(jArr, j);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m31399class(long[] jArr) {
        return jArr.length;
    }

    @wg1
    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ void m31400const() {
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m31401else(long[] jArr, @m41 Collection<oa2> elements) {
        Csuper.m30700throw(elements, "elements");
        if (!elements.isEmpty()) {
            for (Object obj : elements) {
                if (!((obj instanceof oa2) && Cclass.b7(jArr, ((oa2) obj).t()))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public static int m31402final(long[] jArr) {
        if (jArr != null) {
            return Arrays.hashCode(jArr);
        }
        return 0;
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public static long[] m31403for(int i) {
        return m31407new(new long[i]);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m31404goto(long[] jArr, Object obj) {
        return (obj instanceof Ctransient) && Csuper.m30676else(jArr, ((Ctransient) obj).m31414native());
    }

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ Ctransient m31405if(long[] v) {
        Csuper.m30700throw(v, "v");
        return new Ctransient(v);
    }

    /* renamed from: import, reason: not valid java name */
    public static String m31406import(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ")";
    }

    @m41
    @wg1
    /* renamed from: new, reason: not valid java name */
    public static long[] m31407new(@m41 long[] storage) {
        Csuper.m30700throw(storage, "storage");
        return storage;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m31408super(long[] jArr) {
        return jArr.length == 0;
    }

    /* renamed from: this, reason: not valid java name */
    public static final boolean m31409this(long[] jArr, long[] jArr2) {
        return Csuper.m30676else(jArr, jArr2);
    }

    @m41
    /* renamed from: throw, reason: not valid java name */
    public static Iterator<oa2> m31410throw(long[] jArr) {
        return new Cdo(jArr);
    }

    /* renamed from: while, reason: not valid java name */
    public static final void m31411while(long[] jArr, int i, long j) {
        jArr[i] = j;
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(oa2 oa2Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends oa2> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: catch, reason: not valid java name */
    public int m31412catch() {
        return m31399class(this.f28075do);
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof oa2) {
            return m31415try(((oa2) obj).t());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@m41 Collection<? extends Object> collection) {
        return m31401else(this.f28075do, collection);
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m31413do(long j) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m31404goto(this.f28075do, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m31402final(this.f28075do);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m31408super(this.f28075do);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @m41
    public Iterator<oa2> iterator() {
        return m31410throw(this.f28075do);
    }

    /* renamed from: native, reason: not valid java name */
    public final /* synthetic */ long[] m31414native() {
        return this.f28075do;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return m31412catch();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return Cfinal.m30663do(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) Cfinal.m30665if(this, tArr);
    }

    public String toString() {
        return m31406import(this.f28075do);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m31415try(long j) {
        return m31398case(this.f28075do, j);
    }
}
