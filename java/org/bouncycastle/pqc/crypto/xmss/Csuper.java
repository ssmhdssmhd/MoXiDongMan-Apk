package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.ei2;
import android.support.v4.q3;
import android.support.v4.y3;
import java.security.SecureRandom;
import java.text.ParseException;
import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.Cpackage;
import org.bouncycastle.pqc.crypto.xmss.Cprivate;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper {

    /* renamed from: do, reason: not valid java name */
    private final Cfinally f32494do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f32495for;

    /* renamed from: if, reason: not valid java name */
    private Cthis f32496if;

    /* renamed from: new, reason: not valid java name */
    private Cpackage f32497new;

    /* renamed from: try, reason: not valid java name */
    private Cprivate f32498try;

    public Csuper(Cfinally cfinally, SecureRandom secureRandom) {
        Objects.requireNonNull(cfinally, "params == null");
        this.f32494do = cfinally;
        this.f32496if = cfinally.m35880case();
        this.f32495for = secureRandom;
    }

    /* renamed from: break, reason: not valid java name */
    public void m35999break(Cpackage cpackage, Cprivate cprivate) {
        if (!q3.m6362case(cpackage.m35919goto(), cprivate.m35942try())) {
            throw new IllegalStateException("root of private key and public key do not match");
        }
        if (!q3.m6362case(cpackage.m35917else(), cprivate.m35941new())) {
            throw new IllegalStateException("public seed of private key and public key do not match");
        }
        this.f32497new = cpackage;
        this.f32498try = cprivate;
        this.f32496if.m36035class(new byte[this.f32494do.m35882for()], this.f32497new.m35917else());
    }

    /* renamed from: case, reason: not valid java name */
    public Cpackage m36000case() {
        return this.f32497new;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m36001catch(byte[] bArr, byte[] bArr2) {
        Objects.requireNonNull(bArr, "privateKey == null");
        Objects.requireNonNull(bArr2, "publicKey == null");
        Cpackage cpackageM35932break = new Cpackage.Cif(this.f32494do).m35935const(bArr, m36014try()).m35932break();
        Cprivate cprivateM35950try = new Cprivate.Cif(this.f32494do).m35947case(bArr2).m35950try();
        if (!q3.m6362case(cpackageM35932break.m35919goto(), cprivateM35950try.m35942try())) {
            throw new IllegalStateException("root of private key and public key do not match");
        }
        if (!q3.m6362case(cpackageM35932break.m35917else(), cprivateM35950try.m35941new())) {
            throw new IllegalStateException("public seed of private key and public key do not match");
        }
        this.f32497new = cpackageM35932break;
        this.f32498try = cprivateM35950try;
        this.f32496if.m36035class(new byte[this.f32494do.m35882for()], this.f32497new.m35917else());
    }

    /* renamed from: class, reason: not valid java name */
    public void m36002class(int i) {
        this.f32497new = new Cpackage.Cif(this.f32494do).m35939while(this.f32497new.m35914break()).m35938throw(this.f32497new.m35921this()).m35936final(this.f32497new.m35917else()).m35937super(this.f32497new.m35919goto()).m35933catch(this.f32497new.m35918for()).m35932break();
    }

    /* renamed from: const, reason: not valid java name */
    public void m36003const(byte[] bArr) {
        this.f32497new = new Cpackage.Cif(this.f32494do).m35939while(this.f32497new.m35914break()).m35938throw(this.f32497new.m35921this()).m35936final(bArr).m35937super(m36008goto()).m35933catch(this.f32497new.m35918for()).m35932break();
        this.f32498try = new Cprivate.Cif(this.f32494do).m35949goto(m36008goto()).m35948else(bArr).m35950try();
        this.f32496if.m36035class(new byte[this.f32494do.m35882for()], bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m36004do() {
        return this.f32497new.toByteArray();
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m36005else() {
        return this.f32497new.m35917else();
    }

    /* renamed from: final, reason: not valid java name */
    public void m36006final(byte[] bArr) {
        this.f32497new = new Cpackage.Cif(this.f32494do).m35939while(this.f32497new.m35914break()).m35938throw(this.f32497new.m35921this()).m35936final(m36005else()).m35937super(bArr).m35933catch(this.f32497new.m35918for()).m35932break();
        this.f32498try = new Cprivate.Cif(this.f32494do).m35949goto(bArr).m35948else(m36005else()).m35950try();
    }

    /* renamed from: for, reason: not valid java name */
    public void m36007for() {
        Cwhile cwhile = new Cwhile();
        cwhile.m36086for(new ei2(m36014try(), this.f32495for));
        y3 y3VarM36085do = cwhile.m36085do();
        this.f32497new = (Cpackage) y3VarM36085do.m9726do();
        this.f32498try = (Cprivate) y3VarM36085do.m9727if();
        this.f32496if.m36035class(new byte[this.f32494do.m35882for()], this.f32497new.m35917else());
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m36008goto() {
        return this.f32497new.m35919goto();
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m36009if() {
        return this.f32498try.toByteArray();
    }

    /* renamed from: new, reason: not valid java name */
    public int m36010new() {
        return this.f32497new.m35920new();
    }

    /* renamed from: super, reason: not valid java name */
    public byte[] m36011super(byte[] bArr) {
        Objects.requireNonNull(bArr, "message == null");
        Cstrictfp cstrictfp = new Cstrictfp();
        cstrictfp.init(true, this.f32497new);
        byte[] bArrGenerateSignature = cstrictfp.generateSignature(bArr);
        Cpackage cpackage = (Cpackage) cstrictfp.getUpdatedPrivateKey();
        this.f32497new = cpackage;
        m35999break(cpackage, this.f32498try);
        return bArrGenerateSignature;
    }

    /* renamed from: this, reason: not valid java name */
    public Cthis m36012this() {
        return this.f32496if;
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m36013throw(byte[] bArr, byte[] bArr2, byte[] bArr3) throws ParseException {
        Objects.requireNonNull(bArr, "message == null");
        Objects.requireNonNull(bArr2, "signature == null");
        Objects.requireNonNull(bArr3, "publicKey == null");
        Cstrictfp cstrictfp = new Cstrictfp();
        cstrictfp.init(false, new Cprivate.Cif(m36014try()).m35947case(bArr3).m35950try());
        return cstrictfp.verifySignature(bArr, bArr2);
    }

    /* renamed from: try, reason: not valid java name */
    public Cfinally m36014try() {
        return this.f32494do;
    }

    /* renamed from: while, reason: not valid java name */
    public Cfinal m36015while(byte[] bArr, Cgoto cgoto) {
        if (bArr.length != this.f32494do.m35882for()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        Objects.requireNonNull(cgoto, "otsHashAddress == null");
        Cthis cthis = this.f32496if;
        cthis.m36035class(cthis.m36034catch(this.f32497new.m35914break(), cgoto), m36005else());
        return this.f32496if.m36036const(bArr, cgoto);
    }
}
