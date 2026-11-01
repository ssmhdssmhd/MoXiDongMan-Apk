package org.bouncycastle.asn1.microsoft;

import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public interface MicrosoftObjectIdentifiers {
    public static final Ccatch microsoft;
    public static final Ccatch microsoftAppPolicies;
    public static final Ccatch microsoftCaVersion;
    public static final Ccatch microsoftCertTemplateV1;
    public static final Ccatch microsoftCertTemplateV2;
    public static final Ccatch microsoftCrlNextPublish;
    public static final Ccatch microsoftPrevCaCertHash;

    static {
        Ccatch ccatch = new Ccatch("1.3.6.1.4.1.311");
        microsoft = ccatch;
        microsoftCertTemplateV1 = ccatch.m32792catch("20.2");
        microsoftCaVersion = ccatch.m32792catch("21.1");
        microsoftPrevCaCertHash = ccatch.m32792catch("21.2");
        microsoftCrlNextPublish = ccatch.m32792catch("21.4");
        microsoftCertTemplateV2 = ccatch.m32792catch("21.7");
        microsoftAppPolicies = ccatch.m32792catch("21.10");
    }
}
