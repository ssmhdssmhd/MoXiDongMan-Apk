package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.a4;
import android.support.v4.q3;
import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.StateAwareMessageSigner;
import org.bouncycastle.pqc.crypto.xmss.Ccontinue;
import org.bouncycastle.pqc.crypto.xmss.Cgoto;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cstrictfp implements StateAwareMessageSigner {

    /* renamed from: case, reason: not valid java name */
    private boolean f32487case;

    /* renamed from: do, reason: not valid java name */
    private Cpackage f32488do;

    /* renamed from: else, reason: not valid java name */
    private boolean f32489else;

    /* renamed from: for, reason: not valid java name */
    private Cprivate f32490for;

    /* renamed from: if, reason: not valid java name */
    private Cpackage f32491if;

    /* renamed from: new, reason: not valid java name */
    private Cfinally f32492new;

    /* renamed from: try, reason: not valid java name */
    private Ccase f32493try;

    /* renamed from: if, reason: not valid java name */
    private Cfinal m35997if(byte[] bArr, Cgoto cgoto) {
        if (bArr.length != this.f32492new.m35882for()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        this.f32492new.m35880case().m36035class(this.f32492new.m35880case().m36034catch(this.f32488do.m35914break(), cgoto), this.f32488do.m35917else());
        return this.f32492new.m35880case().m36036const(bArr, cgoto);
    }

    /* renamed from: do, reason: not valid java name */
    public long m35998do() {
        return this.f32488do.m35916catch();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        Objects.requireNonNull(bArr, "message == null");
        if (!this.f32487case) {
            throw new IllegalStateException("signer not initialized for signature generation");
        }
        Cpackage cpackage = this.f32488do;
        if (cpackage == null) {
            throw new IllegalStateException("signing key no longer usable");
        }
        if (cpackage.m35918for().getAuthenticationPath().isEmpty()) {
            throw new IllegalStateException("not initialized");
        }
        int iM35920new = this.f32488do.m35920new();
        long j = iM35920new;
        if (!Cvolatile.m36071final(this.f32492new.m35884new(), j)) {
            throw new IllegalStateException("index out of bounds");
        }
        byte[] bArrM35840new = this.f32493try.m35840new(this.f32488do.m35921this(), Cvolatile.m36078public(j, 32));
        Ccontinue ccontinue = (Ccontinue) new Ccontinue.Cif(this.f32492new).m35855class(iM35920new).m35856const(bArrM35840new).m35832goto(m35997if(this.f32493try.m35838for(q3.m6370extends(bArrM35840new, this.f32488do.m35919goto(), Cvolatile.m36078public(j, this.f32492new.m35882for())), bArr), (Cgoto) new Cgoto.Cif().m35895throw(iM35920new).mo35875try())).m35830case(this.f32488do.m35918for().getAuthenticationPath()).mo35833try();
        this.f32489else = true;
        Cpackage cpackage2 = this.f32491if;
        if (cpackage2 != null) {
            Cpackage cpackageM35922try = cpackage2.m35922try();
            this.f32488do = cpackageM35922try;
            this.f32491if = cpackageM35922try;
        } else {
            this.f32488do = null;
        }
        return ccontinue.toByteArray();
    }

    @Override // org.bouncycastle.pqc.crypto.StateAwareMessageSigner
    public a4 getUpdatedPrivateKey() {
        Cpackage cpackageM35922try;
        if (this.f32489else) {
            cpackageM35922try = this.f32488do;
            this.f32488do = null;
        } else {
            cpackageM35922try = this.f32491if.m35922try();
        }
        this.f32491if = null;
        return cpackageM35922try;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        Cfinally cfinallyM35940for;
        if (z) {
            this.f32487case = true;
            this.f32489else = false;
            Cpackage cpackage = (Cpackage) cipherParameters;
            this.f32488do = cpackage;
            this.f32491if = cpackage;
            cfinallyM35940for = cpackage.m35915case();
        } else {
            this.f32487case = false;
            Cprivate cprivate = (Cprivate) cipherParameters;
            this.f32490for = cprivate;
            cfinallyM35940for = cprivate.m35940for();
        }
        this.f32492new = cfinallyM35940for;
        this.f32493try = cfinallyM35940for.m35880case().m36040new();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        Ccontinue ccontinueMo35833try = new Ccontinue.Cif(this.f32492new).m35857final(bArr2).mo35833try();
        int iM35850new = ccontinueMo35833try.m35850new();
        this.f32492new.m35880case().m36035class(new byte[this.f32492new.m35882for()], this.f32490for.m35941new());
        long j = iM35850new;
        byte[] bArrM35838for = this.f32493try.m35838for(q3.m6370extends(ccontinueMo35833try.m35851try(), this.f32490for.m35942try(), Cvolatile.m36078public(j, this.f32492new.m35882for())), bArr);
        int iM35884new = this.f32492new.m35884new();
        return q3.m6360abstract(Cinterface.m35907do(this.f32492new.m35880case(), iM35884new, bArrM35838for, ccontinueMo35833try, (Cgoto) new Cgoto.Cif().m35895throw(iM35850new).mo35875try(), Cvolatile.m36066catch(j, iM35884new)).getValue(), this.f32490for.m35942try());
    }
}
