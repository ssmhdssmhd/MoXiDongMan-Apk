package org.bouncycastle.jcajce.provider.digest;

import android.support.v4.f1;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.digest.new, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cnew extends f1 {
    /* renamed from: for, reason: not valid java name */
    public void m34785for(ConfigurableProvider configurableProvider, String str, Ccatch ccatch) {
        String str2 = "HMAC" + str;
        configurableProvider.addAlgorithm("Alg.Alias.Mac." + ccatch, str2);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator." + ccatch, str2);
    }

    /* renamed from: if, reason: not valid java name */
    public void m34786if(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        String str4 = "HMAC" + str;
        configurableProvider.addAlgorithm("Mac." + str4, str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.HMAC-" + str, str4);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.HMAC/" + str, str4);
        configurableProvider.addAlgorithm("KeyGenerator." + str4, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.HMAC-" + str, str4);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.HMAC/" + str, str4);
    }
}
