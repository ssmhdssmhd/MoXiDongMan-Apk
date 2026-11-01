package org.bouncycastle.crypto.tls;

import android.support.v4.tg2;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encoding;

/* renamed from: org.bouncycastle.crypto.tls.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch {

    /* renamed from: do, reason: not valid java name */
    public short[] f30557do;

    /* renamed from: for, reason: not valid java name */
    public Vector f30558for;

    /* renamed from: if, reason: not valid java name */
    public Vector f30559if;

    public Ccatch(short[] sArr, Vector vector, Vector vector2) {
        this.f30557do = sArr;
        this.f30559if = vector;
        this.f30558for = vector2;
    }

    /* renamed from: try, reason: not valid java name */
    public static Ccatch m34029try(TlsContext tlsContext, InputStream inputStream) throws IOException {
        int iC0 = l0.c0(inputStream);
        short[] sArr = new short[iC0];
        for (int i = 0; i < iC0; i++) {
            sArr[i] = l0.c0(inputStream);
        }
        Vector vectorJ = l0.w(tlsContext) ? l0.J(false, inputStream) : null;
        Vector vector = new Vector();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(l0.P(inputStream));
        while (byteArrayInputStream.available() > 0) {
            vector.addElement(tg2.m7884else(l0.M(l0.P(byteArrayInputStream))));
        }
        return new Ccatch(sArr, vectorJ, vector);
    }

    /* renamed from: do, reason: not valid java name */
    public void m34030do(OutputStream outputStream) throws IOException {
        short[] sArr = this.f30557do;
        if (sArr == null || sArr.length == 0) {
            l0.F0(0, outputStream);
        } else {
            l0.L0(sArr, outputStream);
        }
        Vector vector = this.f30559if;
        if (vector != null) {
            l0.m34203private(vector, false, outputStream);
        }
        Vector vector2 = this.f30558for;
        if (vector2 == null || vector2.isEmpty()) {
            l0.r0(0, outputStream);
            return;
        }
        Vector vector3 = new Vector(this.f30558for.size());
        int length = 0;
        for (int i = 0; i < this.f30558for.size(); i++) {
            byte[] bArrM32764do = ((tg2) this.f30558for.elementAt(i)).m32764do(ASN1Encoding.DER);
            vector3.addElement(bArrM32764do);
            length += bArrM32764do.length + 2;
        }
        l0.m34181break(length);
        l0.r0(length, outputStream);
        for (int i2 = 0; i2 < vector3.size(); i2++) {
            l0.o0((byte[]) vector3.elementAt(i2), outputStream);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public short[] m34031for() {
        return this.f30557do;
    }

    /* renamed from: if, reason: not valid java name */
    public Vector m34032if() {
        return this.f30558for;
    }

    /* renamed from: new, reason: not valid java name */
    public Vector m34033new() {
        return this.f30559if;
    }
}
