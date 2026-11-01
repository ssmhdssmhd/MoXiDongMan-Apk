package kotlin;

import android.support.v4.ea2;
import android.support.v4.ga2;
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
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\f\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0014\b\u0001\u0012\u0006\u0010%\u001a\u00020 ø\u0001\u0000¢\u0006\u0004\b(\u0010)B\u0014\b\u0016\u0012\u0006\u0010'\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b*\u0010+J\u001e\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J \u0010\u0013\u001a\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001e\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cHÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fR\u001c\u0010%\u001a\u00020 8\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b!\u0010\"\u0012\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010\u001bø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006,"}, d2 = {"Lkotlin/interface;", "", "Landroid/support/v4/ea2;", "", "index", "break", "([BI)B", ES6Iterator.VALUE_PROPERTY, "Landroid/support/v4/ub2;", "while", "([BIB)V", "", "throw", "([B)Ljava/util/Iterator;", "element", "", "case", "([BB)Z", "elements", "else", "([BLjava/util/Collection;)Z", "super", "([B)Z", "", "import", "([B)Ljava/lang/String;", "final", "([B)I", "", "other", "goto", "([BLjava/lang/Object;)Z", "", "do", "[B", "getStorage$annotations", "()V", "storage", "class", "size", "new", "([B)[B", "for", "(I)[B", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.interface, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cinterface implements Collection<ea2>, KMappedMarker {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final byte[] f27820do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0002J\u0015\u0010\u0005\u001a\u00020\u0004H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\f\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0010"}, d2 = {"kotlin/interface$do", "Landroid/support/v4/ga2;", "", "hasNext", "Landroid/support/v4/ea2;", "if", "()B", "", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "", "[B", "array", "<init>", "([B)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.interface$do, reason: invalid class name */
    public static final class Cdo extends ga2 {

        /* renamed from: do, reason: not valid java name */
        private int f27821do;

        /* renamed from: if, reason: not valid java name */
        private final byte[] f27822if;

        public Cdo(@m41 byte[] array) {
            Csuper.m30700throw(array, "array");
            this.f27822if = array;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f27821do < this.f27822if.length;
        }

        @Override // android.support.v4.ga2
        /* renamed from: if */
        public byte mo2624if() {
            int i = this.f27821do;
            byte[] bArr = this.f27822if;
            if (i >= bArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f27821do));
            }
            this.f27821do = i + 1;
            return ea2.m1729goto(bArr[i]);
        }
    }

    @wg1
    private /* synthetic */ Cinterface(byte[] storage) {
        Csuper.m30700throw(storage, "storage");
        this.f27820do = storage;
    }

    /* renamed from: break, reason: not valid java name */
    public static final byte m30503break(byte[] bArr, int i) {
        return ea2.m1729goto(bArr[i]);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m30504case(byte[] bArr, byte b) {
        return Cclass.W6(bArr, b);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m30505class(byte[] bArr) {
        return bArr.length;
    }

    @wg1
    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ void m30506const() {
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m30507else(byte[] bArr, @m41 Collection<ea2> elements) {
        Csuper.m30700throw(elements, "elements");
        if (!elements.isEmpty()) {
            for (Object obj : elements) {
                if (!((obj instanceof ea2) && Cclass.W6(bArr, ((ea2) obj).r()))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public static int m30508final(byte[] bArr) {
        if (bArr != null) {
            return Arrays.hashCode(bArr);
        }
        return 0;
    }

    @m41
    /* renamed from: for, reason: not valid java name */
    public static byte[] m30509for(int i) {
        return m30513new(new byte[i]);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m30510goto(byte[] bArr, Object obj) {
        return (obj instanceof Cinterface) && Csuper.m30676else(bArr, ((Cinterface) obj).m30520native());
    }

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ Cinterface m30511if(byte[] v) {
        Csuper.m30700throw(v, "v");
        return new Cinterface(v);
    }

    /* renamed from: import, reason: not valid java name */
    public static String m30512import(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ")";
    }

    @m41
    @wg1
    /* renamed from: new, reason: not valid java name */
    public static byte[] m30513new(@m41 byte[] storage) {
        Csuper.m30700throw(storage, "storage");
        return storage;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m30514super(byte[] bArr) {
        return bArr.length == 0;
    }

    /* renamed from: this, reason: not valid java name */
    public static final boolean m30515this(byte[] bArr, byte[] bArr2) {
        return Csuper.m30676else(bArr, bArr2);
    }

    @m41
    /* renamed from: throw, reason: not valid java name */
    public static Iterator<ea2> m30516throw(byte[] bArr) {
        return new Cdo(bArr);
    }

    /* renamed from: while, reason: not valid java name */
    public static final void m30517while(byte[] bArr, int i, byte b) {
        bArr[i] = b;
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(ea2 ea2Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends ea2> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: catch, reason: not valid java name */
    public int m30518catch() {
        return m30505class(this.f27820do);
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ea2) {
            return m30521try(((ea2) obj).r());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@m41 Collection<? extends Object> collection) {
        return m30507else(this.f27820do, collection);
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m30519do(byte b) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m30510goto(this.f27820do, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m30508final(this.f27820do);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m30514super(this.f27820do);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @m41
    public Iterator<ea2> iterator() {
        return m30516throw(this.f27820do);
    }

    /* renamed from: native, reason: not valid java name */
    public final /* synthetic */ byte[] m30520native() {
        return this.f27820do;
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
        return m30518catch();
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
        return m30512import(this.f27820do);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m30521try(byte b) {
        return m30504case(this.f27820do, b);
    }
}
