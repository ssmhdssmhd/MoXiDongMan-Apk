package org.bouncycastle.pqc.jcajce.provider.qtesla;

import android.support.v4.hn0;
import android.support.v4.mi1;
import android.support.v4.ni1;
import android.support.v4.oi1;
import android.support.v4.pi1;
import android.support.v4.qi1;
import android.support.v4.ri1;
import android.support.v4.y3;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.Cfor;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.qtesla.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends KeyPairGenerator {

    /* renamed from: try, reason: not valid java name */
    private static final Map f32566try;

    /* renamed from: do, reason: not valid java name */
    private mi1 f32567do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f32568for;

    /* renamed from: if, reason: not valid java name */
    private ni1 f32569if;

    /* renamed from: new, reason: not valid java name */
    private boolean f32570new;

    static {
        HashMap map = new HashMap();
        f32566try = map;
        map.put(ri1.m6993do(0), hn0.m3072for(0));
        map.put(ri1.m6993do(1), hn0.m3072for(1));
        map.put(ri1.m6993do(2), hn0.m3072for(2));
        map.put(ri1.m6993do(3), hn0.m3072for(3));
        map.put(ri1.m6993do(4), hn0.m3072for(4));
    }

    public Cnew() {
        super("qTESLA");
        this.f32569if = new ni1();
        this.f32568for = Cfor.m33599case();
        this.f32570new = false;
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.f32570new) {
            mi1 mi1Var = new mi1(3, this.f32568for);
            this.f32567do = mi1Var;
            this.f32569if.init(mi1Var);
            this.f32570new = true;
        }
        y3 y3VarGenerateKeyPair = this.f32569if.generateKeyPair();
        return new KeyPair(new Cif((qi1) y3VarGenerateKeyPair.m9727if()), new Cdo((pi1) y3VarGenerateKeyPair.m9726do()));
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    @Override // java.security.KeyPairGenerator, java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof oi1)) {
            throw new InvalidAlgorithmParameterException("parameter object not a QTESLAParameterSpec");
        }
        mi1 mi1Var = new mi1(((Integer) f32566try.get(((oi1) algorithmParameterSpec).m5663do())).intValue(), secureRandom);
        this.f32567do = mi1Var;
        this.f32569if.init(mi1Var);
        this.f32570new = true;
    }
}
