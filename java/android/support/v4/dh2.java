package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.x509.Cgoto;
import org.bouncycastle.asn1.x509.Cthis;

/* loaded from: classes3.dex */
public class dh2 extends Cthis {
    @Override // org.bouncycastle.asn1.x509.Cthis
    /* renamed from: for, reason: not valid java name */
    public Cfinal mo1338for(Ccatch ccatch, String str) {
        if (str.length() == 0 || str.charAt(0) != '#') {
            if (str.length() != 0 && str.charAt(0) == '\\') {
                str = str.substring(1);
            }
            return (ccatch.equals(Cgoto.f29280implements) || ccatch.equals(Cgoto.b)) ? new org.bouncycastle.asn1.g(str) : ccatch.equals(Cgoto.f29278finally) ? new org.bouncycastle.asn1.d(str) : (ccatch.equals(Cgoto.f29279goto) || ccatch.equals(Cgoto.f29273const) || ccatch.equals(Cgoto.f29275default) || ccatch.equals(Cgoto.f29287protected)) ? new org.bouncycastle.asn1.m(str) : new org.bouncycastle.asn1.v(str);
        }
        try {
            return m33290if(str, 1);
        } catch (IOException unused) {
            throw new RuntimeException("can't recode value for oid " + ccatch.m32795super());
        }
    }
}
