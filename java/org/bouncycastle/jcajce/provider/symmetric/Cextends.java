package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.f1;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.extends, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cextends extends f1 {
    /* renamed from: for, reason: not valid java name */
    public void m34865for(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac." + str + "-GMAC", str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac." + str + "GMAC", str + "-GMAC");
        configurableProvider.addAlgorithm("KeyGenerator." + str + "-GMAC", str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator." + str + "GMAC", str + "-GMAC");
    }

    /* renamed from: if, reason: not valid java name */
    public void m34866if(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac." + str + "-CMAC", str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac." + str + "CMAC", str + "-CMAC");
        configurableProvider.addAlgorithm("KeyGenerator." + str + "-CMAC", str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator." + str + "CMAC", str + "-CMAC");
    }

    /* renamed from: new, reason: not valid java name */
    public void m34867new(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm("Mac.POLY1305-" + str, str2);
        configurableProvider.addAlgorithm("Alg.Alias.Mac.POLY1305" + str, "POLY1305-" + str);
        configurableProvider.addAlgorithm("KeyGenerator.POLY1305-" + str, str3);
        configurableProvider.addAlgorithm("Alg.Alias.KeyGenerator.POLY1305" + str, "POLY1305-" + str);
    }
}
