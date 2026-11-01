package org.bouncycastle.pqc.jcajce.provider.mceliece;

import android.support.v4.cc1;
import android.support.v4.dz0;
import android.support.v4.x3;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.pqc.crypto.mceliece.Cfor;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch extends x3 implements PKCSObjectIdentifiers, X509ObjectIdentifiers {

    /* renamed from: goto, reason: not valid java name */
    private Cfor f32552goto;

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.mceliece.catch$do, reason: invalid class name */
    public static class Cdo extends Ccatch {
        public Cdo() {
            super(new Cfor());
        }
    }

    public Ccatch(Cfor cfor) {
        this.f32552goto = cfor;
    }

    @Override // android.support.v4.x3
    /* renamed from: default */
    public byte[] mo9365default(byte[] bArr) throws BadPaddingException, IllegalBlockSizeException {
        try {
            return this.f32552goto.messageDecrypt(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // android.support.v4.ul
    /* renamed from: else */
    public int mo8484else(Key key) throws InvalidKeyException {
        return this.f32552goto.m35629for((dz0) (key instanceof PublicKey ? Cthis.m36100if((PublicKey) key) : Cthis.m36099do((PrivateKey) key)));
    }

    @Override // android.support.v4.x3
    /* renamed from: extends */
    public byte[] mo9366extends(byte[] bArr) throws BadPaddingException, IllegalBlockSizeException {
        try {
            return this.f32552goto.messageEncrypt(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // android.support.v4.ul
    /* renamed from: goto */
    public String mo8487goto() {
        return "McEliecePKCS";
    }

    @Override // android.support.v4.x3
    /* renamed from: native */
    public void mo9368native(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f32552goto.init(false, Cthis.m36099do((PrivateKey) key));
        Cfor cfor = this.f32552goto;
        this.f7751case = cfor.f32213try;
        this.f7752else = cfor.f32206case;
    }

    @Override // android.support.v4.x3
    /* renamed from: public */
    public void mo9369public(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f32552goto.init(true, new cc1(Cthis.m36100if((PublicKey) key), secureRandom));
        Cfor cfor = this.f32552goto;
        this.f7751case = cfor.f32213try;
        this.f7752else = cfor.f32206case;
    }
}
