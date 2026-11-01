package org.bouncycastle.pqc.jcajce.provider.xmss;

import android.support.v4.bq1;
import android.support.v4.dq1;
import android.support.v4.ei2;
import android.support.v4.ni2;
import android.support.v4.y3;
import android.support.v4.yp1;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.pqc.crypto.xmss.Cfinally;
import org.bouncycastle.pqc.crypto.xmss.Cpackage;
import org.bouncycastle.pqc.crypto.xmss.Cprivate;
import org.bouncycastle.pqc.crypto.xmss.Cwhile;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends KeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private ei2 f32582do;

    /* renamed from: for, reason: not valid java name */
    private Cwhile f32583for;

    /* renamed from: if, reason: not valid java name */
    private Ccatch f32584if;

    /* renamed from: new, reason: not valid java name */
    private SecureRandom f32585new;

    /* renamed from: try, reason: not valid java name */
    private boolean f32586try;

    public Celse() {
        super("XMSS");
        this.f32583for = new Cwhile();
        this.f32585new = Cfor.m33599case();
        this.f32586try = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.f32586try) {
            ei2 ei2Var = new ei2(new Cfinally(10, new bq1()), this.f32585new);
            this.f32582do = ei2Var;
            this.f32583for.m36086for(ei2Var);
            this.f32586try = true;
        }
        y3 y3VarM36085do = this.f32583for.m36085do();
        return new KeyPair(new Cnew(this.f32584if, (Cprivate) y3VarM36085do.m9727if()), new Cfor(this.f32584if, (Cpackage) y3VarM36085do.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        ei2 ei2Var;
        if (!(algorithmParameterSpec instanceof ni2)) {
            throw new InvalidAlgorithmParameterException("parameter object not a XMSSParameterSpec");
        }
        ni2 ni2Var = (ni2) algorithmParameterSpec;
        if (ni2Var.m5253if().equals("SHA256")) {
            this.f32584if = NISTObjectIdentifiers.id_sha256;
            ei2Var = new ei2(new Cfinally(ni2Var.m5252do(), new yp1()), secureRandom);
        } else if (ni2Var.m5253if().equals("SHA512")) {
            this.f32584if = NISTObjectIdentifiers.id_sha512;
            ei2Var = new ei2(new Cfinally(ni2Var.m5252do(), new bq1()), secureRandom);
        } else {
            if (!ni2Var.m5253if().equals("SHAKE128")) {
                if (ni2Var.m5253if().equals("SHAKE256")) {
                    this.f32584if = NISTObjectIdentifiers.id_shake256;
                    ei2Var = new ei2(new Cfinally(ni2Var.m5252do(), new dq1(256)), secureRandom);
                }
                this.f32583for.m36086for(this.f32582do);
                this.f32586try = true;
            }
            this.f32584if = NISTObjectIdentifiers.id_shake128;
            ei2Var = new ei2(new Cfinally(ni2Var.m5252do(), new dq1(128)), secureRandom);
        }
        this.f32582do = ei2Var;
        this.f32583for.m36086for(this.f32582do);
        this.f32586try = true;
    }
}
