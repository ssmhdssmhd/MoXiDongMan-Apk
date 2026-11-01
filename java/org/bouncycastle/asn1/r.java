package org.bouncycastle.asn1;

import android.support.v4.Creturn;
import java.io.IOException;

/* loaded from: classes3.dex */
public class r implements ASN1SetParser {

    /* renamed from: do, reason: not valid java name */
    private Cwhile f29124do;

    public r(Cwhile cwhile) {
        this.f29124do = cwhile;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() throws IOException {
        return new q(this.f29124do.m33187try(), false);
    }

    @Override // org.bouncycastle.asn1.ASN1SetParser
    public ASN1Encodable readObject() throws IOException {
        return this.f29124do.m33184for();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new Creturn(e.getMessage(), e);
        }
    }
}
