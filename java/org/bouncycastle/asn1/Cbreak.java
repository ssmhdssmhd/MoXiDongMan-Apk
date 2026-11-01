package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.util.Encodable;

/* renamed from: org.bouncycastle.asn1.break, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cbreak implements ASN1Encodable, Encodable {
    /* renamed from: if, reason: not valid java name */
    public static boolean m32763if(Object obj, int i) {
        return (obj instanceof byte[]) && ((byte[]) obj)[0] == i;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m32764do(String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        if (str.equals(ASN1Encoding.DER)) {
            byteArrayOutputStream = new ByteArrayOutputStream();
            new l(byteArrayOutputStream).mo32770const(this);
        } else {
            if (!str.equals(ASN1Encoding.DL)) {
                return getEncoded();
            }
            byteArrayOutputStream = new ByteArrayOutputStream();
            new c0(byteArrayOutputStream).mo32770const(this);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ASN1Encodable) {
            return toASN1Primitive().equals(((ASN1Encodable) obj).toASN1Primitive());
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public Cfinal m32765for() {
        return toASN1Primitive();
    }

    @Override // org.bouncycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new Cconst(byteArrayOutputStream).mo32770const(this);
        return byteArrayOutputStream.toByteArray();
    }

    public int hashCode() {
        return toASN1Primitive().hashCode();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public abstract Cfinal toASN1Primitive();
}
