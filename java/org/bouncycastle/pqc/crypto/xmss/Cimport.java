package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.hi2;
import android.support.v4.q3;
import android.support.v4.y3;
import java.security.SecureRandom;
import java.text.ParseException;
import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.Creturn;
import org.bouncycastle.pqc.crypto.xmss.Cstatic;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.import, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimport {

    /* renamed from: do, reason: not valid java name */
    private Cpublic f32429do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f32430for;

    /* renamed from: if, reason: not valid java name */
    private Cfinally f32431if;

    /* renamed from: new, reason: not valid java name */
    private Creturn f32432new;

    /* renamed from: try, reason: not valid java name */
    private Cstatic f32433try;

    public Cimport(Cpublic cpublic, SecureRandom secureRandom) {
        Objects.requireNonNull(cpublic, "params == null");
        this.f32429do = cpublic;
        this.f32431if = cpublic.m35956goto();
        this.f32430for = secureRandom;
        this.f32432new = new Creturn.Cif(cpublic).m35978break();
        this.f32433try = new Cstatic.Cif(cpublic).m35996try();
    }

    /* renamed from: else, reason: not valid java name */
    private void m35897else(Creturn creturn, Cstatic cstatic) {
        this.f32431if.m35880case().m36035class(new byte[this.f32429do.m35957if()], this.f32432new.m35963else());
        this.f32432new = creturn;
        this.f32433try = cstatic;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m35898break(byte[] bArr, byte[] bArr2, byte[] bArr3) throws ParseException {
        Objects.requireNonNull(bArr, "message == null");
        Objects.requireNonNull(bArr2, "signature == null");
        Objects.requireNonNull(bArr3, "publicKey == null");
        Cthrows cthrows = new Cthrows();
        cthrows.init(false, new Cstatic.Cif(m35904new()).m35993case(bArr3).m35996try());
        return cthrows.verifySignature(bArr, bArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public Cfinally m35899case() {
        return this.f32431if;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m35900do() {
        return this.f32432new.toByteArray();
    }

    /* renamed from: for, reason: not valid java name */
    public void m35901for() {
        Cnative cnative = new Cnative();
        cnative.m35910for(new hi2(m35904new(), this.f32430for));
        y3 y3VarM35909do = cnative.m35909do();
        this.f32432new = (Creturn) y3VarM35909do.m9726do();
        Cstatic cstatic = (Cstatic) y3VarM35909do.m9727if();
        this.f32433try = cstatic;
        m35897else(this.f32432new, cstatic);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m35902goto(byte[] bArr, byte[] bArr2) {
        Objects.requireNonNull(bArr, "privateKey == null");
        Objects.requireNonNull(bArr2, "publicKey == null");
        Creturn creturnM35978break = new Creturn.Cif(this.f32429do).m35981const(bArr, this.f32431if).m35978break();
        Cstatic cstaticM35996try = new Cstatic.Cif(this.f32429do).m35993case(bArr2).m35996try();
        if (!q3.m6362case(creturnM35978break.m35965goto(), cstaticM35996try.m35988try())) {
            throw new IllegalStateException("root of private key and public key do not match");
        }
        if (!q3.m6362case(creturnM35978break.m35963else(), cstaticM35996try.m35987new())) {
            throw new IllegalStateException("public seed of private key and public key do not match");
        }
        this.f32431if.m35880case().m36035class(new byte[this.f32429do.m35957if()], creturnM35978break.m35963else());
        this.f32432new = creturnM35978break;
        this.f32433try = cstaticM35996try;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m35903if() {
        return this.f32433try.toByteArray();
    }

    /* renamed from: new, reason: not valid java name */
    public Cpublic m35904new() {
        return this.f32429do;
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m35905this(byte[] bArr) {
        Objects.requireNonNull(bArr, "message == null");
        Cthrows cthrows = new Cthrows();
        cthrows.init(true, this.f32432new);
        byte[] bArrGenerateSignature = cthrows.generateSignature(bArr);
        Creturn creturn = (Creturn) cthrows.getUpdatedPrivateKey();
        this.f32432new = creturn;
        m35897else(creturn, this.f32433try);
        return bArrGenerateSignature;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m35906try() {
        return this.f32432new.m35963else();
    }
}
