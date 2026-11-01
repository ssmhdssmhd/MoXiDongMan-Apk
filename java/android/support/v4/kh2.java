package android.support.v4;

import java.util.Collection;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.X509StoreParameters;

/* loaded from: classes3.dex */
public class kh2 extends nh2 {

    /* renamed from: do, reason: not valid java name */
    private um f3386do;

    @Override // android.support.v4.nh2
    /* renamed from: do */
    public Collection mo3901do(Selector selector) {
        return this.f3386do.getMatches(selector);
    }

    @Override // android.support.v4.nh2
    /* renamed from: if */
    public void mo3902if(X509StoreParameters x509StoreParameters) {
        if (!(x509StoreParameters instanceof ch2)) {
            throw new IllegalArgumentException(x509StoreParameters.toString());
        }
        this.f3386do = new um(((ch2) x509StoreParameters).m931do());
    }
}
