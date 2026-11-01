package org.bouncycastle.asn1;

import android.support.v4.Creturn;
import android.support.v4.a22;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: org.bouncycastle.asn1.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cextends implements ASN1OctetStringParser {

    /* renamed from: do, reason: not valid java name */
    private Cwhile f29062do;

    public Cextends(Cwhile cwhile) {
        this.f29062do = cwhile;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public Cfinal getLoadedObject() throws IOException {
        return new Cthrows(a22.m23new(getOctetStream()));
    }

    @Override // org.bouncycastle.asn1.ASN1OctetStringParser
    public InputStream getOctetStream() {
        return new Cprotected(this.f29062do);
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
