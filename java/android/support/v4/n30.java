package android.support.v4;

import java.io.FileInputStream;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;

/* loaded from: classes3.dex */
public class n30 {
    /* renamed from: do, reason: not valid java name */
    public static void m5079do(String[] strArr) throws Exception {
        Celse celse = new Celse(new FileInputStream(strArr[0]));
        while (true) {
            Cfinal cfinalM33002break = celse.m33002break();
            if (cfinalM33002break == null) {
                return;
            } else {
                System.out.println(Cwhile.m9155for(cfinalM33002break));
            }
        }
    }
}
