package android.support.v4;

import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.jcajce.provider.qtesla.Ctry;

/* loaded from: classes3.dex */
public class li1 {

    /* renamed from: do, reason: not valid java name */
    private static final String f3661do = "org.bouncycastle.pqc.jcajce.provider.qtesla.";

    /* renamed from: android.support.v4.li1$do, reason: invalid class name */
    public static class Cdo extends w3 {
        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("KeyFactory.QTESLA", "org.bouncycastle.pqc.jcajce.provider.qtesla.QTESLAKeyFactorySpi");
            configurableProvider.addAlgorithm("KeyPairGenerator.QTESLA", "org.bouncycastle.pqc.jcajce.provider.qtesla.KeyPairGeneratorSpi");
            configurableProvider.addAlgorithm("Signature.QTESLA", "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$qTESLA");
            Ccatch ccatch = PQCObjectIdentifiers.qTESLA_I;
            m9026for(configurableProvider, "QTESLA-I", "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$HeuristicI", ccatch);
            Ccatch ccatch2 = PQCObjectIdentifiers.qTESLA_III_size;
            m9026for(configurableProvider, "QTESLA-III-SIZE", "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$HeuristicIIISize", ccatch2);
            Ccatch ccatch3 = PQCObjectIdentifiers.qTESLA_III_speed;
            m9026for(configurableProvider, "QTESLA-III-SPEED", "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$HeuristicIIISpeed", ccatch3);
            Ccatch ccatch4 = PQCObjectIdentifiers.qTESLA_p_I;
            m9026for(configurableProvider, "QTESLA-P-I", "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$ProvablySecureI", ccatch4);
            Ccatch ccatch5 = PQCObjectIdentifiers.qTESLA_p_III;
            m9026for(configurableProvider, "QTESLA-P-III", "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$ProvablySecureIII", ccatch5);
            Ctry ctry = new Ctry();
            m9028new(configurableProvider, ccatch, "QTESLA-I", ctry);
            m9028new(configurableProvider, ccatch2, "QTESLA-III-SIZE", ctry);
            m9028new(configurableProvider, ccatch3, "QTESLA-III-SPEED", ctry);
            m9028new(configurableProvider, ccatch4, "QTESLA-P-I", ctry);
            m9028new(configurableProvider, ccatch5, "QTESLA-P-III", ctry);
        }
    }
}
