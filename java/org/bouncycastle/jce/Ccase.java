package org.bouncycastle.jce;

import android.support.v4.tg2;
import java.io.IOException;
import java.security.Principal;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cgoto;

/* renamed from: org.bouncycastle.jce.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Cgoto implements Principal {
    public Ccase(tg2 tg2Var) {
        super((Csuper) tg2Var.toASN1Primitive());
    }

    public Ccase(String str) {
        super(str);
    }

    public Ccase(Hashtable hashtable) {
        super(hashtable);
    }

    public Ccase(Vector vector, Hashtable hashtable) {
        super(vector, hashtable);
    }

    public Ccase(Vector vector, Vector vector2) {
        super(vector, vector2);
    }

    public Ccase(Cgoto cgoto) {
        super((Csuper) cgoto.toASN1Primitive());
    }

    public Ccase(boolean z, String str) {
        super(z, str);
    }

    public Ccase(boolean z, Hashtable hashtable, String str) {
        super(z, hashtable, str);
    }

    public Ccase(byte[] bArr) throws IOException {
        super(m34928public(new Celse(bArr)));
    }

    /* renamed from: public, reason: not valid java name */
    private static Csuper m34928public(Celse celse) throws IOException {
        try {
            return Csuper.m33129catch(celse.m33002break());
        } catch (IllegalArgumentException e) {
            throw new IOException("not an ASN.1 Sequence: " + e);
        }
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.util.Encodable
    public byte[] getEncoded() {
        try {
            return m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new RuntimeException(e.toString());
        }
    }

    @Override // java.security.Principal
    public String getName() {
        return toString();
    }
}
