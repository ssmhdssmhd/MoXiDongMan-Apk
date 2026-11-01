package org.bouncycastle.asn1.cmc;

import android.support.v4.bd1;
import android.support.v4.ne;
import android.support.v4.pe;
import android.support.v4.ta;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cmc.Cfor;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.v;

/* renamed from: org.bouncycastle.asn1.cmc.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew {

    /* renamed from: do, reason: not valid java name */
    private final pe f28934do;

    /* renamed from: for, reason: not valid java name */
    private v f28935for;

    /* renamed from: if, reason: not valid java name */
    private final Csuper f28936if;

    /* renamed from: new, reason: not valid java name */
    private Cfor.Cdo f28937new;

    public Cnew(pe peVar, ta taVar) {
        this.f28934do = peVar;
        this.f28936if = new n(taVar);
    }

    public Cnew(pe peVar, ta[] taVarArr) {
        this.f28934do = peVar;
        this.f28936if = new n(taVarArr);
    }

    /* renamed from: do, reason: not valid java name */
    public Cfor m32839do() {
        return new Cfor(this.f28934do, this.f28936if, this.f28935for, this.f28937new);
    }

    /* renamed from: for, reason: not valid java name */
    public Cnew m32840for(bd1 bd1Var) {
        this.f28937new = new Cfor.Cdo(bd1Var);
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew m32841if(ne neVar) {
        this.f28937new = new Cfor.Cdo(neVar);
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public Cnew m32842new(String str) {
        this.f28935for = new v(str);
        return this;
    }
}
