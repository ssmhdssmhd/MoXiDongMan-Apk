package org.bouncycastle.jce.provider;

import android.support.v4.ah2;
import android.support.v4.nh2;
import android.support.v4.r12;
import android.support.v4.zg2;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.bouncycastle.jce.Ctry;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.Cclass;
import org.bouncycastle.x509.X509StoreParameters;
import org.bouncycastle.x509.util.Cdo;

/* loaded from: classes3.dex */
public class f extends nh2 {

    /* renamed from: do, reason: not valid java name */
    private Cdo f31614do;

    /* renamed from: for, reason: not valid java name */
    private Collection m35026for(ah2 ah2Var) throws r12 {
        HashSet hashSet = new HashSet();
        zg2 zg2Var = new zg2();
        zg2Var.m10200try(ah2Var);
        zg2Var.m10195case(new ah2());
        HashSet<Cclass> hashSet2 = new HashSet(this.f31614do.m36620public(zg2Var));
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        for (Cclass cclass : hashSet2) {
            if (cclass.m36445if() != null) {
                hashSet3.add(cclass.m36445if());
            }
            if (cclass.m36444for() != null) {
                hashSet4.add(cclass.m36444for());
            }
        }
        hashSet.addAll(hashSet3);
        hashSet.addAll(hashSet4);
        return hashSet;
    }

    @Override // android.support.v4.nh2
    /* renamed from: do */
    public Collection mo3901do(Selector selector) throws r12 {
        Collection collectionM36624throws;
        if (!(selector instanceof ah2)) {
            return Collections.EMPTY_SET;
        }
        ah2 ah2Var = (ah2) selector;
        HashSet hashSet = new HashSet();
        if (ah2Var.getBasicConstraints() > 0) {
            hashSet.addAll(this.f31614do.m36625while(ah2Var));
            collectionM36624throws = m35026for(ah2Var);
        } else if (ah2Var.getBasicConstraints() == -2) {
            collectionM36624throws = this.f31614do.m36624throws(ah2Var);
        } else {
            hashSet.addAll(this.f31614do.m36624throws(ah2Var));
            hashSet.addAll(this.f31614do.m36625while(ah2Var));
            collectionM36624throws = m35026for(ah2Var);
        }
        hashSet.addAll(collectionM36624throws);
        return hashSet;
    }

    @Override // android.support.v4.nh2
    /* renamed from: if */
    public void mo3902if(X509StoreParameters x509StoreParameters) {
        if (x509StoreParameters instanceof Ctry) {
            this.f31614do = new Cdo((Ctry) x509StoreParameters);
            return;
        }
        throw new IllegalArgumentException("Initialization parameters must be an instance of " + Ctry.class.getName() + ".");
    }
}
