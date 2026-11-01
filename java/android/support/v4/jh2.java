package android.support.v4;

import java.util.Collection;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.X509StoreParameters;

/* loaded from: classes3.dex */
public class jh2 extends nh2 {

    /* renamed from: do, reason: not valid java name */
    private um f3110do;

    @Override // android.support.v4.nh2
    /* renamed from: do, reason: not valid java name */
    public Collection mo3901do(Selector selector) {
        return this.f3110do.getMatches(selector);
    }

    @Override // android.support.v4.nh2
    /* renamed from: if, reason: not valid java name */
    public void mo3902if(X509StoreParameters x509StoreParameters) {
        if (!(x509StoreParameters instanceof ch2)) {
            throw new IllegalArgumentException(x509StoreParameters.toString());
        }
        this.f3110do = new um(((ch2) x509StoreParameters).m931do());
    }
}
