package org.bouncycastle.crypto.tls;

import android.support.v4.a22;
import android.support.v4.nn1;
import android.support.v4.y90;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encoding;

/* renamed from: org.bouncycastle.crypto.tls.implements, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimplements {

    /* renamed from: do, reason: not valid java name */
    public Vector f30638do;

    /* renamed from: if, reason: not valid java name */
    public y90 f30639if;

    public Cimplements(Vector vector, y90 y90Var) {
        this.f30638do = vector;
        this.f30639if = y90Var;
    }

    /* renamed from: new, reason: not valid java name */
    public static Cimplements m34158new(InputStream inputStream) throws IOException {
        Vector vector = new Vector();
        int iT = l0.T(inputStream);
        if (iT > 0) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(l0.O(iT, inputStream));
            do {
                vector.addElement(nn1.m5279new(l0.M(l0.P(byteArrayInputStream))));
            } while (byteArrayInputStream.available() > 0);
        }
        int iT2 = l0.T(inputStream);
        return new Cimplements(vector, iT2 > 0 ? y90.m9782break(l0.M(l0.O(iT2, inputStream))) : null);
    }

    /* renamed from: do, reason: not valid java name */
    public void m34159do(OutputStream outputStream) throws IOException {
        Vector vector = this.f30638do;
        if (vector == null || vector.isEmpty()) {
            l0.r0(0, outputStream);
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            for (int i = 0; i < this.f30638do.size(); i++) {
                l0.o0(((nn1) this.f30638do.elementAt(i)).m32764do(ASN1Encoding.DER), byteArrayOutputStream);
            }
            l0.m34181break(byteArrayOutputStream.size());
            l0.r0(byteArrayOutputStream.size(), outputStream);
            a22.m21goto(byteArrayOutputStream, outputStream);
        }
        y90 y90Var = this.f30639if;
        if (y90Var == null) {
            l0.r0(0, outputStream);
            return;
        }
        byte[] bArrM32764do = y90Var.m32764do(ASN1Encoding.DER);
        l0.m34181break(bArrM32764do.length);
        l0.r0(bArrM32764do.length, outputStream);
        outputStream.write(bArrM32764do);
    }

    /* renamed from: for, reason: not valid java name */
    public Vector m34160for() {
        return this.f30638do;
    }

    /* renamed from: if, reason: not valid java name */
    public y90 m34161if() {
        return this.f30639if;
    }
}
