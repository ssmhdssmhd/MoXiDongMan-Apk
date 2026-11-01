package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.a4;
import android.support.v4.dr0;
import android.support.v4.hi2;
import android.support.v4.y3;
import java.security.SecureRandom;
import org.bouncycastle.pqc.crypto.xmss.Cgoto;
import org.bouncycastle.pqc.crypto.xmss.Creturn;
import org.bouncycastle.pqc.crypto.xmss.Cstatic;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.native, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnative {

    /* renamed from: do, reason: not valid java name */
    private Cpublic f32434do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f32435for;

    /* renamed from: if, reason: not valid java name */
    private Cfinally f32436if;

    /* renamed from: if, reason: not valid java name */
    private Creturn m35908if(Cif cif) {
        int iM35957if = this.f32434do.m35957if();
        byte[] bArr = new byte[iM35957if];
        this.f32435for.nextBytes(bArr);
        byte[] bArr2 = new byte[iM35957if];
        this.f32435for.nextBytes(bArr2);
        byte[] bArr3 = new byte[iM35957if];
        this.f32435for.nextBytes(bArr3);
        return new Creturn.Cif(this.f32434do).m35985while(bArr).m35984throw(bArr2).m35982final(bArr3).m35979catch(cif).m35978break();
    }

    /* renamed from: do, reason: not valid java name */
    public y3 m35909do() {
        Creturn creturnM35908if = m35908if(new Creturn.Cif(this.f32434do).m35978break().m35964for());
        this.f32436if.m35880case().m36035class(new byte[this.f32434do.m35957if()], creturnM35908if.m35963else());
        int iM35958new = this.f32434do.m35958new() - 1;
        Cdo cdo = new Cdo(this.f32436if, creturnM35908if.m35963else(), creturnM35908if.m35960break(), (Cgoto) new Cgoto.Cif().m36052goto(iM35958new).mo35875try());
        Cdefault root = cdo.getRoot();
        creturnM35908if.m35964for().put(iM35958new, cdo);
        Creturn creturnM35978break = new Creturn.Cif(this.f32434do).m35985while(creturnM35908if.m35960break()).m35984throw(creturnM35908if.m35967this()).m35982final(creturnM35908if.m35963else()).m35983super(root.getValue()).m35979catch(creturnM35908if.m35964for()).m35978break();
        return new y3((a4) new Cstatic.Cif(this.f32434do).m35995goto(root.getValue()).m35994else(creturnM35978break.m35963else()).m35996try(), (a4) creturnM35978break);
    }

    /* renamed from: for, reason: not valid java name */
    public void m35910for(dr0 dr0Var) {
        hi2 hi2Var = (hi2) dr0Var;
        this.f32435for = hi2Var.m1497do();
        Cpublic cpublicM3045for = hi2Var.m3045for();
        this.f32434do = cpublicM3045for;
        this.f32436if = cpublicM3045for.m35956goto();
    }
}
