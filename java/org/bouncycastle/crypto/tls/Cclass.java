package org.bouncycastle.crypto.tls;

import android.support.v4.j51;
import android.support.v4.n72;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.asn1.ASN1Encoding;

/* renamed from: org.bouncycastle.crypto.tls.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass {

    /* renamed from: do, reason: not valid java name */
    public short f30560do;

    /* renamed from: if, reason: not valid java name */
    public Object f30561if;

    public Cclass(short s, Object obj) {
        if (!m34035try(s, obj)) {
            throw new IllegalArgumentException("'response' is not an instance of the correct type");
        }
        this.f30560do = s;
        this.f30561if = obj;
    }

    /* renamed from: case, reason: not valid java name */
    public static Cclass m34034case(InputStream inputStream) throws IOException {
        short sC0 = l0.c0(inputStream);
        if (sC0 == 1) {
            return new Cclass(sC0, j51.m3727new(l0.M(l0.Q(inputStream))));
        }
        throw new n72((short) 50);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m34035try(short s, Object obj) {
        if (s == 1) {
            return obj instanceof j51;
        }
        throw new IllegalArgumentException("'statusType' is an unsupported CertificateStatusType");
    }

    /* renamed from: do, reason: not valid java name */
    public void m34036do(OutputStream outputStream) throws IOException {
        l0.H0(this.f30560do, outputStream);
        if (this.f30560do != 1) {
            throw new n72((short) 80);
        }
        l0.p0(((j51) this.f30561if).m32764do(ASN1Encoding.DER), outputStream);
    }

    /* renamed from: for, reason: not valid java name */
    public Object m34037for() {
        return this.f30561if;
    }

    /* renamed from: if, reason: not valid java name */
    public j51 m34038if() {
        if (m34035try((short) 1, this.f30561if)) {
            return (j51) this.f30561if;
        }
        throw new IllegalStateException("'response' is not an OCSPResponse");
    }

    /* renamed from: new, reason: not valid java name */
    public short m34039new() {
        return this.f30560do;
    }
}
