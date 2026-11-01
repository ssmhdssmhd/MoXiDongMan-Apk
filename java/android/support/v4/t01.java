package android.support.v4;

import java.security.cert.CertStoreParameters;
import java.util.Collection;

/* loaded from: classes3.dex */
public class t01 implements CertStoreParameters {

    /* renamed from: do, reason: not valid java name */
    private Collection f6362do;

    /* renamed from: if, reason: not valid java name */
    private boolean f6363if;

    public t01(Collection collection) {
        this(collection, true);
    }

    public t01(Collection collection, boolean z) {
        this.f6362do = collection;
        this.f6363if = z;
    }

    @Override // java.security.cert.CertStoreParameters
    public Object clone() {
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public Collection m7673do() {
        return this.f6362do;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m7674if() {
        return this.f6363if;
    }
}
