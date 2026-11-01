package org.bouncycastle.jce.provider;

import android.support.v4.nh2;
import android.support.v4.r12;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.bouncycastle.jce.Ctry;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.Ccatch;
import org.bouncycastle.x509.X509StoreParameters;
import org.bouncycastle.x509.util.Cdo;

/* loaded from: classes3.dex */
public class c extends nh2 {

    /* renamed from: do, reason: not valid java name */
    private Cdo f31585do;

    @Override // android.support.v4.nh2
    /* renamed from: do */
    public Collection mo3901do(Selector selector) throws r12 {
        if (!(selector instanceof Ccatch)) {
            return Collections.EMPTY_SET;
        }
        Ccatch ccatch = (Ccatch) selector;
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.f31585do.m36615catch(ccatch));
        hashSet.addAll(this.f31585do.m36617const(ccatch));
        hashSet.addAll(this.f31585do.m36622super(ccatch));
        return hashSet;
    }

    @Override // android.support.v4.nh2
    /* renamed from: if */
    public void mo3902if(X509StoreParameters x509StoreParameters) {
        if (x509StoreParameters instanceof Ctry) {
            this.f31585do = new Cdo((Ctry) x509StoreParameters);
            return;
        }
        throw new IllegalArgumentException("Initialization parameters must be an instance of " + Ctry.class.getName() + ".");
    }
}
