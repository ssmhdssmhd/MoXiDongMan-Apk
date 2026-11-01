package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class h extends Cif<Float> implements Internal.FloatList, RandomAccess, PrimitiveNonBoxingCollection {

    /* renamed from: try, reason: not valid java name */
    private static final h f16956try;

    /* renamed from: for, reason: not valid java name */
    private float[] f16957for;

    /* renamed from: new, reason: not valid java name */
    private int f16958new;

    static {
        h hVar = new h(new float[0], 0);
        f16956try = hVar;
        hVar.makeImmutable();
    }

    public h() {
        this(new float[10], 0);
    }

    /* renamed from: case, reason: not valid java name */
    private void m20543case(int i) {
        if (i < 0 || i >= this.f16958new) {
            throw new IndexOutOfBoundsException(m20544goto(i));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private String m20544goto(int i) {
        int i2 = this.f16958new;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    private void m20545new(int i, float f) {
        int i2;
        m20603do();
        if (i < 0 || i > (i2 = this.f16958new)) {
            throw new IndexOutOfBoundsException(m20544goto(i));
        }
        float[] fArr = this.f16957for;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.f16957for, i, fArr2, i + 1, this.f16958new - i);
            this.f16957for = fArr2;
        }
        this.f16957for[i] = f;
        this.f16958new++;
        ((AbstractList) this).modCount++;
    }

    /* renamed from: try, reason: not valid java name */
    public static h m20546try() {
        return f16956try;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        m20603do();
        Internal.m19623new(collection);
        if (!(collection instanceof h)) {
            return super.addAll(collection);
        }
        h hVar = (h) collection;
        int i = hVar.f16958new;
        if (i == 0) {
            return false;
        }
        int i2 = this.f16958new;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.f16957for;
        if (i3 > fArr.length) {
            this.f16957for = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(hVar.f16957for, 0, this.f16957for, this.f16958new, hVar.f16958new);
        this.f16958new = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.FloatList
    public void addFloat(float f) {
        m20603do();
        int i = this.f16958new;
        float[] fArr = this.f16957for;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f16957for = fArr2;
        }
        float[] fArr3 = this.f16957for;
        int i2 = this.f16958new;
        this.f16958new = i2 + 1;
        fArr3[i2] = f;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public Float set(int i, Float f) {
        return Float.valueOf(setFloat(i, f.floatValue()));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Float get(int i) {
        return Float.valueOf(getFloat(i));
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return super.equals(obj);
        }
        h hVar = (h) obj;
        if (this.f16958new != hVar.f16958new) {
            return false;
        }
        float[] fArr = hVar.f16957for;
        for (int i = 0; i < this.f16958new; i++) {
            if (Float.floatToIntBits(this.f16957for[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean add(Float f) {
        addFloat(f.floatValue());
        return true;
    }

    @Override // com.google.protobuf.Internal.FloatList
    public float getFloat(int i) {
        m20543case(i);
        return this.f16957for[i];
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iFloatToIntBits = 1;
        for (int i = 0; i < this.f16958new; i++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f16957for[i]);
        }
        return iFloatToIntBits;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void add(int i, Float f) {
        m20545new(i, f.floatValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f16957for[i] == fFloatValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList
    public void removeRange(int i, int i2) {
        m20603do();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f16957for;
        System.arraycopy(fArr, i2, fArr, i, this.f16958new - i2);
        this.f16958new -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Internal.FloatList
    public float setFloat(int i, float f) {
        m20603do();
        m20543case(i);
        float[] fArr = this.f16957for;
        float f2 = fArr[i];
        fArr[i] = f;
        return f2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f16958new;
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractList, java.util.List
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public Float remove(int i) {
        m20603do();
        m20543case(i);
        float[] fArr = this.f16957for;
        float f = fArr[i];
        if (i < this.f16958new - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (r2 - i) - 1);
        }
        this.f16958new--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    private h(float[] fArr, int i) {
        this.f16957for = fArr;
        this.f16958new = i;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Float> mutableCopyWithCapacity2(int i) {
        if (i >= this.f16958new) {
            return new h(Arrays.copyOf(this.f16957for, i), this.f16958new);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.Cif, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m20603do();
        for (int i = 0; i < this.f16958new; i++) {
            if (obj.equals(Float.valueOf(this.f16957for[i]))) {
                float[] fArr = this.f16957for;
                System.arraycopy(fArr, i + 1, fArr, i, (this.f16958new - i) - 1);
                this.f16958new--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }
}
