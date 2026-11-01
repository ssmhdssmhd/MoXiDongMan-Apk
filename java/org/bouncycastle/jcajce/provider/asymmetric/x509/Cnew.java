package org.bouncycastle.jcajce.provider.asymmetric.x509;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.util.encoders.Cdo;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.x509.new, reason: invalid class name */
/* loaded from: classes3.dex */
class Cnew {

    /* renamed from: do, reason: not valid java name */
    private final String f31279do;

    /* renamed from: if, reason: not valid java name */
    private final String f31281if;

    /* renamed from: new, reason: not valid java name */
    private final String f31282new;

    /* renamed from: try, reason: not valid java name */
    private final String f31283try;

    /* renamed from: for, reason: not valid java name */
    private final String f31280for = "-----BEGIN PKCS7-----";

    /* renamed from: case, reason: not valid java name */
    private final String f31278case = "-----END PKCS7-----";

    public Cnew(String str) {
        this.f31279do = "-----BEGIN " + str + "-----";
        this.f31281if = "-----BEGIN X509 " + str + "-----";
        this.f31282new = "-----END " + str + "-----";
        this.f31283try = "-----END X509 " + str + "-----";
    }

    /* renamed from: do, reason: not valid java name */
    private String m34777do(InputStream inputStream) throws IOException {
        int i;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            i = inputStream.read();
            if (i != 13 && i != 10 && i >= 0) {
                stringBuffer.append((char) i);
            } else if (i < 0 || stringBuffer.length() != 0) {
                break;
            }
        }
        if (i < 0) {
            return null;
        }
        if (i == 13) {
            inputStream.mark(1);
            int i2 = inputStream.read();
            if (i2 == 10) {
                inputStream.mark(1);
            }
            if (i2 > 0) {
                inputStream.reset();
            }
        }
        return stringBuffer.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public Csuper m34778if(InputStream inputStream) throws IOException {
        String strM34777do;
        StringBuffer stringBuffer = new StringBuffer();
        do {
            strM34777do = m34777do(inputStream);
            if (strM34777do == null || strM34777do.startsWith(this.f31279do) || strM34777do.startsWith(this.f31281if)) {
                break;
            }
        } while (!strM34777do.startsWith(this.f31280for));
        while (true) {
            String strM34777do2 = m34777do(inputStream);
            if (strM34777do2 == null || strM34777do2.startsWith(this.f31282new) || strM34777do2.startsWith(this.f31283try) || strM34777do2.startsWith(this.f31278case)) {
                break;
            }
            stringBuffer.append(strM34777do2);
        }
        if (stringBuffer.length() == 0) {
            return null;
        }
        try {
            return Csuper.m33129catch(Cdo.m36321for(stringBuffer.toString()));
        } catch (Exception unused) {
            throw new IOException("malformed PEM data encountered");
        }
    }
}
