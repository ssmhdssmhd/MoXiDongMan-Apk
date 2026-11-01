package org.bouncycastle.jce.provider;

import android.support.v4.nh2;
import android.support.v4.r12;
import android.support.v4.yg2;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.bouncycastle.jce.Ctry;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.X509StoreParameters;
import org.bouncycastle.x509.util.Cdo;

/* loaded from: classes3.dex */
public class d extends nh2 {

    /* renamed from: do, reason: not valid java name */
    private Cdo f31594do;

    @Override // android.support.v4.nh2
    /* renamed from: do */
    public Collection mo3901do(Selector selector) throws r12 {
        Collection collectionM36619native;
        if (!(selector instanceof yg2)) {
            return Collections.EMPTY_SET;
        }
        yg2 yg2Var = (yg2) selector;
        HashSet hashSet = new HashSet();
        if (yg2Var.m9845case()) {
            collectionM36619native = this.f31594do.m36621return(yg2Var);
        } else {
            hashSet.addAll(this.f31594do.m36621return(yg2Var));
            hashSet.addAll(this.f31594do.m36616class(yg2Var));
            hashSet.addAll(this.f31594do.m36618final(yg2Var));
            hashSet.addAll(this.f31594do.m36623throw(yg2Var));
            collectionM36619native = this.f31594do.m36619native(yg2Var);
        }
        hashSet.addAll(collectionM36619native);
        return hashSet;
    }

    @Override // android.support.v4.nh2
    /* renamed from: if */
    public void mo3902if(X509StoreParameters x509StoreParameters) {
        if (x509StoreParameters instanceof Ctry) {
            this.f31594do = new Cdo((Ctry) x509StoreParameters);
            return;
        }
        throw new IllegalArgumentException("Initialization parameters must be an instance of " + Ctry.class.getName() + ".");
    }
}
