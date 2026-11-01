package org.bouncycastle.pqc.crypto.gmss;

import android.support.v4.cf0;
import android.support.v4.if0;
import android.support.v4.q3;
import android.support.v4.u82;
import java.util.Enumeration;
import java.util.Vector;

/* renamed from: org.bouncycastle.pqc.crypto.gmss.new, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnew {
    /* renamed from: case, reason: not valid java name */
    public static byte[][] m35607case(byte[][] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[][] bArr2 = new byte[bArr.length][];
        for (int i = 0; i != bArr.length; i++) {
            bArr2[i] = q3.m6371final(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: do, reason: not valid java name */
    public static cf0[] m35608do(cf0[] cf0VarArr) {
        if (cf0VarArr == null) {
            return null;
        }
        cf0[] cf0VarArr2 = new cf0[cf0VarArr.length];
        System.arraycopy(cf0VarArr, 0, cf0VarArr2, 0, cf0VarArr.length);
        return cf0VarArr2;
    }

    /* renamed from: else, reason: not valid java name */
    public static u82[][] m35609else(u82[][] u82VarArr) {
        if (u82VarArr == null) {
            return null;
        }
        u82[][] u82VarArr2 = new u82[u82VarArr.length][];
        for (int i = 0; i != u82VarArr.length; i++) {
            u82VarArr2[i] = m35610for(u82VarArr[i]);
        }
        return u82VarArr2;
    }

    /* renamed from: for, reason: not valid java name */
    public static u82[] m35610for(u82[] u82VarArr) {
        if (u82VarArr == null) {
            return null;
        }
        u82[] u82VarArr2 = new u82[u82VarArr.length];
        System.arraycopy(u82VarArr, 0, u82VarArr2, 0, u82VarArr.length);
        return u82VarArr2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static Vector[][] m35611goto(Vector[][] vectorArr) {
        if (vectorArr == null) {
            return null;
        }
        Vector[][] vectorArr2 = new Vector[vectorArr.length][];
        for (int i = 0; i != vectorArr.length; i++) {
            vectorArr2[i] = m35613new(vectorArr[i]);
        }
        return vectorArr2;
    }

    /* renamed from: if, reason: not valid java name */
    public static if0[] m35612if(if0[] if0VarArr) {
        if (if0VarArr == null) {
            return null;
        }
        if0[] if0VarArr2 = new if0[if0VarArr.length];
        System.arraycopy(if0VarArr, 0, if0VarArr2, 0, if0VarArr.length);
        return if0VarArr2;
    }

    /* renamed from: new, reason: not valid java name */
    public static Vector[] m35613new(Vector[] vectorArr) {
        if (vectorArr == null) {
            return null;
        }
        Vector[] vectorArr2 = new Vector[vectorArr.length];
        for (int i = 0; i != vectorArr.length; i++) {
            vectorArr2[i] = new Vector();
            Enumeration enumerationElements = vectorArr[i].elements();
            while (enumerationElements.hasMoreElements()) {
                vectorArr2[i].addElement(enumerationElements.nextElement());
            }
        }
        return vectorArr2;
    }

    /* renamed from: this, reason: not valid java name */
    public static byte[][][] m35614this(byte[][][] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[][][] bArr2 = new byte[bArr.length][][];
        for (int i = 0; i != bArr.length; i++) {
            bArr2[i] = m35607case(bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: try, reason: not valid java name */
    public static Cif[] m35615try(Cif[] cifArr) {
        if (cifArr == null) {
            return null;
        }
        Cif[] cifArr2 = new Cif[cifArr.length];
        System.arraycopy(cifArr, 0, cifArr2, 0, cifArr.length);
        return cifArr2;
    }
}
