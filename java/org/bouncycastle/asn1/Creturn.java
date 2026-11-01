package org.bouncycastle.asn1;

import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.return, reason: invalid class name */
/* loaded from: classes3.dex */
public class Creturn implements ASN1ApplicationSpecificParser {

    /* renamed from: do, reason: not valid java name */
    private final int f29125do;

    /* renamed from: if, reason: not valid java name */
    private final Cwhile f29126if;

    public Creturn(int i, Cwhile cwhile) {
        this.f29125do = i;
        this.f29126if = cwhile;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() throws IOException {
        return new Cpublic(this.f29125do, this.f29126if.m33187try());
    }

    @Override // org.bouncycastle.asn1.ASN1ApplicationSpecificParser
    public ASN1Encodable readObject() throws IOException {
        return this.f29126if.m33184for();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new android.support.v4.Creturn(e.getMessage(), e);
        }
    }
}
