package org.bouncycastle.jce.interfaces;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface PKCS12BagAttributeCarrier {
    ASN1Encodable getBagAttribute(Ccatch ccatch);

    Enumeration getBagAttributeKeys();

    void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable);
}
