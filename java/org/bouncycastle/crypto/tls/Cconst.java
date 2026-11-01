package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.crypto.tls.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst {

    /* renamed from: do, reason: not valid java name */
    public short f30562do;

    /* renamed from: if, reason: not valid java name */
    public Object f30563if;

    public Cconst(short s, Object obj) {
        if (!m34041try(s, obj)) {
            throw new IllegalArgumentException("'request' is not an instance of the correct type");
        }
        this.f30562do = s;
        this.f30563if = obj;
    }

    /* renamed from: case, reason: not valid java name */
    public static Cconst m34040case(InputStream inputStream) throws IOException {
        short sC0 = l0.c0(inputStream);
        if (sC0 == 1) {
            return new Cconst(sC0, Cimplements.m34158new(inputStream));
        }
        throw new n72((short) 50);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m34041try(short s, Object obj) {
        if (s == 1) {
            return obj instanceof Cimplements;
        }
        throw new IllegalArgumentException("'statusType' is an unsupported CertificateStatusType");
    }

    /* renamed from: do, reason: not valid java name */
    public void m34042do(OutputStream outputStream) throws IOException {
        l0.H0(this.f30562do, outputStream);
        if (this.f30562do != 1) {
            throw new n72((short) 80);
        }
        ((Cimplements) this.f30563if).m34159do(outputStream);
    }

    /* renamed from: for, reason: not valid java name */
    public Object m34043for() {
        return this.f30563if;
    }

    /* renamed from: if, reason: not valid java name */
    public Cimplements m34044if() {
        if (m34041try((short) 1, this.f30563if)) {
            return (Cimplements) this.f30563if;
        }
        throw new IllegalStateException("'request' is not an OCSPStatusRequest");
    }

    /* renamed from: new, reason: not valid java name */
    public short m34045new() {
        return this.f30562do;
    }
}
