package org.bouncycastle.asn1.x500;

import android.support.v4.oj1;
import android.support.v4.tg2;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface X500NameStyle {
    boolean areEqual(tg2 tg2Var, tg2 tg2Var2);

    Ccatch attrNameToOID(String str);

    int calculateHashCode(tg2 tg2Var);

    oj1[] fromString(String str);

    String[] oidToAttrNames(Ccatch ccatch);

    String oidToDisplayName(Ccatch ccatch);

    ASN1Encodable stringToValue(Ccatch ccatch, String str);

    String toString(tg2 tg2Var);
}
