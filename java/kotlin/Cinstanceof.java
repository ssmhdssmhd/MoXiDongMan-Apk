package kotlin;

import android.support.v4.ab2;
import android.support.v4.cb2;
import android.support.v4.iz1;
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
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0017\n\u0002\b\f\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0014\b\u0001\u0012\u0006\u0010%\u001a\u00020 ø\u0001\u0000¢\u0006\u0004\b(\u0010)B\u0014\b\u0016\u0012\u0006\u0010'\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b*\u0010+J\u001e\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J \u0010\u0013\u001a\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001e\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cHÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fR\u001c\u0010%\u001a\u00020 8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b!\u0010\"\u0012\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u001bø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006,"}, d2 = {"Lkotlin/instanceof;", "", "Landroid/support/v4/ab2;", "", "index", "break", "([SI)S", ES6Iterator.VALUE_PROPERTY, "Landroid/support/v4/ub2;", "while", "([SIS)V", "", "throw", "([S)Ljava/util/Iterator;", "element", "", "case", "([SS)Z", "elements", "else", "([SLjava/util/Collection;)Z", "super", "([S)Z", "", "import", "([S)Ljava/lang/String;", "final", "([S)I", "", "other", "goto", "([SLjava/lang/Object;)Z", "", "do", "[S", "getStorage$annotations", "()V", "storage", "class", "size", "new", "([S)[S", "for", "(I)[S", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.instanceof, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cinstanceof implements Collection<ab2>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final short[] f27817do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0017\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0005\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\f\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0010"}, d2 = {"kotlin/instanceof$do", "Landroid/support/v4/cb2;", "", "hasNext", "Landroid/support/v4/ab2;", "if", "()S", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "", "[S", "array", "<init>", "([S)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.instanceof$do, reason: invalid class name */
    public static final class Cdo extends cb2 {

        /* renamed from: do, reason: not valid java name */
        private int f27818do;

        /* renamed from: if, reason: not valid java name */
        private final short[] f27819if;

        public Cdo(@m41 short[] array) {
            Csuper.m30700throw(array, "array");
            this.f27819if = array;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f27818do < this.f27819if.length;
        }

        @Override // android.support.v4.cb2
        /* renamed from: if */
        public short mo842if() {
            int i = this.f27818do;
            short[] sArr = this.f27819if;
            if (i >= sArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f27818do));
            }
            this.f27818do = i + 1;
            return ab2.m140goto(sArr[i]);
        }
    }

    @wg1
    private /* synthetic */ Cinstanceof(short[] storage) {
        Csuper.m30700throw(storage, "storage");
        this.f27817do = storage;
    }

    /* renamed from: break, reason: not valid java name */
    public static final short m30484break(short[] sArr, int i) {
        return ab2.m140goto(sArr[i]);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m30485case(short[] sArr, short s) {
        return Cclass.d7(sArr, s);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m30486class(short[] sArr) {
        return sArr.length;
    }

    @wg1
    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ void m30487const() {
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m30488else(short[] sArr, @m41 Collection<ab2> elements) {
        Csuper.m30700throw(elements, "elements");
        if (!elements.isEmpty()) {
            for (Object obj : elements) {
                if (!((obj instanceof ab2) && Cclass.d7(sArr, ((ab2) obj).r()))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public static int m30489final(short[] sArr) {
        if (sArr != null) {
            return Arrays.hashCode(sArr);
        }
        return 0;
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public static short[] m30490for(int i) {
        return m30494new(new short[i]);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m30491goto(short[] sArr, Object obj) {
        return (obj instanceof Cinstanceof) && Csuper.m30676else(sArr, ((Cinstanceof) obj).m30501native());
    }

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ Cinstanceof m30492if(short[] v) {
        Csuper.m30700throw(v, "v");
        return new Cinstanceof(v);
    }

    /* renamed from: import, reason: not valid java name */
    public static String m30493import(short[] sArr) {
        return "UShortArray(storage=" + Arrays.toString(sArr) + ")";
    }

    @m41
    @wg1
    /* renamed from: new, reason: not valid java name */
    public static short[] m30494new(@m41 short[] storage) {
        Csuper.m30700throw(storage, "storage");
        return storage;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m30495super(short[] sArr) {
        return sArr.length == 0;
    }

    /* renamed from: this, reason: not valid java name */
    public static final boolean m30496this(short[] sArr, short[] sArr2) {
        return Csuper.m30676else(sArr, sArr2);
    }

    @m41
    /* renamed from: throw, reason: not valid java name */
    public static Iterator<ab2> m30497throw(short[] sArr) {
        return new Cdo(sArr);
    }

    /* renamed from: while, reason: not valid java name */
    public static final void m30498while(short[] sArr, int i, short s) {
        sArr[i] = s;
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(ab2 ab2Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends ab2> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: catch, reason: not valid java name */
    public int m30499catch() {
        return m30486class(this.f27817do);
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ab2) {
            return m30502try(((ab2) obj).r());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@m41 Collection<? extends Object> collection) {
        return m30488else(this.f27817do, collection);
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m30500do(short s) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m30491goto(this.f27817do, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m30489final(this.f27817do);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m30495super(this.f27817do);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @m41
    public Iterator<ab2> iterator() {
        return m30497throw(this.f27817do);
    }

    /* renamed from: native, reason: not valid java name */
    public final /* synthetic */ short[] m30501native() {
        return this.f27817do;
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
        return m30499catch();
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
        return m30493import(this.f27817do);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m30502try(short s) {
        return m30485case(this.f27817do, s);
    }
}
