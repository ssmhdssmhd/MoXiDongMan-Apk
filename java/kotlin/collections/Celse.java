package kotlin.collections;

import android.support.v4.Csynchronized;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.ub2;
import android.support.v4.um0;
import android.support.v4.z41;
import androidx.exifinterface.media.ExifInterface;
import freemarker.ext.servlet.FreemarkerServlet;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Cthis;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import org.mozilla.javascript.optimizer.OptRuntime;

@gf2(markerClass = {Cthis.class})
@iz1(version = "1.4")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b!\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0007\u0018\u0000 T*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001GB\u0011\b\u0016\u0012\u0006\u0010O\u001a\u00020\u0003¢\u0006\u0004\bP\u0010QB\t\b\u0016¢\u0006\u0004\bP\u0010RB\u0017\b\u0016\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012¢\u0006\u0004\bP\u0010SJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\u0018\u0010\n\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\u0003H\u0083\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0002J\u0011\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0083\bJ\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0002J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0002J\u001e\u0010\u0014\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00032\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0002J\u001d\u0010\u0018\u001a\u00020\u00162\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00160\u0015H\u0082\bJ\b\u0010\u0019\u001a\u00020\u0016H\u0016J\r\u0010\u001a\u001a\u00028\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001c\u0010\u001bJ\r\u0010\u001d\u001a\u00028\u0000¢\u0006\u0004\b\u001d\u0010\u001bJ\u000f\u0010\u001e\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001e\u0010\u001bJ\u0015\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00028\u0000¢\u0006\u0004\b \u0010!J\u0015\u0010\"\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00028\u0000¢\u0006\u0004\b\"\u0010!J\r\u0010#\u001a\u00028\u0000¢\u0006\u0004\b#\u0010\u001bJ\u000f\u0010$\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b$\u0010\u001bJ\r\u0010%\u001a\u00028\u0000¢\u0006\u0004\b%\u0010\u001bJ\u000f\u0010&\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b&\u0010\u001bJ\u0017\u0010'\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b'\u0010(J\u001f\u0010'\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b'\u0010)J\u0016\u0010*\u001a\u00020\u00162\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0016J\u001e\u0010*\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\u00032\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0016J\u0018\u0010+\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b+\u0010\u000bJ \u0010,\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b,\u0010-J\u0018\u0010.\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b.\u0010(J\u0017\u0010/\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b/\u00100J\u0017\u00101\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b1\u00100J\u0017\u00102\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b2\u0010(J\u0017\u00103\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u0003H\u0016¢\u0006\u0004\b3\u0010\u000bJ\u0016\u00104\u001a\u00020\u00162\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0016J\u0016\u00105\u001a\u00020\u00162\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0016J\b\u00106\u001a\u00020\u0005H\u0016J)\u0010:\u001a\b\u0012\u0004\u0012\u00028\u000108\"\u0004\b\u0001\u001072\f\u00109\u001a\b\u0012\u0004\u0012\u00028\u000108H\u0016¢\u0006\u0004\b:\u0010;J\u0017\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010<08H\u0016¢\u0006\u0004\b:\u0010=J)\u0010>\u001a\b\u0012\u0004\u0012\u00028\u000108\"\u0004\b\u0001\u001072\f\u00109\u001a\b\u0012\u0004\u0012\u00028\u000108H\u0000¢\u0006\u0004\b>\u0010;J\u0017\u0010?\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010<08H\u0000¢\u0006\u0004\b?\u0010=JO\u0010E\u001a\u00020\u00052>\u0010D\u001a:\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bA\u0012\b\bB\u0012\u0004\b\b(C\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010<08¢\u0006\f\bA\u0012\b\bB\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00050@H\u0000¢\u0006\u0004\bE\u0010FR\u0016\u0010C\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u001e\u0010J\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010<088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010IR$\u0010N\u001a\u00020\u00032\u0006\u0010K\u001a\u00020\u00038\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\bL\u0010H\u001a\u0004\bG\u0010M¨\u0006U"}, d2 = {"Lkotlin/collections/else;", ExifInterface.LONGITUDE_EAST, "Landroid/support/v4/synchronized;", "", "minCapacity", "Landroid/support/v4/ub2;", "super", "newCapacity", "const", "internalIndex", "native", "(I)Ljava/lang/Object;", "index", "throws", "switch", "public", "import", "final", "", "elements", "class", "Lkotlin/Function1;", "", "predicate", "throw", "isEmpty", "first", "()Ljava/lang/Object;", "while", "last", "static", "element", "addFirst", "(Ljava/lang/Object;)V", "addLast", "removeFirst", "default", "removeLast", "extends", "add", "(Ljava/lang/Object;)Z", "(ILjava/lang/Object;)V", "addAll", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "contains", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "remove", "if", "removeAll", "retainAll", FreemarkerServlet.r, ExifInterface.GPS_DIRECTION_TRUE, "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "package", "finally", "Lkotlin/Function2;", "Landroid/support/v4/xb1;", "name", "head", "structure", "return", "(Lkotlin/jvm/functions/Function2;)V", "do", OptRuntime.GeneratorState.resumptionPoint_TYPE, "[Ljava/lang/Object;", "elementData", "<set-?>", "for", "()I", "size", "initialCapacity", "<init>", "(I)V", "()V", "(Ljava/util/Collection;)V", "else", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.collections.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse<E> extends Csynchronized<E> {

    /* renamed from: case, reason: not valid java name */
    private static final int f27716case = 10;

    /* renamed from: else, reason: not valid java name */
    @m41
    public static final Cdo f27717else = new Cdo(null);

    /* renamed from: new, reason: not valid java name */
    private static final Object[] f27718new = new Object[0];

    /* renamed from: try, reason: not valid java name */
    private static final int f27719try = 2147483639;

    /* renamed from: do, reason: not valid java name */
    private int f27720do;

    /* renamed from: for, reason: not valid java name */
    private int f27721for;

    /* renamed from: if, reason: not valid java name */
    private Object[] f27722if;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\f\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\b¨\u0006\u000f"}, d2 = {"kotlin/collections/else$do", "", "", "oldCapacity", "minCapacity", "do", "(II)I", "defaultMinCapacity", OptRuntime.GeneratorState.resumptionPoint_TYPE, "", "emptyElementData", "[Ljava/lang/Object;", "maxArraySize", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.else$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public final int m30073do(int i, int i2) {
            int i3 = i + (i >> 1);
            if (i3 - i2 < 0) {
                i3 = i2;
            }
            if (i3 - Celse.f27719try <= 0) {
                return i3;
            }
            if (i2 > Celse.f27719try) {
                return Integer.MAX_VALUE;
            }
            return Celse.f27719try;
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    public Celse(int i) {
        Object[] objArr;
        if (i == 0) {
            objArr = f27718new;
        } else {
            if (i <= 0) {
                throw new IllegalArgumentException("Illegal Capacity: " + i);
            }
            objArr = new Object[i];
        }
        this.f27722if = objArr;
    }

    /* renamed from: class, reason: not valid java name */
    private final void m30050class(int i, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.f27722if.length;
        while (i < length && it.hasNext()) {
            this.f27722if[i] = it.next();
            i++;
        }
        int i2 = this.f27720do;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.f27722if[i3] = it.next();
        }
        this.f27721for = size() + collection.size();
    }

    /* renamed from: const, reason: not valid java name */
    private final void m30051const(int i) {
        Object[] objArr = new Object[i];
        Object[] objArr2 = this.f27722if;
        Cgoto.p0(objArr2, objArr, 0, this.f27720do, objArr2.length);
        Object[] objArr3 = this.f27722if;
        int length = objArr3.length;
        int i2 = this.f27720do;
        Cgoto.p0(objArr3, objArr, length - i2, 0, i2);
        this.f27720do = 0;
        this.f27722if = objArr;
    }

    /* renamed from: final, reason: not valid java name */
    private final int m30053final(int i) {
        return i == 0 ? Cclass.gd(this.f27722if) : i - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public final int m30056import(int i) {
        if (i == Cclass.gd(this.f27722if)) {
            return 0;
        }
        return i + 1;
    }

    @um0
    /* renamed from: native, reason: not valid java name */
    private final E m30057native(int i) {
        return (E) this.f27722if[i];
    }

    @um0
    /* renamed from: public, reason: not valid java name */
    private final int m30059public(int i) {
        return m30064throws(this.f27720do + i);
    }

    /* renamed from: super, reason: not valid java name */
    private final void m30060super(int i) {
        if (i < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f27722if;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == f27718new) {
            this.f27722if = new Object[Ccase.m30873final(i, 10)];
        } else {
            m30051const(f27717else.m30073do(objArr.length, i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public final int m30061switch(int i) {
        return i < 0 ? i + this.f27722if.length : i;
    }

    /* renamed from: throw, reason: not valid java name */
    private final boolean m30063throw(Function1<? super E, Boolean> function1) {
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty()) {
            if (!(this.f27722if.length == 0)) {
                int iM30064throws = m30064throws(this.f27720do + size());
                int iM30064throws2 = this.f27720do;
                if (this.f27720do < iM30064throws) {
                    for (int i = this.f27720do; i < iM30064throws; i++) {
                        Object obj = this.f27722if[i];
                        if (function1.invoke(obj).booleanValue()) {
                            this.f27722if[iM30064throws2] = obj;
                            iM30064throws2++;
                        } else {
                            z = true;
                        }
                    }
                    Ccatch.A1(this.f27722if, null, iM30064throws2, iM30064throws);
                } else {
                    int length = this.f27722if.length;
                    boolean z2 = false;
                    for (int i2 = this.f27720do; i2 < length; i2++) {
                        Object obj2 = this.f27722if[i2];
                        this.f27722if[i2] = null;
                        if (function1.invoke(obj2).booleanValue()) {
                            this.f27722if[iM30064throws2] = obj2;
                            iM30064throws2++;
                        } else {
                            z2 = true;
                        }
                    }
                    iM30064throws2 = m30064throws(iM30064throws2);
                    for (int i3 = 0; i3 < iM30064throws; i3++) {
                        Object obj3 = this.f27722if[i3];
                        this.f27722if[i3] = null;
                        if (function1.invoke(obj3).booleanValue()) {
                            this.f27722if[iM30064throws2] = obj3;
                            iM30064throws2 = m30056import(iM30064throws2);
                        } else {
                            z2 = true;
                        }
                    }
                    z = z2;
                }
                if (z) {
                    this.f27721for = m30061switch(iM30064throws2 - this.f27720do);
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public final int m30064throws(int i) {
        Object[] objArr = this.f27722if;
        return i >= objArr.length ? i - objArr.length : i;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        addLast(e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@m41 Collection<? extends E> elements) {
        Csuper.m30700throw(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        m30060super(size() + elements.size());
        m30050class(m30064throws(this.f27720do + size()), elements);
        return true;
    }

    public final void addFirst(E e) {
        m30060super(size() + 1);
        int iM30053final = m30053final(this.f27720do);
        this.f27720do = iM30053final;
        this.f27722if[iM30053final] = e;
        this.f27721for = size() + 1;
    }

    public final void addLast(E e) {
        m30060super(size() + 1);
        this.f27722if[m30064throws(this.f27720do + size())] = e;
        this.f27721for = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int iM30064throws = m30064throws(this.f27720do + size());
        int i = this.f27720do;
        if (i < iM30064throws) {
            Ccatch.A1(this.f27722if, null, i, iM30064throws);
        } else if (!isEmpty()) {
            Object[] objArr = this.f27722if;
            Ccatch.A1(objArr, null, this.f27720do, objArr.length);
            Ccatch.A1(this.f27722if, null, 0, iM30064throws);
        }
        this.f27720do = 0;
        this.f27721for = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @z41
    /* renamed from: default, reason: not valid java name */
    public final E m30066default() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    @Override // android.support.v4.Csynchronized
    /* renamed from: do */
    public int mo7663do() {
        return this.f27721for;
    }

    @z41
    /* renamed from: extends, reason: not valid java name */
    public final E m30067extends() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    @m41
    /* renamed from: finally, reason: not valid java name */
    public final Object[] m30068finally() {
        return toArray();
    }

    public final E first() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return (E) this.f27722if[this.f27720do];
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        Cnew.Companion.m30122if(i, size());
        return (E) this.f27722if[m30064throws(this.f27720do + i)];
    }

    @Override // android.support.v4.Csynchronized
    /* renamed from: if */
    public E mo7664if(int i) {
        Cnew.Companion.m30122if(i, size());
        if (i == Cthrow.m30197volatile(this)) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        int iM30064throws = m30064throws(this.f27720do + i);
        E e = (E) this.f27722if[iM30064throws];
        if (i < (size() >> 1)) {
            int i2 = this.f27720do;
            if (iM30064throws >= i2) {
                Object[] objArr = this.f27722if;
                Cgoto.p0(objArr, objArr, i2 + 1, i2, iM30064throws);
            } else {
                Object[] objArr2 = this.f27722if;
                Cgoto.p0(objArr2, objArr2, 1, 0, iM30064throws);
                Object[] objArr3 = this.f27722if;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i3 = this.f27720do;
                Cgoto.p0(objArr3, objArr3, i3 + 1, i3, objArr3.length - 1);
            }
            Object[] objArr4 = this.f27722if;
            int i4 = this.f27720do;
            objArr4[i4] = null;
            this.f27720do = m30056import(i4);
        } else {
            int iM30064throws2 = m30064throws(this.f27720do + Cthrow.m30197volatile(this));
            if (iM30064throws <= iM30064throws2) {
                Object[] objArr5 = this.f27722if;
                Cgoto.p0(objArr5, objArr5, iM30064throws, iM30064throws + 1, iM30064throws2 + 1);
            } else {
                Object[] objArr6 = this.f27722if;
                Cgoto.p0(objArr6, objArr6, iM30064throws, iM30064throws + 1, objArr6.length);
                Object[] objArr7 = this.f27722if;
                objArr7[objArr7.length - 1] = objArr7[0];
                Cgoto.p0(objArr7, objArr7, 0, 1, iM30064throws2 + 1);
            }
            this.f27722if[iM30064throws2] = null;
        }
        this.f27721for = size() - 1;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i;
        int iM30064throws = m30064throws(this.f27720do + size());
        int length = this.f27720do;
        if (length < iM30064throws) {
            while (length < iM30064throws) {
                if (Csuper.m30676else(obj, this.f27722if[length])) {
                    i = this.f27720do;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iM30064throws) {
            return -1;
        }
        int length2 = this.f27722if.length;
        while (true) {
            if (length >= length2) {
                for (int i2 = 0; i2 < iM30064throws; i2++) {
                    if (Csuper.m30676else(obj, this.f27722if[i2])) {
                        length = i2 + this.f27722if.length;
                        i = this.f27720do;
                    }
                }
                return -1;
            }
            if (Csuper.m30676else(obj, this.f27722if[length])) {
                i = this.f27720do;
                break;
            }
            length++;
        }
        return length - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    public final E last() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        return (E) this.f27722if[m30064throws(this.f27720do + Cthrow.m30197volatile(this))];
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int iGd;
        int i;
        int iM30064throws = m30064throws(this.f27720do + size());
        int i2 = this.f27720do;
        if (i2 < iM30064throws) {
            iGd = iM30064throws - 1;
            if (iGd < i2) {
                return -1;
            }
            while (!Csuper.m30676else(obj, this.f27722if[iGd])) {
                if (iGd == i2) {
                    return -1;
                }
                iGd--;
            }
            i = this.f27720do;
        } else {
            if (i2 <= iM30064throws) {
                return -1;
            }
            int i3 = iM30064throws - 1;
            while (true) {
                if (i3 < 0) {
                    iGd = Cclass.gd(this.f27722if);
                    int i4 = this.f27720do;
                    if (iGd < i4) {
                        return -1;
                    }
                    while (!Csuper.m30676else(obj, this.f27722if[iGd])) {
                        if (iGd == i4) {
                            return -1;
                        }
                        iGd--;
                    }
                    i = this.f27720do;
                } else {
                    if (Csuper.m30676else(obj, this.f27722if[i3])) {
                        iGd = i3 + this.f27722if.length;
                        i = this.f27720do;
                        break;
                    }
                    i3--;
                }
            }
        }
        return iGd - i;
    }

    @m41
    /* renamed from: package, reason: not valid java name */
    public final <T> T[] m30069package(@m41 T[] array) {
        Csuper.m30700throw(array, "array");
        return (T[]) toArray(array);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty()) {
            if (!(this.f27722if.length == 0)) {
                int iM30064throws = m30064throws(this.f27720do + size());
                int iM30064throws2 = this.f27720do;
                if (this.f27720do < iM30064throws) {
                    for (int i = this.f27720do; i < iM30064throws; i++) {
                        Object obj = this.f27722if[i];
                        if (!elements.contains(obj)) {
                            this.f27722if[iM30064throws2] = obj;
                            iM30064throws2++;
                        } else {
                            z = true;
                        }
                    }
                    Ccatch.A1(this.f27722if, null, iM30064throws2, iM30064throws);
                } else {
                    int length = this.f27722if.length;
                    boolean z2 = false;
                    for (int i2 = this.f27720do; i2 < length; i2++) {
                        Object obj2 = this.f27722if[i2];
                        this.f27722if[i2] = null;
                        if (!elements.contains(obj2)) {
                            this.f27722if[iM30064throws2] = obj2;
                            iM30064throws2++;
                        } else {
                            z2 = true;
                        }
                    }
                    iM30064throws2 = m30064throws(iM30064throws2);
                    for (int i3 = 0; i3 < iM30064throws; i3++) {
                        Object obj3 = this.f27722if[i3];
                        this.f27722if[i3] = null;
                        if (!elements.contains(obj3)) {
                            this.f27722if[iM30064throws2] = obj3;
                            iM30064throws2 = m30056import(iM30064throws2);
                        } else {
                            z2 = true;
                        }
                    }
                    z = z2;
                }
                if (z) {
                    this.f27721for = m30061switch(iM30064throws2 - this.f27720do);
                }
            }
        }
        return z;
    }

    public final E removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        E e = (E) this.f27722if[this.f27720do];
        Object[] objArr = this.f27722if;
        int i = this.f27720do;
        objArr[i] = null;
        this.f27720do = m30056import(i);
        this.f27721for = size() - 1;
        return e;
    }

    public final E removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        int iM30064throws = m30064throws(this.f27720do + Cthrow.m30197volatile(this));
        E e = (E) this.f27722if[iM30064throws];
        this.f27722if[iM30064throws] = null;
        this.f27721for = size() - 1;
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty()) {
            if (!(this.f27722if.length == 0)) {
                int iM30064throws = m30064throws(this.f27720do + size());
                int iM30064throws2 = this.f27720do;
                if (this.f27720do < iM30064throws) {
                    for (int i = this.f27720do; i < iM30064throws; i++) {
                        Object obj = this.f27722if[i];
                        if (elements.contains(obj)) {
                            this.f27722if[iM30064throws2] = obj;
                            iM30064throws2++;
                        } else {
                            z = true;
                        }
                    }
                    Ccatch.A1(this.f27722if, null, iM30064throws2, iM30064throws);
                } else {
                    int length = this.f27722if.length;
                    boolean z2 = false;
                    for (int i2 = this.f27720do; i2 < length; i2++) {
                        Object obj2 = this.f27722if[i2];
                        this.f27722if[i2] = null;
                        if (elements.contains(obj2)) {
                            this.f27722if[iM30064throws2] = obj2;
                            iM30064throws2++;
                        } else {
                            z2 = true;
                        }
                    }
                    iM30064throws2 = m30064throws(iM30064throws2);
                    for (int i3 = 0; i3 < iM30064throws; i3++) {
                        Object obj3 = this.f27722if[i3];
                        this.f27722if[i3] = null;
                        if (elements.contains(obj3)) {
                            this.f27722if[iM30064throws2] = obj3;
                            iM30064throws2 = m30056import(iM30064throws2);
                        } else {
                            z2 = true;
                        }
                    }
                    z = z2;
                }
                if (z) {
                    this.f27721for = m30061switch(iM30064throws2 - this.f27720do);
                }
            }
        }
        return z;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m30070return(@m41 Function2<? super Integer, ? super Object[], ub2> structure) {
        int i;
        Csuper.m30700throw(structure, "structure");
        structure.invoke(Integer.valueOf((isEmpty() || (i = this.f27720do) < m30064throws(this.f27720do + size())) ? this.f27720do : i - this.f27722if.length), toArray());
    }

    @Override // android.support.v4.Csynchronized, java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        Cnew.Companion.m30122if(i, size());
        int iM30064throws = m30064throws(this.f27720do + i);
        E e2 = (E) this.f27722if[iM30064throws];
        this.f27722if[iM30064throws] = e;
        return e2;
    }

    @z41
    /* renamed from: static, reason: not valid java name */
    public final E m30071static() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.f27722if[m30064throws(this.f27720do + Cthrow.m30197volatile(this))];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @m41
    public <T> T[] toArray(@m41 T[] array) {
        Csuper.m30700throw(array, "array");
        if (array.length < size()) {
            array = (T[]) Cthis.m30169do(array, size());
        }
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        int iM30064throws = m30064throws(this.f27720do + size());
        int i = this.f27720do;
        if (i < iM30064throws) {
            Ccatch.y0(this.f27722if, array, 0, i, iM30064throws, 2, null);
        } else if (!isEmpty()) {
            Object[] objArr = this.f27722if;
            Cgoto.p0(objArr, array, 0, this.f27720do, objArr.length);
            Object[] objArr2 = this.f27722if;
            Cgoto.p0(objArr2, array, objArr2.length - this.f27720do, 0, iM30064throws);
        }
        if (array.length > size()) {
            array[size()] = null;
        }
        return array;
    }

    @z41
    /* renamed from: while, reason: not valid java name */
    public final E m30072while() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.f27722if[this.f27720do];
    }

    @Override // android.support.v4.Csynchronized, java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        Cnew.Companion.m30121for(i, size());
        if (i == size()) {
            addLast(e);
            return;
        }
        if (i == 0) {
            addFirst(e);
            return;
        }
        m30060super(size() + 1);
        int iM30064throws = m30064throws(this.f27720do + i);
        if (i < ((size() + 1) >> 1)) {
            int iM30053final = m30053final(iM30064throws);
            int iM30053final2 = m30053final(this.f27720do);
            int i2 = this.f27720do;
            if (iM30053final >= i2) {
                Object[] objArr = this.f27722if;
                objArr[iM30053final2] = objArr[i2];
                Cgoto.p0(objArr, objArr, i2, i2 + 1, iM30053final + 1);
            } else {
                Object[] objArr2 = this.f27722if;
                Cgoto.p0(objArr2, objArr2, i2 - 1, i2, objArr2.length);
                Object[] objArr3 = this.f27722if;
                objArr3[objArr3.length - 1] = objArr3[0];
                Cgoto.p0(objArr3, objArr3, 0, 1, iM30053final + 1);
            }
            this.f27722if[iM30053final] = e;
            this.f27720do = iM30053final2;
        } else {
            int iM30064throws2 = m30064throws(this.f27720do + size());
            if (iM30064throws < iM30064throws2) {
                Object[] objArr4 = this.f27722if;
                Cgoto.p0(objArr4, objArr4, iM30064throws + 1, iM30064throws, iM30064throws2);
            } else {
                Object[] objArr5 = this.f27722if;
                Cgoto.p0(objArr5, objArr5, 1, 0, iM30064throws2);
                Object[] objArr6 = this.f27722if;
                objArr6[0] = objArr6[objArr6.length - 1];
                Cgoto.p0(objArr6, objArr6, iM30064throws + 1, iM30064throws, objArr6.length - 1);
            }
            this.f27722if[iM30064throws] = e;
        }
        this.f27721for = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, @m41 Collection<? extends E> elements) {
        Csuper.m30700throw(elements, "elements");
        Cnew.Companion.m30121for(i, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i == size()) {
            return addAll(elements);
        }
        m30060super(size() + elements.size());
        int iM30064throws = m30064throws(this.f27720do + size());
        int iM30064throws2 = m30064throws(this.f27720do + i);
        int size = elements.size();
        if (i < ((size() + 1) >> 1)) {
            int i2 = this.f27720do;
            int length = i2 - size;
            if (iM30064throws2 < i2) {
                Object[] objArr = this.f27722if;
                Cgoto.p0(objArr, objArr, length, i2, objArr.length);
                if (size >= iM30064throws2) {
                    Object[] objArr2 = this.f27722if;
                    Cgoto.p0(objArr2, objArr2, objArr2.length - size, 0, iM30064throws2);
                } else {
                    Object[] objArr3 = this.f27722if;
                    Cgoto.p0(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f27722if;
                    Cgoto.p0(objArr4, objArr4, 0, size, iM30064throws2);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.f27722if;
                Cgoto.p0(objArr5, objArr5, length, i2, iM30064throws2);
            } else {
                Object[] objArr6 = this.f27722if;
                length += objArr6.length;
                int i3 = iM30064throws2 - i2;
                int length2 = objArr6.length - length;
                if (length2 >= i3) {
                    Cgoto.p0(objArr6, objArr6, length, i2, iM30064throws2);
                } else {
                    Cgoto.p0(objArr6, objArr6, length, i2, i2 + length2);
                    Object[] objArr7 = this.f27722if;
                    Cgoto.p0(objArr7, objArr7, 0, this.f27720do + length2, iM30064throws2);
                }
            }
            this.f27720do = length;
            m30050class(m30061switch(iM30064throws2 - size), elements);
        } else {
            int i4 = iM30064throws2 + size;
            if (iM30064throws2 < iM30064throws) {
                int i5 = size + iM30064throws;
                Object[] objArr8 = this.f27722if;
                if (i5 <= objArr8.length) {
                    Cgoto.p0(objArr8, objArr8, i4, iM30064throws2, iM30064throws);
                } else if (i4 >= objArr8.length) {
                    Cgoto.p0(objArr8, objArr8, i4 - objArr8.length, iM30064throws2, iM30064throws);
                } else {
                    int length3 = iM30064throws - (i5 - objArr8.length);
                    Cgoto.p0(objArr8, objArr8, 0, length3, iM30064throws);
                    Object[] objArr9 = this.f27722if;
                    Cgoto.p0(objArr9, objArr9, i4, iM30064throws2, length3);
                }
            } else {
                Object[] objArr10 = this.f27722if;
                Cgoto.p0(objArr10, objArr10, size, 0, iM30064throws);
                Object[] objArr11 = this.f27722if;
                if (i4 >= objArr11.length) {
                    Cgoto.p0(objArr11, objArr11, i4 - objArr11.length, iM30064throws2, objArr11.length);
                } else {
                    Cgoto.p0(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f27722if;
                    Cgoto.p0(objArr12, objArr12, i4, iM30064throws2, objArr12.length - size);
                }
            }
            m30050class(iM30064throws2, elements);
        }
        return true;
    }

    public Celse() {
        this.f27722if = f27718new;
    }

    public Celse(@m41 Collection<? extends E> elements) {
        Csuper.m30700throw(elements, "elements");
        Object[] array = elements.toArray(new Object[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.f27722if = array;
        this.f27721for = array.length;
        if (array.length == 0) {
            this.f27722if = f27718new;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @m41
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
