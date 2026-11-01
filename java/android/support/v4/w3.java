package android.support.v4;

import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;

/* loaded from: classes3.dex */
public abstract class w3 extends f1 {
    /* renamed from: case, reason: not valid java name */
    public void m9025case(ConfigurableProvider configurableProvider, Ccatch ccatch, String str) {
        configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + ccatch, str);
    }

    /* renamed from: for, reason: not valid java name */
    public void m9026for(ConfigurableProvider configurableProvider, String str, String str2, Ccatch ccatch) {
        configurableProvider.addAlgorithm("Signature." + str, str2);
        configurableProvider.addAlgorithm("Alg.Alias.Signature." + ccatch, str);
        configurableProvider.addAlgorithm("Alg.Alias.Signature.OID." + ccatch, str);
    }

    /* renamed from: if, reason: not valid java name */
    public void m9027if(ConfigurableProvider configurableProvider, String str, String str2, String str3, Ccatch ccatch) {
        String str4 = str + "WITH" + str2;
        String str5 = str + "with" + str2;
        String str6 = str + "With" + str2;
        String str7 = str + on0.f4694final + str2;
        configurableProvider.addAlgorithm("Signature." + str4, str3);
        configurableProvider.addAlgorithm("Alg.Alias.Signature." + str5, str4);
        configurableProvider.addAlgorithm("Alg.Alias.Signature." + str6, str4);
        configurableProvider.addAlgorithm("Alg.Alias.Signature." + str7, str4);
        configurableProvider.addAlgorithm("Alg.Alias.Signature." + ccatch, str4);
        configurableProvider.addAlgorithm("Alg.Alias.Signature.OID." + ccatch, str4);
    }

    /* renamed from: new, reason: not valid java name */
    public void m9028new(ConfigurableProvider configurableProvider, Ccatch ccatch, String str, AsymmetricKeyInfoConverter asymmetricKeyInfoConverter) {
        configurableProvider.addAlgorithm("Alg.Alias.KeyFactory." + ccatch, str);
        configurableProvider.addAlgorithm("Alg.Alias.KeyPairGenerator." + ccatch, str);
        configurableProvider.addKeyInfoConverter(ccatch, asymmetricKeyInfoConverter);
    }

    /* renamed from: try, reason: not valid java name */
    public void m9029try(ConfigurableProvider configurableProvider, Ccatch ccatch, String str) {
        configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameterGenerator." + ccatch, str);
        configurableProvider.addAlgorithm("Alg.Alias.AlgorithmParameters." + ccatch, str);
    }
}
