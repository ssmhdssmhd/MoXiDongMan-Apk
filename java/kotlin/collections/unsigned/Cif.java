package kotlin.collections.unsigned;

import android.support.v4.ab2;
import android.support.v4.ea2;
import android.support.v4.h91;
import android.support.v4.iz1;
import android.support.v4.ja2;
import android.support.v4.m41;
import android.support.v4.oa2;
import android.support.v4.oc2;
import android.support.v4.um0;
import android.support.v4.wp0;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Cbreak;
import kotlin.Cinstanceof;
import kotlin.Cinterface;
import kotlin.Cprotected;
import kotlin.Ctransient;
import kotlin.Cwhile;
import kotlin.collections.Cclass;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u001f\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001f\u0010\b\u001a\u00020\u0007*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001f\u0010\f\u001a\u00020\u000b*\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u001f\u0010\u0010\u001a\u00020\u000f*\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0012*\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u0012*\u00020\u0006H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0012*\u00020\nH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0012*\u00020\u000eH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a2\u0010\u001e\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00012\b\b\u0002\u0010\u001d\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001f\u001a2\u0010 \u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00072\b\b\u0002\u0010\u001c\u001a\u00020\u00012\b\b\u0002\u0010\u001d\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a2\u0010\"\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u001b\u001a\u00020\u000b2\b\b\u0002\u0010\u001c\u001a\u00020\u00012\b\b\u0002\u0010\u001d\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a2\u0010$\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u000f2\b\b\u0002\u0010\u001c\u001a\u00020\u00012\b\b\u0002\u0010\u001d\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b$\u0010%\u001a.\u0010)\u001a\u00020'*\u00020\u00002\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020'0&H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b)\u0010*\u001a.\u0010+\u001a\u00020'*\u00020\u00062\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020'0&H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b+\u0010,\u001a.\u0010-\u001a\u00020'*\u00020\n2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020'0&H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b-\u0010.\u001a.\u0010/\u001a\u00020'*\u00020\u000e2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020'0&H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b/\u00100\u001a.\u00102\u001a\u000201*\u00020\u00002\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002010&H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b2\u00103\u001a.\u00104\u001a\u000201*\u00020\u00062\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002010&H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b4\u00105\u001a.\u00106\u001a\u000201*\u00020\n2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002010&H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b6\u00107\u001a.\u00108\u001a\u000201*\u00020\u000e2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002010&H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b8\u00109\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006:"}, d2 = {"Lkotlin/protected;", "", "index", "Landroid/support/v4/ja2;", "super", "([II)I", "Lkotlin/transient;", "Landroid/support/v4/oa2;", "throw", "([JI)J", "Lkotlin/interface;", "Landroid/support/v4/ea2;", "const", "([BI)B", "Lkotlin/instanceof;", "Landroid/support/v4/ab2;", "final", "([SI)S", "", "do", "([I)Ljava/util/List;", "for", "([J)Ljava/util/List;", "if", "([B)Ljava/util/List;", "new", "([S)Ljava/util/List;", "element", "fromIndex", "toIndex", "try", "([IIII)I", "this", "([JJII)I", "catch", "([BBII)I", "else", "([SSII)I", "Lkotlin/Function1;", "Ljava/math/BigDecimal;", "selector", "import", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "native", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "while", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "public", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "Ljava/math/BigInteger;", "static", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "switch", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "return", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "throws", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, pn = "kotlin.collections", xs = "kotlin/collections/unsigned/UArraysKt")
/* renamed from: kotlin.collections.unsigned.if, reason: invalid class name */
/* loaded from: classes3.dex */
class Cif {

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0096\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\rJ\u001a\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\rR\u0016\u0010\u0012\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0013"}, d2 = {"kotlin/collections/unsigned/if$do", "Lkotlin/collections/new;", "Landroid/support/v4/ja2;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "isEmpty", "element", "do", "(I)Z", "", "index", "if", "(I)I", "for", "new", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.unsigned.if$do, reason: invalid class name */
    public static final class Cdo extends kotlin.collections.Cnew<ja2> implements RandomAccess {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int[] f27755do;

