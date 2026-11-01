package org.bouncycastle.asn1;

import android.support.v4.Cnative;
import android.support.v4.Creturn;
import java.io.IOException;

/* loaded from: classes3.dex */
public class a implements ASN1Encodable, InMemoryRepresentable {

    /* renamed from: do, reason: not valid java name */
    private Cwhile f28899do;

    public a(Cwhile cwhile) {
        this.f28899do = cwhile;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() throws IOException {
        try {
            return new b0(this.f28899do.m33187try());
        } catch (IllegalArgumentException e) {
            throw new Cnative(e.getMessage(), e);
        }
    }

    public ASN1Encodable readObject() throws IOException {
        return this.f28899do.m33184for();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new Creturn("unable to get DER object", e);
        } catch (IllegalArgumentException e2) {
            throw new Creturn("unable to get DER object", e2);
        }
    }
}
