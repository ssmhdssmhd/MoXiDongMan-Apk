package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.q3;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cvolatile {

    /* renamed from: org.bouncycastle.pqc.crypto.xmss.volatile$do, reason: invalid class name */
    public static class Cdo extends ObjectInputStream {

        /* renamed from: for, reason: not valid java name */
        private static final Set f32535for;

        /* renamed from: do, reason: not valid java name */
        private final Class f32536do;

        /* renamed from: if, reason: not valid java name */
        private boolean f32537if;

        static {
            HashSet hashSet = new HashSet();
            f32535for = hashSet;
            hashSet.add("java.util.TreeMap");
            hashSet.add("java.lang.Integer");
            hashSet.add("java.lang.Number");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDS");
            hashSet.add("java.util.ArrayList");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.XMSSNode");
            hashSet.add("[B");
            hashSet.add("java.util.LinkedList");
            hashSet.add("java.util.Stack");
            hashSet.add("java.util.Vector");
            hashSet.add("[Ljava.lang.Object;");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDSTreeHash");
        }

        public Cdo(Class cls, InputStream inputStream) throws IOException {
            super(inputStream);
            this.f32537if = false;
            this.f32536do = cls;
        }

        @Override // java.io.ObjectInputStream
        public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            if (this.f32537if) {
                if (!f32535for.contains(objectStreamClass.getName())) {
                    throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
                }
            } else {
                if (!objectStreamClass.getName().equals(this.f32536do.getName())) {
                    throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
                }
                this.f32537if = true;
            }
            return super.resolveClass(objectStreamClass);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static int m36064break(Digest digest) {
        Objects.requireNonNull(digest, "digest == null");
        String algorithmName = digest.getAlgorithmName();
        if (algorithmName.equals("SHAKE128")) {
            return 32;
        }
        if (algorithmName.equals("SHAKE256")) {
            return 64;
        }
        return digest.getDigestSize();
    }

    /* renamed from: case, reason: not valid java name */
    public static void m36065case(byte[] bArr, byte[] bArr2, int i) {
        Objects.requireNonNull(bArr, "dst == null");
        Objects.requireNonNull(bArr2, "src == null");
        if (i < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        }
        if (bArr2.length + i > bArr.length) {
            throw new IllegalArgumentException("src length + offset must not be greater than size of destination");
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            bArr[i + i2] = bArr2[i2];
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m36066catch(long j, int i) {
        return (int) (j & ((1 << i) - 1));
    }

    /* renamed from: class, reason: not valid java name */
    public static long m36067class(long j, int i) {
        return j >> i;
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m36068const(byte[][] bArr) {
        if (bArr == null) {
            return true;
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2 == null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m36069do(byte[][] bArr, byte[][] bArr2) {
        if (m36068const(bArr) || m36068const(bArr2)) {
            throw new NullPointerException("a or b == null");
        }
        for (int i = 0; i < bArr.length; i++) {
            if (!q3.m6362case(bArr[i], bArr2[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public static Object m36070else(byte[] bArr, Class cls) throws ClassNotFoundException, IOException {
        Cdo cdo = new Cdo(cls, new ByteArrayInputStream(bArr));
        Object object = cdo.readObject();
        if (cdo.available() != 0) {
            throw new IOException("unexpected data found at end of ObjectInputStream");
        }
        if (cls.isInstance(object)) {
            return object;
        }
        throw new IOException("unexpected class found in ObjectInputStream");
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m36071final(int i, long j) {
        if (j >= 0) {
            return j < (1 << i);
        }
        throw new IllegalStateException("index must not be negative");
    }

    /* renamed from: for, reason: not valid java name */
    public static int m36072for(int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            if (((i >> i3) & 1) == 0) {
                return i3;
            }
        }
        return 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m36073goto(byte[][] bArr) {
        if (m36068const(bArr)) {
            throw new NullPointerException("x has null pointers");
        }
        for (byte[] bArr2 : bArr) {
            System.out.println(Cfor.m36331goto(bArr2));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static long m36074if(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "in == null");
        long j = 0;
        for (int i3 = i; i3 < i + i2; i3++) {
            j = (j << 8) | (bArr[i3] & 255);
        }
        return j;
    }

    /* renamed from: import, reason: not valid java name */
    public static void m36075import(long j, byte[] bArr, int i) {
        Objects.requireNonNull(bArr, "in == null");
        if (bArr.length - i < 8) {
            throw new IllegalArgumentException("not enough space in array");
        }
        bArr[i] = (byte) ((j >> 56) & 255);
        bArr[i + 1] = (byte) ((j >> 48) & 255);
        bArr[i + 2] = (byte) ((j >> 40) & 255);
        bArr[i + 3] = (byte) ((j >> 32) & 255);
        bArr[i + 4] = (byte) ((j >> 24) & 255);
        bArr[i + 5] = (byte) ((j >> 16) & 255);
        bArr[i + 6] = (byte) ((j >> 8) & 255);
        bArr[i + 7] = (byte) (j & 255);
    }

    /* renamed from: native, reason: not valid java name */
    public static byte[] m36076native(Object obj) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(obj);
        objectOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m36077new(byte[] bArr) {
        Objects.requireNonNull(bArr, "in == null");
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: public, reason: not valid java name */
    public static byte[] m36078public(long j, int i) {
        byte[] bArr = new byte[i];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            bArr[i2] = (byte) j;
            j >>>= 8;
        }
        return bArr;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m36079super(long j, int i, int i2) {
        return j != 0 && (j + 1) % ((long) Math.pow((double) (1 << i), (double) i2)) == 0;
    }

    /* renamed from: this, reason: not valid java name */
    public static byte[] m36080this(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "src == null");
        if (i < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("length hast to be >= 0");
        }
        if (i + i2 > bArr.length) {
            throw new IllegalArgumentException("offset + length must not be greater then size of source array");
        }
        byte[] bArr2 = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr2[i3] = bArr[i + i3];
        }
        return bArr2;
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m36081throw(long j, int i, int i2) {
        return j != 0 && j % ((long) Math.pow((double) (1 << i), (double) (i2 + 1))) == 0;
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[][] m36082try(byte[][] bArr) {
        if (m36068const(bArr)) {
            throw new NullPointerException("in has null pointers");
        }
        byte[][] bArr2 = new byte[bArr.length][];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = new byte[bArr[i].length];
            System.arraycopy(bArr[i], 0, bArr2[i], 0, bArr[i].length);
        }
        return bArr2;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m36083while(int i) {
        int i2 = 0;
        while (true) {
            i >>= 1;
            if (i == 0) {
                return i2;
            }
            i2++;
        }
    }
}
