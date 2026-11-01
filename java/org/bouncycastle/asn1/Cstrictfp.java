package org.bouncycastle.asn1;

import android.support.v4.Creturn;
import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cstrictfp implements ASN1SetParser {

    /* renamed from: do, reason: not valid java name */
    private Cwhile f29166do;

    public Cstrictfp(Cwhile cwhile) {
        this.f29166do = cwhile;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() throws IOException {
        return new Ccontinue(this.f29166do.m33187try());
    }

    @Override // org.bouncycastle.asn1.ASN1SetParser
    public ASN1Encodable readObject() throws IOException {
        return this.f29166do.m33184for();
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
