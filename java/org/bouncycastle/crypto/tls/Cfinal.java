package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import android.support.v4.yf;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;

/* renamed from: org.bouncycastle.crypto.tls.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal {

    /* renamed from: do, reason: not valid java name */
    public short f30590do;

    /* renamed from: if, reason: not valid java name */
    public Vector f30591if;

    /* renamed from: org.bouncycastle.crypto.tls.final$do, reason: invalid class name */
    public class Cdo extends ByteArrayOutputStream {
        public Cdo() throws IOException {
            l0.r0(0, this);
        }

        /* renamed from: do, reason: not valid java name */
        public void m34099do(OutputStream outputStream) throws IOException {
            int i = ((ByteArrayOutputStream) this).count - 2;
            l0.m34181break(i);
            l0.s0(i, ((ByteArrayOutputStream) this).buf, 0);
            outputStream.write(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
            ((ByteArrayOutputStream) this).buf = null;
        }
    }

    public Cfinal(short s, Vector vector) {
        if (!yf.m9826do(s)) {
            throw new IllegalArgumentException("'type' is not a valid CertChainType value");
        }
        if (vector == null || vector.isEmpty()) {
            throw new IllegalArgumentException("'urlAndHashList' must have length > 0");
        }
        this.f30590do = s;
        this.f30591if = vector;
    }

    /* renamed from: new, reason: not valid java name */
    public static Cfinal m34095new(TlsContext tlsContext, InputStream inputStream) throws IOException {
        short sC0 = l0.c0(inputStream);
        if (!yf.m9826do(sC0)) {
            throw new n72((short) 50);
        }
        int iT = l0.T(inputStream);
        if (iT < 1) {
            throw new n72((short) 50);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(l0.O(iT, inputStream));
        Vector vector = new Vector();
        while (byteArrayInputStream.available() > 0) {
            vector.addElement(n0.m34219new(tlsContext, byteArrayInputStream));
        }
        return new Cfinal(sC0, vector);
    }

    /* renamed from: do, reason: not valid java name */
    public void m34096do(OutputStream outputStream) throws IOException {
        l0.H0(this.f30590do, outputStream);
        Cdo cdo = new Cdo();
        for (int i = 0; i < this.f30591if.size(); i++) {
            ((n0) this.f30591if.elementAt(i)).m34220do(cdo);
        }
        cdo.m34099do(outputStream);
    }

    /* renamed from: for, reason: not valid java name */
    public Vector m34097for() {
        return this.f30591if;
    }

    /* renamed from: if, reason: not valid java name */
    public short m34098if() {
        return this.f30590do;
    }
}
