package org.bouncycastle.asn1;

import android.support.v4.Creturn;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class k implements ASN1OctetStringParser {

    /* renamed from: do, reason: not valid java name */
    private h0 f29103do;

    public k(h0 h0Var) {
        this.f29103do = h0Var;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() throws IOException {
        return new j(this.f29103do.m33046for());
    }

    @Override // org.bouncycastle.asn1.ASN1OctetStringParser
    public InputStream getOctetStream() {
        return this.f29103do;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new Creturn("IOException converting stream to byte array: " + e.getMessage(), e);
        }
    }
}