        public Cdo(int[] iArr) {
            this.f27755do = iArr;
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof ja2) {
                return m30254do(((ja2) obj).t());
            }
            return false;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m30254do(int i) {
            return Cprotected.m30794case(this.f27755do, i);
        }

        /* renamed from: for, reason: not valid java name */
        public int m30255for(int i) {
            return Cclass.qe(this.f27755do, i);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public /* bridge */ /* synthetic */ Object get(int i) {
            return ja2.m3773if(m30256if(i));
        }

        @Override // kotlin.collections.Cnew, kotlin.collections.Cdo
        public int getSize() {
            return Cprotected.m30795class(this.f27755do);
        }

        /* renamed from: if, reason: not valid java name */
        public int m30256if(int i) {
            return Cprotected.m30793break(this.f27755do, i);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof ja2) {
                return m30255for(((ja2) obj).t());
            }
            return -1;
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return Cprotected.m30804super(this.f27755do);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof ja2) {
                return m30257new(((ja2) obj).t());
            }
            return -1;
        }

        /* renamed from: new, reason: not valid java name */
        public int m30257new(int i) {
            return Cclass.vg(this.f27755do, i);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0096\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0014"}, d2 = {"kotlin/collections/unsigned/if$for", "Lkotlin/collections/new;", "Landroid/support/v4/ea2;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "isEmpty", "element", "do", "(B)Z", "", "index", "if", "(I)B", "for", "(B)I", "new", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.unsigned.if$for, reason: invalid class name */
    public static final class Cfor extends kotlin.collections.Cnew<ea2> implements RandomAccess {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ byte[] f27756do;

        public Cfor(byte[] bArr) {
            this.f27756do = bArr;
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof ea2) {
                return m30258do(((ea2) obj).r());
            }
            return false;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m30258do(byte b) {
            return Cinterface.m30504case(this.f27756do, b);
        }

        /* renamed from: for, reason: not valid java name */
        public int m30259for(byte b) {
            return Cclass.me(this.f27756do, b);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public /* bridge */ /* synthetic */ Object get(int i) {
            return ea2.m1730if(m30260if(i));
        }

        @Override // kotlin.collections.Cnew, kotlin.collections.Cdo
        public int getSize() {
            return Cinterface.m30505class(this.f27756do);
        }

        /* renamed from: if, reason: not valid java name */
        public byte m30260if(int i) {
            return Cinterface.m30503break(this.f27756do, i);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof ea2) {
                return m30259for(((ea2) obj).r());
            }
            return -1;
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return Cinterface.m30514super(this.f27756do);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof ea2) {
                return m30261new(((ea2) obj).r());
            }
            return -1;
        }

        /* renamed from: new, reason: not valid java name */
        public int m30261new(byte b) {
            return Cclass.rg(this.f27756do, b);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0096\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0014"}, d2 = {"kotlin/collections/unsigned/if$if", "Lkotlin/collections/new;", "Landroid/support/v4/oa2;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "isEmpty", "element", "do", "(J)Z", "", "index", "if", "(I)J", "for", "(J)I", "new", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.unsigned.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0360if extends kotlin.collections.Cnew<oa2> implements RandomAccess {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long[] f27757do;

        public C0360if(long[] jArr) {
            this.f27757do = jArr;
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof oa2) {
                return m30262do(((oa2) obj).t());
            }
            return false;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m30262do(long j) {
            return Ctransient.m31398case(this.f27757do, j);
        }

        /* renamed from: for, reason: not valid java name */
        public int m30263for(long j) {
            return Cclass.re(this.f27757do, j);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public /* bridge */ /* synthetic */ Object get(int i) {
            return oa2.m5525if(m30264if(i));
        }

        @Override // kotlin.collections.Cnew, kotlin.collections.Cdo
        public int getSize() {
            return Ctransient.m31399class(this.f27757do);
        }

        /* renamed from: if, reason: not valid java name */
        public long m30264if(int i) {
            return Ctransient.m31397break(this.f27757do, i);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof oa2) {
                return m30263for(((oa2) obj).t());
            }
            return -1;
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return Ctransient.m31408super(this.f27757do);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof oa2) {
                return m30265new(((oa2) obj).t());
            }
            return -1;
        }

        /* renamed from: new, reason: not valid java name */
        public int m30265new(long j) {
            return Cclass.wg(this.f27757do, j);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0096\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0014"}, d2 = {"kotlin/collections/unsigned/if$new", "Lkotlin/collections/new;", "Landroid/support/v4/ab2;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "isEmpty", "element", "do", "(S)Z", "", "index", "if", "(I)S", "for", "(S)I", "new", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.collections.unsigned.if$new, reason: invalid class name */
    public static final class Cnew extends kotlin.collections.Cnew<ab2> implements RandomAccess {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ short[] f27758do;

        public Cnew(short[] sArr) {
            this.f27758do = sArr;
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof ab2) {
                return m30266do(((ab2) obj).r());
            }
            return false;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m30266do(short s) {
            return Cinstanceof.m30485case(this.f27758do, s);
        }

        /* renamed from: for, reason: not valid java name */
        public int m30267for(short s) {
            return Cclass.te(this.f27758do, s);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public /* bridge */ /* synthetic */ Object get(int i) {
            return ab2.m141if(m30268if(i));
        }

        @Override // kotlin.collections.Cnew, kotlin.collections.Cdo
        public int getSize() {
            return Cinstanceof.m30486class(this.f27758do);
        }

        /* renamed from: if, reason: not valid java name */
        public short m30268if(int i) {
            return Cinstanceof.m30484break(this.f27758do, i);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof ab2) {
                return m30267for(((ab2) obj).r());
            }
            return -1;
        }

        @Override // kotlin.collections.Cdo, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return Cinstanceof.m30495super(this.f27758do);
        }

        @Override // kotlin.collections.Cnew, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof ab2) {
                return m30269new(((ab2) obj).r());
            }
            return -1;
        }

        /* renamed from: new, reason: not valid java name */
        public int m30269new(short s) {
            return Cclass.yg(this.f27758do, s);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ int m30230break(long[] jArr, long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = Ctransient.m31399class(jArr);
        }
        return m30249this(jArr, j, i, i2);
    }

    /* renamed from: case, reason: not valid java name */
    public static /* synthetic */ int m30231case(int[] iArr, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = Cprotected.m30795class(iArr);
        }
        return m30252try(iArr, i, i2, i3);
    }

    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: catch, reason: not valid java name */
    public static final int m30232catch(@m41 byte[] binarySearch, byte b, int i, int i2) {
        Csuper.m30700throw(binarySearch, "$this$binarySearch");
        kotlin.collections.Cnew.Companion.m30123new(i, i2, Cinterface.m30505class(binarySearch));
        int i3 = b & 255;
        int i4 = i2 - 1;
        while (i <= i4) {
            int i5 = (i + i4) >>> 1;
            int iM5558for = oc2.m5558for(binarySearch[i5], i3);
            if (iM5558for < 0) {
                i = i5 + 1;
            } else {
                if (iM5558for <= 0) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ int m30233class(byte[] bArr, byte b, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = Cinterface.m30505class(bArr);
        }
        return m30232catch(bArr, b, i, i2);
    }

    @iz1(version = "1.3")
    @Cbreak
    @um0
    /* renamed from: const, reason: not valid java name */
    private static final byte m30234const(byte[] bArr, int i) {
        return Cinterface.m30503break(bArr, i);
    }

    @m41
    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: do, reason: not valid java name */
    public static final List<ja2> m30235do(@m41 int[] asList) {
        Csuper.m30700throw(asList, "$this$asList");
        return new Cdo(asList);
    }

    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: else, reason: not valid java name */
    public static final int m30236else(@m41 short[] binarySearch, short s, int i, int i2) {
        Csuper.m30700throw(binarySearch, "$this$binarySearch");
        kotlin.collections.Cnew.Companion.m30123new(i, i2, Cinstanceof.m30486class(binarySearch));
        int i3 = s & ab2.f80for;
        int i4 = i2 - 1;
        while (i <= i4) {
            int i5 = (i + i4) >>> 1;
            int iM5558for = oc2.m5558for(binarySearch[i5], i3);
            if (iM5558for < 0) {
                i = i5 + 1;
            } else {
                if (iM5558for <= 0) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return -(i + 1);
    }

    @iz1(version = "1.3")
    @Cbreak
    @um0
    /* renamed from: final, reason: not valid java name */
    private static final short m30237final(short[] sArr, int i) {
        return Cinstanceof.m30484break(sArr, i);
    }

    @m41
    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: for, reason: not valid java name */
    public static final List<oa2> m30238for(@m41 long[] asList) {
        Csuper.m30700throw(asList, "$this$asList");
        return new C0360if(asList);
    }

    /* renamed from: goto, reason: not valid java name */
    public static /* synthetic */ int m30239goto(short[] sArr, short s, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = Cinstanceof.m30486class(sArr);
        }
        return m30236else(sArr, s, i, i2);
    }

    @m41
    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: if, reason: not valid java name */
    public static final List<ea2> m30240if(@m41 byte[] asList) {
        Csuper.m30700throw(asList, "$this$asList");
        return new Cfor(asList);
    }

    @Cbreak
    @um0
    @wp0(name = "sumOfBigDecimal")
    @h91
    @iz1(version = "1.4")
    /* renamed from: import, reason: not valid java name */
    private static final BigDecimal m30241import(int[] iArr, Function1<? super ja2, ? extends BigDecimal> function1) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0);
        Csuper.m30696super(bigDecimalValueOf, "BigDecimal.valueOf(this.toLong())");
        for (int i : iArr) {
            bigDecimalValueOf = bigDecimalValueOf.add(function1.invoke(ja2.m3773if(i)));
            Csuper.m30696super(bigDecimalValueOf, "this.add(other)");
        }
        return bigDecimalValueOf;
    }

    @Cbreak
    @um0
    @wp0(name = "sumOfBigDecimal")
    @h91
    @iz1(version = "1.4")
    /* renamed from: native, reason: not valid java name */
    private static final BigDecimal m30242native(long[] jArr, Function1<? super oa2, ? extends BigDecimal> function1) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0);
        Csuper.m30696super(bigDecimalValueOf, "BigDecimal.valueOf(this.toLong())");
        for (long j : jArr) {
            bigDecimalValueOf = bigDecimalValueOf.add(function1.invoke(oa2.m5525if(j)));
            Csuper.m30696super(bigDecimalValueOf, "this.add(other)");
        }
        return bigDecimalValueOf;
    }

    @m41
    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: new, reason: not valid java name */
    public static final List<ab2> m30243new(@m41 short[] asList) {
        Csuper.m30700throw(asList, "$this$asList");
        return new Cnew(asList);
    }

    @Cbreak
    @um0
    @wp0(name = "sumOfBigDecimal")
    @h91
    @iz1(version = "1.4")
    /* renamed from: public, reason: not valid java name */
    private static final BigDecimal m30244public(short[] sArr, Function1<? super ab2, ? extends BigDecimal> function1) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0);
        Csuper.m30696super(bigDecimalValueOf, "BigDecimal.valueOf(this.toLong())");
        for (short s : sArr) {
            bigDecimalValueOf = bigDecimalValueOf.add(function1.invoke(ab2.m141if(s)));
            Csuper.m30696super(bigDecimalValueOf, "this.add(other)");
        }
        return bigDecimalValueOf;
    }

    @Cbreak
    @um0
    @wp0(name = "sumOfBigInteger")
    @h91
    @iz1(version = "1.4")
    /* renamed from: return, reason: not valid java name */
    private static final BigInteger m30245return(byte[] bArr, Function1<? super ea2, ? extends BigInteger> function1) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0);
        Csuper.m30696super(bigIntegerValueOf, "BigInteger.valueOf(this.toLong())");
        for (byte b : bArr) {
            bigIntegerValueOf = bigIntegerValueOf.add(function1.invoke(ea2.m1730if(b)));
            Csuper.m30696super(bigIntegerValueOf, "this.add(other)");
        }
        return bigIntegerValueOf;
    }

    @Cbreak
    @um0
    @wp0(name = "sumOfBigInteger")
    @h91
    @iz1(version = "1.4")
    /* renamed from: static, reason: not valid java name */
    private static final BigInteger m30246static(int[] iArr, Function1<? super ja2, ? extends BigInteger> function1) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0);
        Csuper.m30696super(bigIntegerValueOf, "BigInteger.valueOf(this.toLong())");
        for (int i : iArr) {
            bigIntegerValueOf = bigIntegerValueOf.add(function1.invoke(ja2.m3773if(i)));
            Csuper.m30696super(bigIntegerValueOf, "this.add(other)");
        }
        return bigIntegerValueOf;
    }

    @iz1(version = "1.3")
    @Cbreak
    @um0
    /* renamed from: super, reason: not valid java name */
    private static final int m30247super(int[] iArr, int i) {
        return Cprotected.m30793break(iArr, i);
    }

    @Cbreak
    @um0
    @wp0(name = "sumOfBigInteger")
    @h91
    @iz1(version = "1.4")
    /* renamed from: switch, reason: not valid java name */
    private static final BigInteger m30248switch(long[] jArr, Function1<? super oa2, ? extends BigInteger> function1) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0);
        Csuper.m30696super(bigIntegerValueOf, "BigInteger.valueOf(this.toLong())");
        for (long j : jArr) {
            bigIntegerValueOf = bigIntegerValueOf.add(function1.invoke(oa2.m5525if(j)));
            Csuper.m30696super(bigIntegerValueOf, "this.add(other)");
        }
        return bigIntegerValueOf;
    }

    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: this, reason: not valid java name */
    public static final int m30249this(@m41 long[] binarySearch, long j, int i, int i2) {
        Csuper.m30700throw(binarySearch, "$this$binarySearch");
        kotlin.collections.Cnew.Companion.m30123new(i, i2, Ctransient.m31399class(binarySearch));
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) >>> 1;
            int iM5557else = oc2.m5557else(binarySearch[i4], j);
            if (iM5557else < 0) {
                i = i4 + 1;
            } else {
                if (iM5557else <= 0) {
                    return i4;
                }
                i3 = i4 - 1;
            }
        }
        return -(i + 1);
    }

    @iz1(version = "1.3")
    @Cbreak
    @um0
    /* renamed from: throw, reason: not valid java name */
    private static final long m30250throw(long[] jArr, int i) {
        return Ctransient.m31397break(jArr, i);
    }

    @Cbreak
    @um0
    @wp0(name = "sumOfBigInteger")
    @h91
    @iz1(version = "1.4")
    /* renamed from: throws, reason: not valid java name */
    private static final BigInteger m30251throws(short[] sArr, Function1<? super ab2, ? extends BigInteger> function1) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0);
        Csuper.m30696super(bigIntegerValueOf, "BigInteger.valueOf(this.toLong())");
        for (short s : sArr) {
            bigIntegerValueOf = bigIntegerValueOf.add(function1.invoke(ab2.m141if(s)));
            Csuper.m30696super(bigIntegerValueOf, "this.add(other)");
        }
        return bigIntegerValueOf;
    }

    @iz1(version = "1.3")
    @Cbreak
    /* renamed from: try, reason: not valid java name */
    public static final int m30252try(@m41 int[] binarySearch, int i, int i2, int i3) {
        Csuper.m30700throw(binarySearch, "$this$binarySearch");
        kotlin.collections.Cnew.Companion.m30123new(i2, i3, Cprotected.m30795class(binarySearch));
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int iM5558for = oc2.m5558for(binarySearch[i5], i);
            if (iM5558for < 0) {
                i2 = i5 + 1;
            } else {
                if (iM5558for <= 0) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return -(i2 + 1);
    }

    @Cbreak
    @um0
    @wp0(name = "sumOfBigDecimal")
    @h91
    @iz1(version = "1.4")
    /* renamed from: while, reason: not valid java name */
    private static final BigDecimal m30253while(byte[] bArr, Function1<? super ea2, ? extends BigDecimal> function1) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0);
        Csuper.m30696super(bigDecimalValueOf, "BigDecimal.valueOf(this.toLong())");
        for (byte b : bArr) {
            bigDecimalValueOf = bigDecimalValueOf.add(function1.invoke(ea2.m1730if(b)));
            Csuper.m30696super(bigDecimalValueOf, "this.add(other)");
        }
        return bigDecimalValueOf;
    }
}
