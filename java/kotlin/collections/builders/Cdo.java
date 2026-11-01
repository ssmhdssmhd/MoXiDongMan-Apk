package kotlin.collections.builders;

import android.support.v4.Csynchronized;
import android.support.v4.m41;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.umeng.analytics.pro.ak;
import freemarker.ext.servlet.FreemarkerServlet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Cwhile;
import kotlin.collections.Celse;
import kotlin.collections.Cgoto;
import kotlin.collections.Cnew;
import kotlin.jvm.internal.Csuper;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0012\n\u0002\u0010)\n\u0000\n\u0002\u0010+\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005:\u0001CBO\b\u0002\u0012\f\u0010E\u001a\b\u0012\u0004\u0012\u00028\u000009\u0012\u0006\u0010G\u001a\u00020\u0006\u0012\u0006\u0010I\u001a\u00020\u0006\u0012\u0006\u0010L\u001a\u00020\u000f\u0012\u000e\u0010O\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000\u0012\u000e\u0010Q\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000¢\u0006\u0004\bT\u0010UB\t\b\u0016¢\u0006\u0004\bT\u0010VB\u0011\b\u0016\u0012\u0006\u0010W\u001a\u00020\u0006¢\u0006\u0004\bT\u0010XJ\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0014\u0010\u0010\u001a\u00020\u000f2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\rH\u0002J\u0018\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u001f\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J&\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0017\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J.\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\rJ\b\u0010!\u001a\u00020\u000fH\u0016J\u0018\u0010#\u001a\u00028\u00002\u0006\u0010\"\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b#\u0010\u001aJ \u0010$\u001a\u00028\u00002\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b(\u0010'J\u000f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000)H\u0096\u0002J\u000e\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000+H\u0016J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000+2\u0006\u0010\"\u001a\u00020\u0006H\u0016J\u0017\u0010-\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b-\u0010.J\u001f\u0010-\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b-\u0010\u0015J\u0016\u0010/\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\u001e\u0010/\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\b\u00100\u001a\u00020\bH\u0016J\u0017\u00101\u001a\u00028\u00002\u0006\u0010\"\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u0010\u001aJ\u0017\u00102\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b2\u0010.J\u0016\u00103\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\u0016\u00104\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\u001e\u00107\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u0006H\u0016J)\u0010;\u001a\b\u0012\u0004\u0012\u00028\u000109\"\u0004\b\u0001\u001082\f\u0010:\u001a\b\u0012\u0004\u0012\u00028\u000109H\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010=09H\u0016¢\u0006\u0004\b;\u0010>J\u0013\u0010?\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010=H\u0096\u0002J\b\u0010@\u001a\u00020\u0006H\u0016J\b\u0010B\u001a\u00020AH\u0016R\u001c\u0010E\u001a\b\u0012\u0004\u0012\u00028\u0000098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010G\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010FR\u0016\u0010I\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010FR\u0016\u0010L\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u001e\u0010O\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u001e\u0010Q\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010NR\u0016\u0010S\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010R¨\u0006Y"}, d2 = {"Lkotlin/collections/builders/do;", ExifInterface.LONGITUDE_EAST, "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Landroid/support/v4/synchronized;", "", "minCapacity", "Landroid/support/v4/ub2;", "final", "class", "n", "super", "", "other", "", "const", ak.aC, "throw", "element", "break", "(ILjava/lang/Object;)V", "", "elements", "this", "while", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "import", "retain", "native", "catch", "isEmpty", "index", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "", "listIterator", "add", "(Ljava/lang/Object;)Z", "addAll", FreemarkerServlet.r, "if", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", ExifInterface.GPS_DIRECTION_TRUE, "", "destination", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "equals", "hashCode", "", "toString", "do", "[Ljava/lang/Object;", "array", OptRuntime.GeneratorState.resumptionPoint_TYPE, TypedValues.Cycle.S_WAVE_OFFSET, "for", "length", "new", "Z", "isReadOnly", "try", "Lkotlin/collections/builders/do;", "backing", "case", "root", "()I", "size", "<init>", "([Ljava/lang/Object;IIZLkotlin/collections/builders/do;Lkotlin/collections/builders/do;)V", "()V", "initialCapacity", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.collections.builders.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo<E> extends Csynchronized<E> implements List<E>, RandomAccess, KMutableList {

    /* renamed from: case, reason: not valid java name */
    private final Cdo<E> f27650case;

    /* renamed from: do, reason: not valid java name */
    private E[] f27651do;

    /* renamed from: for, reason: not valid java name */
    private int f27652for;

    /* renamed from: if, reason: not valid java name */
    private int f27653if;

    /* renamed from: new, reason: not valid java name */
    private boolean f27654new;

    /* renamed from: try, reason: not valid java name */
    private final Cdo<E> f27655try;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u001f\b\u0016\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u0012\u0012\u0006\u0010\u0018\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\t\u0010\u0005\u001a\u00020\u0003H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0006H\u0016J\u000f\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\r2\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\b\u0010\u0011\u001a\u00020\rH\u0016R\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017¨\u0006\u001d"}, d2 = {"kotlin/collections/builders/do$do", ExifInterface.LONGITUDE_EAST, "", "", "hasPrevious", "hasNext", "", "previousIndex", "nextIndex", "previous", "()Ljava/lang/Object;", ES6Iterator.NEXT_METHOD, "element", "Landroid/support/v4/ub2;", "set", "(Ljava/lang/Object;)V", "add", "remove", "Lkotlin/collections/builders/do;", "do", "Lkotlin/collections/builders/do;", "list", "if", OptRuntime.GeneratorState.resumptionPoint_TYPE, "index", "for", "lastIndex", "<init>", "(Lkotlin/collections/builders/do;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.builders.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0354do<E> implements ListIterator<E>, KMutableListIterator {

        /* renamed from: do, reason: not valid java name */
        private final Cdo<E> f27656do;

        /* renamed from: for, reason: not valid java name */
        private int f27657for;

        /* renamed from: if, reason: not valid java name */
        private int f27658if;

        public C0354do(@m41 Cdo<E> list, int i) {
            Csuper.m30700throw(list, "list");
            this.f27656do = list;
            this.f27658if = i;
            this.f27657for = -1;
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            Cdo<E> cdo = this.f27656do;
            int i = this.f27658if;
            this.f27658if = i + 1;
            cdo.add(i, e);
            this.f27657for = -1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f27658if < ((Cdo) this.f27656do).f27652for;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f27658if > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            if (this.f27658if >= ((Cdo) this.f27656do).f27652for) {
                throw new NoSuchElementException();
            }
            int i = this.f27658if;
            this.f27658if = i + 1;
            this.f27657for = i;
            return (E) ((Cdo) this.f27656do).f27651do[((Cdo) this.f27656do).f27653if + this.f27657for];
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f27658if;
        }

        @Override // java.util.ListIterator
        public E previous() {
            int i = this.f27658if;
            if (i <= 0) {
                throw new NoSuchElementException();
            }
            int i2 = i - 1;
            this.f27658if = i2;
            this.f27657for = i2;
            return (E) ((Cdo) this.f27656do).f27651do[((Cdo) this.f27656do).f27653if + this.f27657for];
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f27658if - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            int i = this.f27657for;
            if (!(i != -1)) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
            }
            this.f27656do.remove(i);
            this.f27658if = this.f27657for;
            this.f27657for = -1;
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            int i = this.f27657for;
            if (!(i != -1)) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
            }
            this.f27656do.set(i, e);
        }
    }

    private Cdo(E[] eArr, int i, int i2, boolean z, Cdo<E> cdo, Cdo<E> cdo2) {
        this.f27651do = eArr;
        this.f27653if = i;
        this.f27652for = i2;
        this.f27654new = z;
        this.f27655try = cdo;
        this.f27650case = cdo2;
    }

    /* renamed from: break, reason: not valid java name */
    private final void m29876break(int i, E e) {
        Cdo<E> cdo = this.f27655try;
        if (cdo == null) {
            m29889throw(i, 1);
            this.f27651do[i] = e;
        } else {
            cdo.m29876break(i, e);
            this.f27651do = this.f27655try.f27651do;
            this.f27652for++;
        }
    }

    /* renamed from: class, reason: not valid java name */
    private final void m29878class() {
        Cdo<E> cdo;
        if (this.f27654new || ((cdo = this.f27650case) != null && cdo.f27654new)) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: const, reason: not valid java name */
    private final boolean m29879const(List<?> list) {
        return Cif.m29950goto(this.f27651do, this.f27653if, this.f27652for, list);
    }

    /* renamed from: final, reason: not valid java name */
    private final void m29881final(int i) {
        if (this.f27655try != null) {
            throw new IllegalStateException();
        }
        E[] eArr = this.f27651do;
        if (i > eArr.length) {
            this.f27651do = (E[]) Cif.m29954try(this.f27651do, Celse.f27717else.m30073do(eArr.length, i));
        }
    }

    /* renamed from: import, reason: not valid java name */
    private final void m29884import(int i, int i2) {
        Cdo<E> cdo = this.f27655try;
        if (cdo != null) {
            cdo.m29884import(i, i2);
        } else {
            E[] eArr = this.f27651do;
            Cgoto.p0(eArr, eArr, i, i + i2, this.f27652for);
            E[] eArr2 = this.f27651do;
            int i3 = this.f27652for;
            Cif.m29948else(eArr2, i3 - i2, i3);
        }
        this.f27652for -= i2;
    }

    /* renamed from: native, reason: not valid java name */
    private final int m29885native(int i, int i2, Collection<? extends E> collection, boolean z) {
        Cdo<E> cdo = this.f27655try;
        if (cdo != null) {
            int iM29885native = cdo.m29885native(i, i2, collection, z);
            this.f27652for -= iM29885native;
            return iM29885native;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i + i3;
            if (collection.contains(this.f27651do[i5]) == z) {
                E[] eArr = this.f27651do;
                i3++;
                eArr[i4 + i] = eArr[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        E[] eArr2 = this.f27651do;
        Cgoto.p0(eArr2, eArr2, i + i4, i2 + i, this.f27652for);
        E[] eArr3 = this.f27651do;
        int i7 = this.f27652for;
        Cif.m29948else(eArr3, i7 - i6, i7);
        this.f27652for -= i6;
        return i6;
    }

    /* renamed from: super, reason: not valid java name */
    private final void m29887super(int i) {
        m29881final(this.f27652for + i);
    }

    /* renamed from: this, reason: not valid java name */
    private final void m29888this(int i, Collection<? extends E> collection, int i2) {
        Cdo<E> cdo = this.f27655try;
        if (cdo != null) {
            cdo.m29888this(i, collection, i2);
            this.f27651do = this.f27655try.f27651do;
            this.f27652for += i2;
        } else {
            m29889throw(i, i2);
            Iterator<? extends E> it = collection.iterator();
            for (int i3 = 0; i3 < i2; i3++) {
                this.f27651do[i + i3] = it.next();
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private final void m29889throw(int i, int i2) {
        m29887super(i2);
        E[] eArr = this.f27651do;
        Cgoto.p0(eArr, eArr, i + i2, i, this.f27653if + this.f27652for);
        this.f27652for += i2;
    }

    /* renamed from: while, reason: not valid java name */
    private final E m29891while(int i) {
        Cdo<E> cdo = this.f27655try;
        if (cdo != null) {
            this.f27652for--;
            return cdo.m29891while(i);
        }
        E[] eArr = this.f27651do;
        E e = eArr[i];
        Cgoto.p0(eArr, eArr, i, i + 1, this.f27653if + this.f27652for);
        Cif.m29946case(this.f27651do, (this.f27653if + this.f27652for) - 1);
        this.f27652for--;
        return e;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m29878class();
        m29876break(this.f27653if + this.f27652for, e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@m41 Collection<? extends E> elements) {
        Csuper.m30700throw(elements, "elements");
        m29878class();
        int size = elements.size();
        m29888this(this.f27653if + this.f27652for, elements, size);
        return size > 0;
    }

    @m41
    /* renamed from: catch, reason: not valid java name */
    public final List<E> m29892catch() {
        if (this.f27655try != null) {
            throw new IllegalStateException();
        }
        m29878class();
        this.f27654new = true;
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m29878class();
        m29884import(this.f27653if, this.f27652for);
    }

    @Override // android.support.v4.Csynchronized
    /* renamed from: do */
    public int mo7663do() {
        return this.f27652for;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(@z41 Object obj) {
        return obj == this || ((obj instanceof List) && m29879const((List) obj));
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        Cnew.Companion.m30122if(i, this.f27652for);
        return this.f27651do[this.f27653if + i];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        return Cif.m29953this(this.f27651do, this.f27653if, this.f27652for);
    }

    @Override // android.support.v4.Csynchronized
    /* renamed from: if */
    public E mo7664if(int i) {
        m29878class();
        Cnew.Companion.m30122if(i, this.f27652for);
        return m29891while(this.f27653if + i);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        for (int i = 0; i < this.f27652for; i++) {
            if (Csuper.m30676else(this.f27651do[this.f27653if + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.f27652for == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @m41
    public Iterator<E> iterator() {
        return new C0354do(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        for (int i = this.f27652for - 1; i >= 0; i--) {
            if (Csuper.m30676else(this.f27651do[this.f27653if + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    @m41
    public ListIterator<E> listIterator() {
        return new C0354do(this, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m29878class();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            remove(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        m29878class();
        return m29885native(this.f27653if, this.f27652for, elements, false) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@m41 Collection<? extends Object> elements) {
        Csuper.m30700throw(elements, "elements");
        m29878class();
        return m29885native(this.f27653if, this.f27652for, elements, true) > 0;
    }

    @Override // android.support.v4.Csynchronized, java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        m29878class();
        Cnew.Companion.m30122if(i, this.f27652for);
        E[] eArr = this.f27651do;
        int i2 = this.f27653if;
        E e2 = eArr[i2 + i];
        eArr[i2 + i] = e;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    @m41
    public List<E> subList(int i, int i2) {
        Cnew.Companion.m30123new(i, i2, this.f27652for);
        E[] eArr = this.f27651do;
        int i3 = this.f27653if + i;
        int i4 = i2 - i;
        boolean z = this.f27654new;
        Cdo<E> cdo = this.f27650case;
        return new Cdo(eArr, i3, i4, z, this, cdo != null ? cdo : this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @m41
    public <T> T[] toArray(@m41 T[] destination) {
        Csuper.m30700throw(destination, "destination");
        int length = destination.length;
        int i = this.f27652for;
        if (length < i) {
            E[] eArr = this.f27651do;
            int i2 = this.f27653if;
            T[] tArr = (T[]) Arrays.copyOfRange(eArr, i2, i + i2, destination.getClass());
            Csuper.m30696super(tArr, "java.util.Arrays.copyOfR…h, destination.javaClass)");
            return tArr;
        }
        E[] eArr2 = this.f27651do;
        Objects.requireNonNull(eArr2, "null cannot be cast to non-null type kotlin.Array<T>");
        int i3 = this.f27653if;
        Cgoto.p0(eArr2, destination, 0, i3, i + i3);
        int length2 = destination.length;
        int i4 = this.f27652for;
        if (length2 > i4) {
            destination[i4] = null;
        }
        return destination;
    }

    @Override // java.util.AbstractCollection
    @m41
    public String toString() {
        return Cif.m29945break(this.f27651do, this.f27653if, this.f27652for);
    }

    public Cdo() {
        this(10);
    }

    @Override // java.util.AbstractList, java.util.List
    @m41
    public ListIterator<E> listIterator(int i) {
        Cnew.Companion.m30121for(i, this.f27652for);
        return new C0354do(this, i);
    }

    public Cdo(int i) {
        this(Cif.m29952new(i), 0, 0, false, null, null);
    }

    @Override // android.support.v4.Csynchronized, java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        m29878class();
        Cnew.Companion.m30121for(i, this.f27652for);
        m29876break(this.f27653if + i, e);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, @m41 Collection<? extends E> elements) {
        Csuper.m30700throw(elements, "elements");
        m29878class();
        Cnew.Companion.m30121for(i, this.f27652for);
        int size = elements.size();
        m29888this(this.f27653if + i, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @m41
    public Object[] toArray() {
        E[] eArr = this.f27651do;
        int i = this.f27653if;
        Object[] objArrZ0 = Cgoto.Z0(eArr, i, this.f27652for + i);
        Objects.requireNonNull(objArrZ0, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        return objArrZ0;
    }
}
