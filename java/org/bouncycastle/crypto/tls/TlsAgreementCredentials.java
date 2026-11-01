package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import java.io.IOException;

/* loaded from: classes3.dex */
public interface TlsAgreementCredentials extends TlsCredentials {
    byte[] generateAgreement(a4 a4Var) throws IOException;
}
