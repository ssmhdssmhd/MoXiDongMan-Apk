package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.a4;
import android.support.v4.q3;
import java.util.Objects;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.StateAwareMessageSigner;
import org.bouncycastle.pqc.crypto.xmss.Cabstract;
import org.bouncycastle.pqc.crypto.xmss.Cgoto;
import org.bouncycastle.pqc.crypto.xmss.Cswitch;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrows implements StateAwareMessageSigner {

    /* renamed from: case, reason: not valid java name */
    private Cthis f32520case;

    /* renamed from: do, reason: not valid java name */
    private Creturn f32521do;

    /* renamed from: else, reason: not valid java name */
    private boolean f32522else;

    /* renamed from: for, reason: not valid java name */
    private Cstatic f32523for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f32524goto;

    /* renamed from: if, reason: not valid java name */
    private Creturn f32525if;

    /* renamed from: new, reason: not valid java name */
    private Cpublic f32526new;

    /* renamed from: try, reason: not valid java name */
    private Cfinally f32527try;

    /* renamed from: if, reason: not valid java name */
    private Cfinal m36054if(byte[] bArr, Cgoto cgoto) {
        if (bArr.length != this.f32526new.m35957if()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        Cthis cthis = this.f32520case;
        cthis.m36035class(cthis.m36034catch(this.f32521do.m35960break(), cgoto), this.f32521do.m35963else());
        return this.f32520case.m36036const(bArr, cgoto);
    }

    /* renamed from: do, reason: not valid java name */
    public long m36055do() {
        return this.f32521do.m35962catch();
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        Objects.requireNonNull(bArr, "message == null");
        if (!this.f32524goto) {
            throw new IllegalStateException("signer not initialized for signature generation");
        }
        Creturn creturn = this.f32521do;
        if (creturn == null) {
            throw new IllegalStateException("signing key no longer usable");
        }
        if (creturn.m35964for().isEmpty()) {
            throw new IllegalStateException("not initialized");
        }
        Cif cifM35964for = this.f32521do.m35964for();
        long jM35966new = this.f32521do.m35966new();
        int iM35955for = this.f32526new.m35955for();
        int iM35884new = this.f32527try.m35884new();
        if (!Cvolatile.m36071final(iM35955for, jM35966new)) {
            throw new IllegalStateException("index out of bounds");
        }
        byte[] bArrM35840new = this.f32520case.m36040new().m35840new(this.f32521do.m35967this(), Cvolatile.m36078public(jM35966new, 32));
        byte[] bArrM35838for = this.f32520case.m36040new().m35838for(q3.m6370extends(bArrM35840new, this.f32521do.m35965goto(), Cvolatile.m36078public(jM35966new, this.f32526new.m35957if())), bArr);
        Cswitch cswitchM36025case = new Cswitch.Cif(this.f32526new).m36026else(jM35966new).m36027goto(bArrM35840new).m36025case();
        long jM36067class = Cvolatile.m36067class(jM35966new, iM35884new);
        int iM36066catch = Cvolatile.m36066catch(jM35966new, iM35884new);
        this.f32520case.m36035class(new byte[this.f32526new.m35957if()], this.f32521do.m35963else());
        Cgoto cgoto = (Cgoto) new Cgoto.Cif().m36053this(jM36067class).m35895throw(iM36066catch).mo35875try();
        if (cifM35964for.get(0) == null || iM36066catch == 0) {
            cifM35964for.put(0, new Cdo(this.f32527try, this.f32521do.m35963else(), this.f32521do.m35960break(), cgoto));
        }
        cswitchM36025case.m36017for().add(new Cabstract.Cdo(this.f32527try).m35832goto(m36054if(bArrM35838for, cgoto)).m35830case(cifM35964for.get(0).getAuthenticationPath()).mo35833try());
        for (int i = 1; i < this.f32526new.m35958new(); i++) {
            Cdefault root = cifM35964for.get(i - 1).getRoot();
            int iM36066catch2 = Cvolatile.m36066catch(jM36067class, iM35884new);
            jM36067class = Cvolatile.m36067class(jM36067class, iM35884new);
            Cgoto cgoto2 = (Cgoto) new Cgoto.Cif().m36052goto(i).m36053this(jM36067class).m35895throw(iM36066catch2).mo35875try();
            Cfinal cfinalM36054if = m36054if(root.getValue(), cgoto2);
            if (cifM35964for.get(i) == null || Cvolatile.m36081throw(jM35966new, iM35884new, i)) {
                cifM35964for.put(i, new Cdo(this.f32527try, this.f32521do.m35963else(), this.f32521do.m35960break(), cgoto2));
            }
            cswitchM36025case.m36017for().add(new Cabstract.Cdo(this.f32527try).m35832goto(cfinalM36054if).m35830case(cifM35964for.get(i).getAuthenticationPath()).mo35833try());
        }
        this.f32522else = true;
        Creturn creturn2 = this.f32525if;
        if (creturn2 != null) {
            Creturn creturnM35968try = creturn2.m35968try();
            this.f32521do = creturnM35968try;
            this.f32525if = creturnM35968try;
        } else {
            this.f32521do = null;
        }
        return cswitchM36025case.toByteArray();
    }

    @Override // org.bouncycastle.pqc.crypto.StateAwareMessageSigner
    public a4 getUpdatedPrivateKey() {
        Creturn creturnM35968try;
        if (this.f32522else) {
            creturnM35968try = this.f32521do;
            this.f32521do = null;
        } else {
            creturnM35968try = this.f32525if.m35968try();
        }
        this.f32525if = null;
        return creturnM35968try;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        Cpublic cpublicM35986for;
        if (z) {
            this.f32524goto = true;
            this.f32522else = false;
            Creturn creturn = (Creturn) cipherParameters;
            this.f32521do = creturn;
            this.f32525if = creturn;
            cpublicM35986for = creturn.m35961case();
        } else {
            this.f32524goto = false;
            Cstatic cstatic = (Cstatic) cipherParameters;
            this.f32523for = cstatic;
            cpublicM35986for = cstatic.m35986for();
        }
        this.f32526new = cpublicM35986for;
        this.f32527try = cpublicM35986for.m35956goto();
        this.f32520case = new Cthis(new Ccatch(this.f32526new.m35953do()));
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        Objects.requireNonNull(bArr, "message == null");
        Objects.requireNonNull(bArr2, "signature == null");
        Objects.requireNonNull(this.f32523for, "publicKey == null");
        Cswitch cswitchM36025case = new Cswitch.Cif(this.f32526new).m36024break(bArr2).m36025case();
        byte[] bArrM35838for = this.f32520case.m36040new().m35838for(q3.m6370extends(cswitchM36025case.m36018if(), this.f32523for.m35988try(), Cvolatile.m36078public(cswitchM36025case.m36016do(), this.f32526new.m35957if())), bArr);
        long jM36016do = cswitchM36025case.m36016do();
        int iM35884new = this.f32527try.m35884new();
        long jM36067class = Cvolatile.m36067class(jM36016do, iM35884new);
        int iM36066catch = Cvolatile.m36066catch(jM36016do, iM35884new);
        this.f32520case.m36035class(new byte[this.f32526new.m35957if()], this.f32523for.m35987new());
        Cgoto cgoto = (Cgoto) new Cgoto.Cif().m36053this(jM36067class).m35895throw(iM36066catch).mo35875try();
        Cdefault cdefaultM35907do = Cinterface.m35907do(this.f32520case, iM35884new, bArrM35838for, cswitchM36025case.m36017for().get(0), cgoto, iM36066catch);
        int i = 1;
        while (i < this.f32526new.m35958new()) {
            Cabstract cabstract = cswitchM36025case.m36017for().get(i);
            int iM36066catch2 = Cvolatile.m36066catch(jM36067class, iM35884new);
            long jM36067class2 = Cvolatile.m36067class(jM36067class, iM35884new);
            cdefaultM35907do = Cinterface.m35907do(this.f32520case, iM35884new, cdefaultM35907do.getValue(), cabstract, (Cgoto) new Cgoto.Cif().m36052goto(i).m36053this(jM36067class2).m35895throw(iM36066catch2).mo35875try(), iM36066catch2);
            i++;
            jM36067class = jM36067class2;
        }
        return q3.m6360abstract(cdefaultM35907do.getValue(), this.f32523for.m35988try());
    }
}
