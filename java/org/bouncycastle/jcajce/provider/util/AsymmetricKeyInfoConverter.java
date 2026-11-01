package org.bouncycastle.jcajce.provider.util;

import java.io.IOException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public interface AsymmetricKeyInfoConverter {
    PrivateKey generatePrivate(Cdo cdo) throws IOException;

    PublicKey generatePublic(Ctry ctry) throws IOException;
}
