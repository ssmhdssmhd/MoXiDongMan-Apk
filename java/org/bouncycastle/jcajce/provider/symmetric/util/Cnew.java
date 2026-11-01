package org.bouncycastle.jcajce.provider.symmetric.util;

import android.support.v4.Cfor;
import android.support.v4.bc1;
import android.support.v4.ca1;
import android.support.v4.d6;
import android.support.v4.gr0;
import android.support.v4.ij1;
import android.support.v4.pi0;
import android.support.v4.qy0;
import android.support.v4.tw;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import java.util.Map;
import javax.crypto.MacSpi;
import javax.crypto.SecretKey;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.Ccase;
import org.bouncycastle.jcajce.provider.symmetric.util.PBE;
import org.bouncycastle.jcajce.spec.Cif;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends MacSpi implements PBE {

    /* renamed from: try, reason: not valid java name */
    private static final Class f31519try = Cgoto.m34896do(Cnew.class, "javax.crypto.spec.GCMParameterSpec");

    /* renamed from: do, reason: not valid java name */
    private Mac f31520do;

    /* renamed from: for, reason: not valid java name */
    private int f31521for;

    /* renamed from: if, reason: not valid java name */
    private int f31522if;

    /* renamed from: new, reason: not valid java name */
    private int f31523new;

    public Cnew(Mac mac) {
        this.f31522if = 2;
        this.f31521for = 1;
        this.f31523new = 160;
        this.f31520do = mac;
    }

    public Cnew(Mac mac, int i, int i2, int i3) {
        this.f31522if = 2;
        this.f31521for = 1;
        this.f31523new = 160;
        this.f31520do = mac;
        this.f31522if = i;
        this.f31521for = i2;
        this.f31523new = i3;
    }

    /* renamed from: do, reason: not valid java name */
    private static Hashtable m34898do(Map map) {
        Hashtable hashtable = new Hashtable();
        for (Object obj : map.keySet()) {
            hashtable.put(obj, map.get(obj));
        }
        return hashtable;
    }

    @Override // javax.crypto.MacSpi
    public byte[] engineDoFinal() throws IllegalStateException, tw {
        byte[] bArr = new byte[engineGetMacLength()];
        this.f31520do.doFinal(bArr, 0);
        return bArr;
    }

    @Override // javax.crypto.MacSpi
    public int engineGetMacLength() {
        return this.f31520do.getMacSize();
    }

    @Override // javax.crypto.MacSpi
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        CipherParameters cipherParametersM34890new;
        if (key == null) {
            throw new InvalidKeyException("key is null");
        }
        if (key instanceof ca1) {
            try {
                SecretKey secretKey = (SecretKey) key;
                try {
                    PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
                    if ((secretKey instanceof PBEKey) && pBEParameterSpec == null) {
                        PBEKey pBEKey = (PBEKey) secretKey;
                        pBEParameterSpec = new PBEParameterSpec(pBEKey.getSalt(), pBEKey.getIterationCount());
                    }
                    int i = 1;
                    int i2 = 256;
                    if (this.f31520do.getAlgorithmName().startsWith("GOST")) {
                        i = 6;
                    } else {
                        Mac mac = this.f31520do;
                        if (!(mac instanceof pi0) || mac.getAlgorithmName().startsWith(qy0.f5539case)) {
                            i2 = 160;
                        } else if (this.f31520do.getAlgorithmName().startsWith(qy0.f5542else)) {
                            i = 7;
                            i2 = 224;
                        } else if (this.f31520do.getAlgorithmName().startsWith("SHA-256")) {
                            i = 4;
                        } else if (this.f31520do.getAlgorithmName().startsWith(qy0.f5544this)) {
                            i = 8;
                            i2 = 384;
                        } else if (this.f31520do.getAlgorithmName().startsWith("SHA-512")) {
                            i = 9;
                            i2 = 512;
                        } else {
                            if (!this.f31520do.getAlgorithmName().startsWith("RIPEMD160")) {
                                throw new InvalidAlgorithmParameterException("no PKCS12 mapping for HMAC: " + this.f31520do.getAlgorithmName());
                            }
                            i = 2;
                            i2 = 160;
                        }
                    }
                    cipherParametersM34890new = PBE.Cdo.m34890new(secretKey, 2, i, i2, pBEParameterSpec);
                } catch (Exception unused) {
                    throw new InvalidAlgorithmParameterException("PKCS12 requires a PBEParameterSpec");
                }
            } catch (Exception unused2) {
                throw new InvalidKeyException("PKCS12 requires a SecretKey/PBEKey");
            }
        } else if (key instanceof d6) {
            d6 d6Var = (d6) key;
            if (d6Var.getParam() != null) {
                cipherParametersM34890new = d6Var.getParam();
            } else {
                if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                    throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                }
                cipherParametersM34890new = PBE.Cdo.m34887for(d6Var, algorithmParameterSpec);
            }
        } else {
            if (algorithmParameterSpec instanceof PBEParameterSpec) {
                throw new InvalidAlgorithmParameterException("inappropriate parameter type: " + algorithmParameterSpec.getClass().getName());
            }
            cipherParametersM34890new = new gr0(key.getEncoded());
        }
        gr0 gr0Var = cipherParametersM34890new instanceof bc1 ? (gr0) ((bc1) cipherParametersM34890new).m515if() : (gr0) cipherParametersM34890new;
        if (algorithmParameterSpec instanceof Cfor) {
            Cfor cfor = (Cfor) algorithmParameterSpec;
            cipherParametersM34890new = new android.support.v4.Cnew(gr0Var, cfor.m2382if(), cfor.m2381for(), cfor.m2380do());
        } else if (algorithmParameterSpec instanceof IvParameterSpec) {
            cipherParametersM34890new = new bc1(gr0Var, ((IvParameterSpec) algorithmParameterSpec).getIV());
        } else if (algorithmParameterSpec instanceof RC2ParameterSpec) {
            RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
            cipherParametersM34890new = new bc1(new ij1(gr0Var.m2770do(), rC2ParameterSpec.getEffectiveKeyBits()), rC2ParameterSpec.getIV());
        } else if (algorithmParameterSpec instanceof Cif) {
            cipherParametersM34890new = new Ccase.Cif(m34898do(((Cif) algorithmParameterSpec).m34913try())).m33814for(gr0Var.m2770do()).m33812do();
        } else if (algorithmParameterSpec == null) {
            cipherParametersM34890new = new gr0(key.getEncoded());
        } else {
            Class cls = f31519try;
            if (cls != null && cls.isAssignableFrom(algorithmParameterSpec.getClass())) {
                try {
                    cipherParametersM34890new = new android.support.v4.Cnew(gr0Var, ((Integer) cls.getDeclaredMethod("getTLen", new Class[0]).invoke(algorithmParameterSpec, new Object[0])).intValue(), (byte[]) cls.getDeclaredMethod("getIV", new Class[0]).invoke(algorithmParameterSpec, new Object[0]));
                } catch (Exception unused3) {
                    throw new InvalidAlgorithmParameterException("Cannot process GCMParameterSpec.");
                }
            } else if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidAlgorithmParameterException("unknown parameter type: " + algorithmParameterSpec.getClass().getName());
            }
        }
        try {
            this.f31520do.init(cipherParametersM34890new);
        } catch (Exception e) {
            throw new InvalidAlgorithmParameterException("cannot initialize MAC: " + e.getMessage());
        }
    }

    @Override // javax.crypto.MacSpi
    public void engineReset() {
        this.f31520do.reset();
    }

    @Override // javax.crypto.MacSpi
    public void engineUpdate(byte b) throws IllegalStateException {
        this.f31520do.update(b);
    }

    @Override // javax.crypto.MacSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        this.f31520do.update(bArr, i, i2);
    }
}
