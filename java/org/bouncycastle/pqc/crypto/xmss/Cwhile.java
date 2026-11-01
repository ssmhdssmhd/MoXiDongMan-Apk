package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.a4;
import android.support.v4.dr0;
import android.support.v4.ei2;
import android.support.v4.y3;
import java.security.SecureRandom;
import org.bouncycastle.pqc.crypto.xmss.Cgoto;
import org.bouncycastle.pqc.crypto.xmss.Cpackage;
import org.bouncycastle.pqc.crypto.xmss.Cprivate;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.while, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cwhile {

    /* renamed from: do, reason: not valid java name */
    private Cfinally f32538do;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f32539if;

    /* renamed from: if, reason: not valid java name */
    private Cpackage m36084if(Cfinally cfinally, SecureRandom secureRandom) {
        int iM35882for = cfinally.m35882for();
        byte[] bArr = new byte[iM35882for];
        secureRandom.nextBytes(bArr);
        byte[] bArr2 = new byte[iM35882for];
        secureRandom.nextBytes(bArr2);
        byte[] bArr3 = new byte[iM35882for];
        secureRandom.nextBytes(bArr3);
        return new Cpackage.Cif(cfinally).m35939while(bArr).m35938throw(bArr2).m35936final(bArr3).m35933catch(new Cdo(cfinally, bArr3, bArr, (Cgoto) new Cgoto.Cif().mo35875try())).m35932break();
    }

    /* renamed from: do, reason: not valid java name */
    public y3 m36085do() {
        Cpackage cpackageM36084if = m36084if(this.f32538do, this.f32539if);
        Cdefault root = cpackageM36084if.m35918for().getRoot();
        Cpackage cpackageM35932break = new Cpackage.Cif(this.f32538do).m35939while(cpackageM36084if.m35914break()).m35938throw(cpackageM36084if.m35921this()).m35936final(cpackageM36084if.m35917else()).m35937super(root.getValue()).m35933catch(cpackageM36084if.m35918for()).m35932break();
        return new y3((a4) new Cprivate.Cif(this.f32538do).m35949goto(root.getValue()).m35948else(cpackageM35932break.m35917else()).m35950try(), (a4) cpackageM35932break);
    }

    /* renamed from: for, reason: not valid java name */
    public void m36086for(dr0 dr0Var) {
        ei2 ei2Var = (ei2) dr0Var;
        this.f32539if = ei2Var.m1497do();
        this.f32538do = ei2Var.m1927for();
    }
}
