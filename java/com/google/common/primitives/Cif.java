package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

@ki0
/* renamed from: com.google.common.primitives.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif {

    @ki0
    /* renamed from: com.google.common.primitives.if$do, reason: invalid class name */
    public static class Cdo extends AbstractList<Byte> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        public final byte[] array;
        public final int end;
        public final int start;

        public Cdo(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Byte) && Cif.m17626this(this.array, ((Byte) obj).byteValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@b51 Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cdo)) {
                return super.equals(obj);
            }
            Cdo cdo = (Cdo) obj;
            int size = size();
            if (cdo.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.array[this.start + i] != cdo.array[cdo.start + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iM17619else = 1;
            for (int i = this.start; i < this.end; i++) {
                iM17619else = (iM17619else * 31) + Cif.m17619else(this.array[i]);
            }
            return iM17619else;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iM17626this;
            if (!(obj instanceof Byte) || (iM17626this = Cif.m17626this(this.array, ((Byte) obj).byteValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17626this - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iM17616class;
            if (!(obj instanceof Byte) || (iM17616class = Cif.m17616class(this.array, ((Byte) obj).byteValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iM17616class - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Byte> subList(int i, int i2) {
            af1.s(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            byte[] bArr = this.array;
            int i3 = this.start;
            return new Cdo(bArr, i + i3, i3 + i2);
        }

        public byte[] toByteArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            sb.append((int) this.array[this.start]);
            int i = this.start;
            while (true) {
                i++;
                if (i >= this.end) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(", ");
                sb.append((int) this.array[i]);
            }
        }

        public Cdo(byte[] bArr, int i, int i2) {
            this.array = bArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Byte get(int i) {
            af1.m222private(i, size());
            return Byte.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Byte set(int i, Byte b) {
            af1.m222private(i, size());
            byte[] bArr = this.array;
            int i2 = this.start;
            byte b2 = bArr[i2 + i];
            bArr[i2 + i] = ((Byte) af1.m205continue(b)).byteValue();
            return Byte.valueOf(b2);
        }
    }

    private Cif() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m17613break(byte[] bArr, byte[] bArr2) {
        af1.m227strictfp(bArr, "array");
        af1.m227strictfp(bArr2, TypedValues.Attributes.S_TARGET);
        if (bArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (bArr.length - bArr2.length) + 1) {
            for (int i2 = 0; i2 < bArr2.length; i2++) {
                if (bArr[i + i2] != bArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    /* renamed from: case, reason: not valid java name */
    public static byte[] m17614case(byte[] bArr, int i, int i2) {
        af1.m202catch(i >= 0, "Invalid minLength: %s", i);
        af1.m202catch(i2 >= 0, "Invalid padding: %s", i2);
        return bArr.length < i ? Arrays.copyOf(bArr, i + i2) : bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m17615catch(byte[] bArr, byte b) {
        return m17616class(bArr, b, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static int m17616class(byte[] bArr, byte b, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (bArr[i3] == b) {
                return i3;
            }
        }
        return -1;
    }

    /* renamed from: const, reason: not valid java name */
    public static void m17617const(byte[] bArr) {
        af1.m205continue(bArr);
        m17620final(bArr, 0, bArr.length);
    }

    /* renamed from: else, reason: not valid java name */
    public static int m17619else(byte b) {
        return b;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m17620final(byte[] bArr, int i, int i2) {
        af1.m205continue(bArr);
        af1.s(i, i2, bArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            byte b = bArr[i];
            bArr[i] = bArr[i3];
            bArr[i3] = b;
            i++;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static List<Byte> m17621for(byte... bArr) {
        return bArr.length == 0 ? Collections.emptyList() : new Cdo(bArr);
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m17622goto(byte[] bArr, byte b) {
        return m17626this(bArr, b, 0, bArr.length);
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m17624new(byte[]... bArr) {
        int length = 0;
        for (byte[] bArr2 : bArr) {
            length += bArr2.length;
        }
        byte[] bArr3 = new byte[length];
        int length2 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
            length2 += bArr4.length;
        }
        return bArr3;
    }

    /* renamed from: super, reason: not valid java name */
    public static byte[] m17625super(Collection<? extends Number> collection) {
        if (collection instanceof Cdo) {
            return ((Cdo) collection).toByteArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = ((Number) af1.m205continue(array[i])).byteValue();
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static int m17626this(byte[] bArr, byte b, int i, int i2) {
        while (i < i2) {
            if (bArr[i] == b) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m17627try(byte[] bArr, byte b) {
        for (byte b2 : bArr) {
            if (b2 == b) {
                return true;
            }
        }
        return false;
    }
}
