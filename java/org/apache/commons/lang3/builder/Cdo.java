package org.apache.commons.lang3.builder;

import android.support.v4.r00;
import android.support.v4.s00;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: org.apache.commons.lang3.builder.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements Builder<s00> {

    /* renamed from: do, reason: not valid java name */
    private final List<r00<?>> f28610do;

    /* renamed from: for, reason: not valid java name */
    private final Object f28611for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f28612if;

    /* renamed from: new, reason: not valid java name */
    private final Object f28613new;

    /* renamed from: try, reason: not valid java name */
    private final org.apache.commons.lang3.builder.Ccase f28614try;

    /* renamed from: org.apache.commons.lang3.builder.do$break, reason: invalid class name */
    public class Cbreak extends r00<Boolean> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ boolean val$lhs;
        public final /* synthetic */ boolean val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cbreak(String str, boolean z, boolean z2) {
            super(str);
            this.val$lhs = z;
            this.val$rhs = z2;
        }

        @Override // android.support.v4.pb1
        public Boolean getLeft() {
            return Boolean.valueOf(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Boolean getRight() {
            return Boolean.valueOf(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$case, reason: invalid class name */
    public class Ccase extends r00<Short> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ short val$lhs;
        public final /* synthetic */ short val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ccase(String str, short s, short s2) {
            super(str);
            this.val$lhs = s;
            this.val$rhs = s2;
        }

        @Override // android.support.v4.pb1
        public Short getLeft() {
            return Short.valueOf(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Short getRight() {
            return Short.valueOf(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$catch, reason: invalid class name */
    public class Ccatch extends r00<Boolean[]> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ boolean[] val$lhs;
        public final /* synthetic */ boolean[] val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ccatch(String str, boolean[] zArr, boolean[] zArr2) {
            super(str);
            this.val$lhs = zArr;
            this.val$rhs = zArr2;
        }

        @Override // android.support.v4.pb1
        public Boolean[] getLeft() {
            return org.apache.commons.lang3.Cif.l2(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Boolean[] getRight() {
            return org.apache.commons.lang3.Cif.l2(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$class, reason: invalid class name */
    public class Cclass extends r00<Byte> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ byte val$lhs;
        public final /* synthetic */ byte val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cclass(String str, byte b, byte b2) {
            super(str);
            this.val$lhs = b;
            this.val$rhs = b2;
        }

        @Override // android.support.v4.pb1
        public Byte getLeft() {
            return Byte.valueOf(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Byte getRight() {
            return Byte.valueOf(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$const, reason: invalid class name */
    public class Cconst extends r00<Byte[]> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ byte[] val$lhs;
        public final /* synthetic */ byte[] val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cconst(String str, byte[] bArr, byte[] bArr2) {
            super(str);
            this.val$lhs = bArr;
            this.val$rhs = bArr2;
        }

        @Override // android.support.v4.pb1
        public Byte[] getLeft() {
            return org.apache.commons.lang3.Cif.m2(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Byte[] getRight() {
            return org.apache.commons.lang3.Cif.m2(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$do, reason: invalid class name and collision with other inner class name */
    public class C0387do extends r00<Float[]> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ float[] val$lhs;
        public final /* synthetic */ float[] val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0387do(String str, float[] fArr, float[] fArr2) {
            super(str);
            this.val$lhs = fArr;
            this.val$rhs = fArr2;
        }

        @Override // android.support.v4.pb1
        public Float[] getLeft() {
            return org.apache.commons.lang3.Cif.p2(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Float[] getRight() {
            return org.apache.commons.lang3.Cif.p2(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$else, reason: invalid class name */
    public class Celse extends r00<Short[]> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ short[] val$lhs;
        public final /* synthetic */ short[] val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Celse(String str, short[] sArr, short[] sArr2) {
            super(str);
            this.val$lhs = sArr;
            this.val$rhs = sArr2;
        }

        @Override // android.support.v4.pb1
        public Short[] getLeft() {
            return org.apache.commons.lang3.Cif.s2(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Short[] getRight() {
            return org.apache.commons.lang3.Cif.s2(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$final, reason: invalid class name */
    public class Cfinal extends r00<Character> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ char val$lhs;
        public final /* synthetic */ char val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfinal(String str, char c, char c2) {
            super(str);
            this.val$lhs = c;
            this.val$rhs = c2;
        }

        @Override // android.support.v4.pb1
        public Character getLeft() {
            return Character.valueOf(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Character getRight() {
            return Character.valueOf(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$for, reason: invalid class name */
    public class Cfor extends r00<Integer[]> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ int[] val$lhs;
        public final /* synthetic */ int[] val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(String str, int[] iArr, int[] iArr2) {
            super(str);
            this.val$lhs = iArr;
            this.val$rhs = iArr2;
        }

        @Override // android.support.v4.pb1
        public Integer[] getLeft() {
            return org.apache.commons.lang3.Cif.q2(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Integer[] getRight() {
            return org.apache.commons.lang3.Cif.q2(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$goto, reason: invalid class name */
    public class Cgoto extends r00<Object> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ Object val$lhs;
        public final /* synthetic */ Object val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cgoto(String str, Object obj, Object obj2) {
            super(str);
            this.val$lhs = obj;
            this.val$rhs = obj2;
        }

        @Override // android.support.v4.pb1
        public Object getLeft() {
            return this.val$lhs;
        }

        @Override // android.support.v4.pb1
        public Object getRight() {
            return this.val$rhs;
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$if, reason: invalid class name */
    public class Cif extends r00<Integer> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ int val$lhs;
        public final /* synthetic */ int val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(String str, int i, int i2) {
            super(str);
            this.val$lhs = i;
            this.val$rhs = i2;
        }

        @Override // android.support.v4.pb1
        public Integer getLeft() {
            return Integer.valueOf(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Integer getRight() {
            return Integer.valueOf(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$import, reason: invalid class name */
    public class Cimport extends r00<Float> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ float val$lhs;
        public final /* synthetic */ float val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cimport(String str, float f, float f2) {
            super(str);
            this.val$lhs = f;
            this.val$rhs = f2;
        }

        @Override // android.support.v4.pb1
        public Float getLeft() {
            return Float.valueOf(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Float getRight() {
            return Float.valueOf(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$new, reason: invalid class name */
    public class Cnew extends r00<Long> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ long val$lhs;
        public final /* synthetic */ long val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(String str, long j, long j2) {
            super(str);
            this.val$lhs = j;
            this.val$rhs = j2;
        }

        @Override // android.support.v4.pb1
        public Long getLeft() {
            return Long.valueOf(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Long getRight() {
            return Long.valueOf(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$super, reason: invalid class name */
    public class Csuper extends r00<Character[]> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ char[] val$lhs;
        public final /* synthetic */ char[] val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Csuper(String str, char[] cArr, char[] cArr2) {
            super(str);
            this.val$lhs = cArr;
            this.val$rhs = cArr2;
        }

        @Override // android.support.v4.pb1
        public Character[] getLeft() {
            return org.apache.commons.lang3.Cif.n2(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Character[] getRight() {
            return org.apache.commons.lang3.Cif.n2(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$this, reason: invalid class name */
    public class Cthis extends r00<Object[]> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ Object[] val$lhs;
        public final /* synthetic */ Object[] val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cthis(String str, Object[] objArr, Object[] objArr2) {
            super(str);
            this.val$lhs = objArr;
            this.val$rhs = objArr2;
        }

        @Override // android.support.v4.pb1
        public Object[] getLeft() {
            return this.val$lhs;
        }

        @Override // android.support.v4.pb1
        public Object[] getRight() {
            return this.val$rhs;
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$throw, reason: invalid class name */
    public class Cthrow extends r00<Double> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ double val$lhs;
        public final /* synthetic */ double val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cthrow(String str, double d, double d2) {
            super(str);
            this.val$lhs = d;
            this.val$rhs = d2;
        }

        @Override // android.support.v4.pb1
        public Double getLeft() {
            return Double.valueOf(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Double getRight() {
            return Double.valueOf(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$try, reason: invalid class name */
    public class Ctry extends r00<Long[]> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ long[] val$lhs;
        public final /* synthetic */ long[] val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ctry(String str, long[] jArr, long[] jArr2) {
            super(str);
            this.val$lhs = jArr;
            this.val$rhs = jArr2;
        }

        @Override // android.support.v4.pb1
        public Long[] getLeft() {
            return org.apache.commons.lang3.Cif.r2(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Long[] getRight() {
            return org.apache.commons.lang3.Cif.r2(this.val$rhs);
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.do$while, reason: invalid class name */
    public class Cwhile extends r00<Double[]> {
        private static final long serialVersionUID = 1;
        public final /* synthetic */ double[] val$lhs;
        public final /* synthetic */ double[] val$rhs;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cwhile(String str, double[] dArr, double[] dArr2) {
            super(str);
            this.val$lhs = dArr;
            this.val$rhs = dArr2;
        }

        @Override // android.support.v4.pb1
        public Double[] getLeft() {
            return org.apache.commons.lang3.Cif.o2(this.val$lhs);
        }

        @Override // android.support.v4.pb1
        public Double[] getRight() {
            return org.apache.commons.lang3.Cif.o2(this.val$rhs);
        }
    }

    public Cdo(Object obj, Object obj2, org.apache.commons.lang3.builder.Ccase ccase) {
        if (obj == null) {
            throw new IllegalArgumentException("lhs cannot be null");
        }
        if (obj2 == null) {
            throw new IllegalArgumentException("rhs cannot be null");
        }
        this.f28610do = new ArrayList();
        this.f28611for = obj;
        this.f28613new = obj2;
        this.f28614try = ccase;
        this.f28612if = obj == obj2 || obj.equals(obj2);
    }

    /* renamed from: break, reason: not valid java name */
    public Cdo m32138break(String str, byte[] bArr, byte[] bArr2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && !Arrays.equals(bArr, bArr2)) {
            this.f28610do.add(new Cconst(str, bArr, bArr2));
        }
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public Cdo m32139case(String str, long j, long j2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && j != j2) {
            this.f28610do.add(new Cnew(str, j, j2));
        }
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cdo m32140catch(String str, char[] cArr, char[] cArr2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && !Arrays.equals(cArr, cArr2)) {
            this.f28610do.add(new Csuper(str, cArr, cArr2));
        }
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public Cdo m32141class(String str, double[] dArr, double[] dArr2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && !Arrays.equals(dArr, dArr2)) {
            this.f28610do.add(new Cwhile(str, dArr, dArr2));
        }
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public Cdo m32142const(String str, float[] fArr, float[] fArr2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && !Arrays.equals(fArr, fArr2)) {
            this.f28610do.add(new C0387do(str, fArr, fArr2));
        }
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public Cdo m32143do(String str, byte b, byte b2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && b != b2) {
            this.f28610do.add(new Cclass(str, b, b2));
        }
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public Cdo m32144else(String str, Object obj, Object obj2) {
        if (this.f28612if || obj == obj2) {
            return this;
        }
        Object obj3 = obj != null ? obj : obj2;
        if (obj3.getClass().isArray()) {
            return obj3 instanceof boolean[] ? m32149import(str, (boolean[]) obj, (boolean[]) obj2) : obj3 instanceof byte[] ? m32138break(str, (byte[]) obj, (byte[]) obj2) : obj3 instanceof char[] ? m32140catch(str, (char[]) obj, (char[]) obj2) : obj3 instanceof double[] ? m32141class(str, (double[]) obj, (double[]) obj2) : obj3 instanceof float[] ? m32142const(str, (float[]) obj, (float[]) obj2) : obj3 instanceof int[] ? m32145final(str, (int[]) obj, (int[]) obj2) : obj3 instanceof long[] ? m32152super(str, (long[]) obj, (long[]) obj2) : obj3 instanceof short[] ? m32156while(str, (short[]) obj, (short[]) obj2) : m32154throw(str, (Object[]) obj, (Object[]) obj2);
        }
        this.f28610do.add(new Cgoto(str, obj, obj2));
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public Cdo m32145final(String str, int[] iArr, int[] iArr2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && !Arrays.equals(iArr, iArr2)) {
            this.f28610do.add(new Cfor(str, iArr, iArr2));
        }
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public Cdo m32146for(String str, double d, double d2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && Double.doubleToLongBits(d) != Double.doubleToLongBits(d2)) {
            this.f28610do.add(new Cthrow(str, d, d2));
        }
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cdo m32147goto(String str, short s, short s2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && s != s2) {
            this.f28610do.add(new Ccase(str, s, s2));
        }
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public Cdo m32148if(String str, char c, char c2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && c != c2) {
            this.f28610do.add(new Cfinal(str, c, c2));
        }
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public Cdo m32149import(String str, boolean[] zArr, boolean[] zArr2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && !Arrays.equals(zArr, zArr2)) {
            this.f28610do.add(new Ccatch(str, zArr, zArr2));
        }
        return this;
    }

    @Override // org.apache.commons.lang3.builder.Builder
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public s00 build() {
        return new s00(this.f28611for, this.f28613new, this.f28610do, this.f28614try);
    }

    /* renamed from: new, reason: not valid java name */
    public Cdo m32151new(String str, float f, float f2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && Float.floatToIntBits(f) != Float.floatToIntBits(f2)) {
            this.f28610do.add(new Cimport(str, f, f2));
        }
        return this;
    }

    /* renamed from: super, reason: not valid java name */
    public Cdo m32152super(String str, long[] jArr, long[] jArr2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && !Arrays.equals(jArr, jArr2)) {
            this.f28610do.add(new Ctry(str, jArr, jArr2));
        }
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public Cdo m32153this(String str, boolean z, boolean z2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && z != z2) {
            this.f28610do.add(new Cbreak(str, z, z2));
        }
        return this;
    }

    /* renamed from: throw, reason: not valid java name */
    public Cdo m32154throw(String str, Object[] objArr, Object[] objArr2) {
        if (!this.f28612if && !Arrays.equals(objArr, objArr2)) {
            this.f28610do.add(new Cthis(str, objArr, objArr2));
        }
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public Cdo m32155try(String str, int i, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && i != i2) {
            this.f28610do.add(new Cif(str, i, i2));
        }
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public Cdo m32156while(String str, short[] sArr, short[] sArr2) {
        if (str == null) {
            throw new IllegalArgumentException("Field name cannot be null");
        }
        if (!this.f28612if && !Arrays.equals(sArr, sArr2)) {
            this.f28610do.add(new Celse(str, sArr, sArr2));
        }
        return this;
    }
}
