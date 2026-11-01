package org.bouncycastle.crypto.tls;

import android.support.v4.rg;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encoding;

/* renamed from: org.bouncycastle.crypto.tls.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak {

    /* renamed from: if, reason: not valid java name */
    public static final Cbreak f30534if = new Cbreak(new rg[0]);

    /* renamed from: do, reason: not valid java name */
    public rg[] f30535do;

    public Cbreak(rg[] rgVarArr) {
        if (rgVarArr == null) {
            throw new IllegalArgumentException("'certificateList' cannot be null");
        }
        this.f30535do = rgVarArr;
    }

    /* renamed from: else, reason: not valid java name */
    public static Cbreak m34012else(InputStream inputStream) throws IOException {
        int iW = l0.W(inputStream);
        if (iW == 0) {
            return f30534if;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(l0.O(iW, inputStream));
        Vector vector = new Vector();
        while (byteArrayInputStream.available() > 0) {
            vector.addElement(rg.m6956try(l0.K(l0.Q(byteArrayInputStream))));
        }
        rg[] rgVarArr = new rg[vector.size()];
        for (int i = 0; i < vector.size(); i++) {
            rgVarArr[i] = (rg) vector.elementAt(i);
        }
        return new Cbreak(rgVarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m34013case() {
        return this.f30535do.length == 0;
    }

    /* renamed from: do, reason: not valid java name */
    public rg[] m34014do() {
        rg[] rgVarArr = this.f30535do;
        int length = rgVarArr.length;
        rg[] rgVarArr2 = new rg[length];
        System.arraycopy(rgVarArr, 0, rgVarArr2, 0, length);
        return rgVarArr2;
    }

    /* renamed from: for, reason: not valid java name */
    public rg m34015for(int i) {
        return this.f30535do[i];
    }

    /* renamed from: if, reason: not valid java name */
    public void m34016if(OutputStream outputStream) throws IOException {
        Vector vector = new Vector(this.f30535do.length);
        int i = 0;
        int length = 0;
        while (true) {
            rg[] rgVarArr = this.f30535do;
            if (i >= rgVarArr.length) {
                break;
            }
            byte[] bArrM32764do = rgVarArr[i].m32764do(ASN1Encoding.DER);
            vector.addElement(bArrM32764do);
            length += bArrM32764do.length + 3;
            i++;
        }
        l0.m34184class(length);
        l0.x0(length, outputStream);
        for (int i2 = 0; i2 < vector.size(); i2++) {
            l0.p0((byte[]) vector.elementAt(i2), outputStream);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public rg[] m34017new() {
        return m34014do();
    }

    /* renamed from: try, reason: not valid java name */
    public int m34018try() {
        return this.f30535do.length;
    }
}
