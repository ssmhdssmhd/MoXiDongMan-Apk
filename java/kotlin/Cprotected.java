package kotlin;

import android.support.v4.iz1;
import android.support.v4.ja2;
import android.support.v4.la2;
import android.support.v4.m41;
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
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\f\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0014\b\u0001\u0012\u0006\u0010%\u001a\u00020 ø\u0001\u0000¢\u0006\u0004\b(\u0010)B\u0014\b\u0016\u0012\u0006\u0010'\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b*\u0010+J\u001e\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J \u0010\u0013\u001a\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001e\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cHÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fR\u001c\u0010%\u001a\u00020 8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b!\u0010\"\u0012\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u001bø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006,"}, d2 = {"Lkotlin/protected;", "", "Landroid/support/v4/ja2;", "", "index", "break", "([II)I", ES6Iterator.VALUE_PROPERTY, "Landroid/support/v4/ub2;", "while", "([III)V", "", "throw", "([I)Ljava/util/Iterator;", "element", "", "case", "([II)Z", "elements", "else", "([ILjava/util/Collection;)Z", "super", "([I)Z", "", "import", "([I)Ljava/lang/String;", "final", "([I)I", "", "other", "goto", "([ILjava/lang/Object;)Z", "", "do", "[I", "getStorage$annotations", "()V", "storage", "class", "size", "new", "([I)[I", "for", "(I)[I", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.protected, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprotected implements Collection<ja2>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final int[] f27919do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0005\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\f\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0010"}, d2 = {"kotlin/protected$do", "Landroid/support/v4/la2;", "", "hasNext", "Landroid/support/v4/ja2;", "if", "()I", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "", "[I", "array", "<init>", "([I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.protected$do, reason: invalid class name */
    public static final class Cdo extends la2 {

        /* renamed from: do, reason: not valid java name */
        private int f27920do;

        /* renamed from: if, reason: not valid java name */
        private final int[] f27921if;

        public Cdo(@m41 int[] array) {
            Csuper.m30700throw(array, "array");
            this.f27921if = array;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f27920do < this.f27921if.length;
        }

        @Override // android.support.v4.la2
        /* renamed from: if */
        public int mo4635if() {
            int i = this.f27920do;
            int[] iArr = this.f27921if;
            if (i >= iArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f27920do));
            }
            this.f27920do = i + 1;
            return ja2.m3772goto(iArr[i]);
        }
    }

    @wg1
    private /* synthetic */ Cprotected(int[] storage) {
        Csuper.m30700throw(storage, "storage");
        this.f27919do = storage;
    }

    /* renamed from: break, reason: not valid java name */
    public static final int m30793break(int[] iArr, int i) {
        return ja2.m3772goto(iArr[i]);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m30794case(int[] iArr, int i) {
        return Cclass.a7(iArr, i);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m30795class(int[] iArr) {
        return iArr.length;
    }

    @wg1
    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ void m30796const() {
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m30797else(int[] iArr, @m41 Collection<ja2> elements) {
        Csuper.m30700throw(elements, "elements");
        if (!elements.isEmpty()) {
            for (Object obj : elements) {
                if (!((obj instanceof ja2) && Cclass.a7(iArr, ((ja2) obj).t()))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public static int m30798final(int[] iArr) {
        if (iArr != null) {
            return Arrays.hashCode(iArr);
        }
        return 0;
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public static int[] m30799for(int i) {
        return m30803new(new int[i]);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m30800goto(int[] iArr, Object obj) {
        return (obj instanceof Cprotected) && Csuper.m30676else(iArr, ((Cprotected) obj).m30810native());
    }

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ Cprotected m30801if(int[] v) {
        Csuper.m30700throw(v, "v");
        return new Cprotected(v);
    }

    /* renamed from: import, reason: not valid java name */
    public static String m30802import(int[] iArr) {
        return "UIntArray(storage=" + Arrays.toString(iArr) + ")";
    }

    @m41
    @wg1
    /* renamed from: new, reason: not valid java name */
    public static int[] m30803new(@m41 int[] storage) {
        Csuper.m30700throw(storage, "storage");
        return storage;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m30804super(int[] iArr) {
        return iArr.length == 0;
    }

    /* renamed from: this, reason: not valid java name */
    public static final boolean m30805this(int[] iArr, int[] iArr2) {
        return Csuper.m30676else(iArr, iArr2);
    }

    @m41
    /* renamed from: throw, reason: not valid java name */
    public static Iterator<ja2> m30806throw(int[] iArr) {
        return new Cdo(iArr);
    }

    /* renamed from: while, reason: not valid java name */
    public static final void m30807while(int[] iArr, int i, int i2) {
        iArr[i] = i2;
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(ja2 ja2Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends ja2> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: catch, reason: not valid java name */
    public int m30808catch() {
        return m30795class(this.f27919do);
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ja2) {
            return m30811try(((ja2) obj).t());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@m41 Collection<? extends Object> collection) {
        return m30797else(this.f27919do, collection);
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m30809do(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m30800goto(this.f27919do, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m30798final(this.f27919do);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m30804super(this.f27919do);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @m41
    public Iterator<ja2> iterator() {
        return m30806throw(this.f27919do);
    }

    /* renamed from: native, reason: not valid java name */
    public final /* synthetic */ int[] m30810native() {
        return this.f27919do;
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
        return m30808catch();
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
        return m30802import(this.f27919do);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m30811try(int i) {
        return m30794case(this.f27919do, i);
    }
}
