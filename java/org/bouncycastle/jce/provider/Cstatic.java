package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.util.encoders.Cdo;

/* renamed from: org.bouncycastle.jce.provider.static, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cstatic {

    /* renamed from: do, reason: not valid java name */
    private final String f31672do;

    /* renamed from: for, reason: not valid java name */
    private final String f31673for;

    /* renamed from: if, reason: not valid java name */
    private final String f31674if;

    /* renamed from: new, reason: not valid java name */
    private final String f31675new;

    public Cstatic(String str) {
        this.f31672do = "-----BEGIN " + str + "-----";
        this.f31674if = "-----BEGIN X509 " + str + "-----";
        this.f31673for = "-----END " + str + "-----";
        this.f31675new = "-----END X509 " + str + "-----";
    }

    /* renamed from: do, reason: not valid java name */
    private String m35108do(InputStream inputStream) throws IOException {
        int i;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            i = inputStream.read();
            if (i == 13 || i == 10 || i < 0) {
                if (i < 0 || stringBuffer.length() != 0) {
                    break;
                }
            } else if (i != 13) {
                stringBuffer.append((char) i);
            }
        }
        if (i < 0) {
            return null;
        }
        return stringBuffer.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public Csuper m35109if(InputStream inputStream) throws IOException {
        String strM35108do;
        StringBuffer stringBuffer = new StringBuffer();
        do {
            strM35108do = m35108do(inputStream);
            if (strM35108do == null || strM35108do.startsWith(this.f31672do)) {
                break;
            }
        } while (!strM35108do.startsWith(this.f31674if));
        while (true) {
            String strM35108do2 = m35108do(inputStream);
            if (strM35108do2 == null || strM35108do2.startsWith(this.f31673for) || strM35108do2.startsWith(this.f31675new)) {
                break;
            }
            stringBuffer.append(strM35108do2);
        }
        if (stringBuffer.length() == 0) {
            return null;
        }
        Cfinal cfinalM33002break = new Celse(Cdo.m36321for(stringBuffer.toString())).m33002break();
        if (cfinalM33002break instanceof Csuper) {
            return (Csuper) cfinalM33002break;
        }
        throw new IOException("malformed PEM data encountered");
    }
}
