package org.bouncycastle.jce.interfaces;

import java.security.PublicKey;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public interface ECPublicKey extends ECKey, PublicKey {
    Cnew getQ();
}
