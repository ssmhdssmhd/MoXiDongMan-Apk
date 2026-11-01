package org.bouncycastle.asn1;

import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.final, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfinal extends Cbreak {
    /* renamed from: else, reason: not valid java name */
    public static Cfinal m33015else(byte[] bArr) throws IOException {
        Celse celse = new Celse(bArr);
        try {
            Cfinal cfinalM33002break = celse.m33002break();
            if (celse.available() == 0) {
                return cfinalM33002break;
            }
            throw new IOException("Extra data detected in stream");
        } catch (ClassCastException unused) {
            throw new IOException("cannot recognise object in stream");
        }
    }

    /* renamed from: break */
    public Cfinal mo32798break() {
        return this;
    }

    /* renamed from: case */
    public abstract int mo32748case() throws IOException;

    @Override // org.bouncycastle.asn1.Cbreak
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ASN1Encodable) && mo32769new(((ASN1Encodable) obj).toASN1Primitive());
    }

    /* renamed from: goto */
    public abstract boolean mo32749goto();

    @Override // org.bouncycastle.asn1.Cbreak
    public abstract int hashCode();

    /* renamed from: new */
    public abstract boolean mo32769new(Cfinal cfinal);

    /* renamed from: this */
    public Cfinal mo32780this() {
        return this;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this;
    }

    /* renamed from: try */
    public abstract void mo32750try(Cconst cconst) throws IOException;
}
