package org.bouncycastle.jcajce.provider.asymmetric.util;

import android.support.v4.hn0;
import android.support.v4.hu;
import android.support.v4.iu;
import android.support.v4.kq0;
import android.support.v4.q3;
import android.support.v4.tw;
import android.support.v4.ut;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import javax.crypto.KeyAgreementSpi;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.gnu.GNUObjectIdentifiers;
import org.bouncycastle.asn1.kisa.KISAObjectIdentifiers;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.util.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo extends KeyAgreementSpi {

    /* renamed from: case, reason: not valid java name */
    private static final Map<String, String> f31240case;

    /* renamed from: else, reason: not valid java name */
    private static final Hashtable f31241else;

    /* renamed from: goto, reason: not valid java name */
    private static final Hashtable f31242goto;

    /* renamed from: new, reason: not valid java name */
    private static final Map<String, Ccatch> f31243new;

    /* renamed from: try, reason: not valid java name */
    private static final Map<String, Integer> f31244try;

    /* renamed from: do, reason: not valid java name */
    public final String f31245do;

    /* renamed from: for, reason: not valid java name */
    public byte[] f31246for;

    /* renamed from: if, reason: not valid java name */
    public final DerivationFunction f31247if;

    static {
        HashMap map = new HashMap();
        f31243new = map;
        HashMap map2 = new HashMap();
        f31244try = map2;
        HashMap map3 = new HashMap();
        f31240case = map3;
        Hashtable hashtable = new Hashtable();
        f31241else = hashtable;
        Hashtable hashtable2 = new Hashtable();
        f31242goto = hashtable2;
        Integer numM3072for = hn0.m3072for(64);
        Integer numM3072for2 = hn0.m3072for(128);
        Integer numM3072for3 = hn0.m3072for(192);
        Integer numM3072for4 = hn0.m3072for(256);
        map2.put("DES", numM3072for);
        map2.put("DESEDE", numM3072for3);
        map2.put("BLOWFISH", numM3072for2);
        map2.put("AES", numM3072for4);
        map2.put(NISTObjectIdentifiers.id_aes128_ECB.m32795super(), numM3072for2);
        map2.put(NISTObjectIdentifiers.id_aes192_ECB.m32795super(), numM3072for3);
        map2.put(NISTObjectIdentifiers.id_aes256_ECB.m32795super(), numM3072for4);
        map2.put(NISTObjectIdentifiers.id_aes128_CBC.m32795super(), numM3072for2);
        map2.put(NISTObjectIdentifiers.id_aes192_CBC.m32795super(), numM3072for3);
        Ccatch ccatch = NISTObjectIdentifiers.id_aes256_CBC;
        map2.put(ccatch.m32795super(), numM3072for4);
        map2.put(NISTObjectIdentifiers.id_aes128_CFB.m32795super(), numM3072for2);
        map2.put(NISTObjectIdentifiers.id_aes192_CFB.m32795super(), numM3072for3);
        map2.put(NISTObjectIdentifiers.id_aes256_CFB.m32795super(), numM3072for4);
        map2.put(NISTObjectIdentifiers.id_aes128_OFB.m32795super(), numM3072for2);
        map2.put(NISTObjectIdentifiers.id_aes192_OFB.m32795super(), numM3072for3);
        map2.put(NISTObjectIdentifiers.id_aes256_OFB.m32795super(), numM3072for4);
        Ccatch ccatch2 = NISTObjectIdentifiers.id_aes128_wrap;
        map2.put(ccatch2.m32795super(), numM3072for2);
        map2.put(NISTObjectIdentifiers.id_aes192_wrap.m32795super(), numM3072for3);
        map2.put(NISTObjectIdentifiers.id_aes256_wrap.m32795super(), numM3072for4);
        Ccatch ccatch3 = NISTObjectIdentifiers.id_aes128_CCM;
        map2.put(ccatch3.m32795super(), numM3072for2);
        map2.put(NISTObjectIdentifiers.id_aes192_CCM.m32795super(), numM3072for3);
        map2.put(NISTObjectIdentifiers.id_aes256_CCM.m32795super(), numM3072for4);
        map2.put(NISTObjectIdentifiers.id_aes128_GCM.m32795super(), numM3072for2);
        map2.put(NISTObjectIdentifiers.id_aes192_GCM.m32795super(), numM3072for3);
        map2.put(NISTObjectIdentifiers.id_aes256_GCM.m32795super(), numM3072for4);
        Ccatch ccatch4 = NTTObjectIdentifiers.id_camellia128_wrap;
        map2.put(ccatch4.m32795super(), numM3072for2);
        Ccatch ccatch5 = NTTObjectIdentifiers.id_camellia192_wrap;
        map2.put(ccatch5.m32795super(), numM3072for3);
        Ccatch ccatch6 = NTTObjectIdentifiers.id_camellia256_wrap;
        map2.put(ccatch6.m32795super(), numM3072for4);
        Ccatch ccatch7 = KISAObjectIdentifiers.id_npki_app_cmsSeed_wrap;
        map2.put(ccatch7.m32795super(), numM3072for2);
        Ccatch ccatch8 = PKCSObjectIdentifiers.id_alg_CMS3DESwrap;
        map2.put(ccatch8.m32795super(), numM3072for3);
        Ccatch ccatch9 = PKCSObjectIdentifiers.des_EDE3_CBC;
        map2.put(ccatch9.m32795super(), numM3072for3);
        Ccatch ccatch10 = OIWObjectIdentifiers.desCBC;
        map2.put(ccatch10.m32795super(), numM3072for);
        Ccatch ccatch11 = CryptoProObjectIdentifiers.gostR28147_gcfb;
        map2.put(ccatch11.m32795super(), numM3072for4);
        map2.put(CryptoProObjectIdentifiers.id_Gost28147_89_None_KeyWrap.m32795super(), numM3072for4);
        map2.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_KeyWrap.m32795super(), numM3072for4);
        Ccatch ccatch12 = PKCSObjectIdentifiers.id_hmacWithSHA1;
        map2.put(ccatch12.m32795super(), hn0.m3072for(160));
        Ccatch ccatch13 = PKCSObjectIdentifiers.id_hmacWithSHA256;
        map2.put(ccatch13.m32795super(), numM3072for4);
        Ccatch ccatch14 = PKCSObjectIdentifiers.id_hmacWithSHA384;
        map2.put(ccatch14.m32795super(), hn0.m3072for(384));
        Ccatch ccatch15 = PKCSObjectIdentifiers.id_hmacWithSHA512;
        map2.put(ccatch15.m32795super(), hn0.m3072for(512));
        map.put("DESEDE", ccatch9);
        map.put("AES", ccatch);
        Ccatch ccatch16 = NTTObjectIdentifiers.id_camellia256_cbc;
        map.put("CAMELLIA", ccatch16);
        Ccatch ccatch17 = KISAObjectIdentifiers.id_seedCBC;
        map.put("SEED", ccatch17);
        map.put("DES", ccatch10);
        map3.put(MiscObjectIdentifiers.cast5CBC.m32795super(), "CAST5");
        map3.put(MiscObjectIdentifiers.as_sys_sec_alg_ideaCBC.m32795super(), "IDEA");
        map3.put(MiscObjectIdentifiers.cryptlib_algorithm_blowfish_ECB.m32795super(), "Blowfish");
        map3.put(MiscObjectIdentifiers.cryptlib_algorithm_blowfish_CBC.m32795super(), "Blowfish");
        map3.put(MiscObjectIdentifiers.cryptlib_algorithm_blowfish_CFB.m32795super(), "Blowfish");
        map3.put(MiscObjectIdentifiers.cryptlib_algorithm_blowfish_OFB.m32795super(), "Blowfish");
        map3.put(OIWObjectIdentifiers.desECB.m32795super(), "DES");
        map3.put(ccatch10.m32795super(), "DES");
        map3.put(OIWObjectIdentifiers.desCFB.m32795super(), "DES");
        map3.put(OIWObjectIdentifiers.desOFB.m32795super(), "DES");
        map3.put(OIWObjectIdentifiers.desEDE.m32795super(), "DESede");
        map3.put(ccatch9.m32795super(), "DESede");
        map3.put(ccatch8.m32795super(), "DESede");
        map3.put(PKCSObjectIdentifiers.id_alg_CMSRC2wrap.m32795super(), "RC2");
        map3.put(ccatch12.m32795super(), "HmacSHA1");
        map3.put(PKCSObjectIdentifiers.id_hmacWithSHA224.m32795super(), "HmacSHA224");
        map3.put(ccatch13.m32795super(), "HmacSHA256");
        map3.put(ccatch14.m32795super(), "HmacSHA384");
        map3.put(ccatch15.m32795super(), "HmacSHA512");
        map3.put(NTTObjectIdentifiers.id_camellia128_cbc.m32795super(), "Camellia");
        map3.put(NTTObjectIdentifiers.id_camellia192_cbc.m32795super(), "Camellia");
        map3.put(ccatch16.m32795super(), "Camellia");
        map3.put(ccatch4.m32795super(), "Camellia");
        map3.put(ccatch5.m32795super(), "Camellia");
        map3.put(ccatch6.m32795super(), "Camellia");
        map3.put(ccatch7.m32795super(), "SEED");
        map3.put(ccatch17.m32795super(), "SEED");
        map3.put(KISAObjectIdentifiers.id_seedMAC.m32795super(), "SEED");
        map3.put(ccatch11.m32795super(), "GOST28147");
        map3.put(ccatch2.m32795super(), "AES");
        map3.put(ccatch3.m32795super(), "AES");
        map3.put(ccatch3.m32795super(), "AES");
        hashtable.put("DESEDE", ccatch9);
        hashtable.put("AES", ccatch);
        hashtable.put("DES", ccatch10);
        hashtable2.put("DES", "DES");
        hashtable2.put("DESEDE", "DES");
        hashtable2.put(ccatch10.m32795super(), "DES");
        hashtable2.put(ccatch9.m32795super(), "DES");
        hashtable2.put(ccatch8.m32795super(), "DES");
    }

    public Cdo(String str, DerivationFunction derivationFunction) {
        this.f31245do = str;
        this.f31247if = derivationFunction;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m34725for(String str) {
        if (str.indexOf(91) > 0) {
            return Integer.parseInt(str.substring(str.indexOf(91) + 1, str.indexOf(93)));
        }
        String strM36356final = Cfor.m36356final(str);
        Map<String, Integer> map = f31244try;
        if (map.containsKey(strM36356final)) {
            return map.get(strM36356final).intValue();
        }
        return -1;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m34726if(String str) {
        if (str.indexOf(91) > 0) {
            return str.substring(0, str.indexOf(91));
        }
        if (str.startsWith(NISTObjectIdentifiers.aes.m32795super())) {
            return "AES";
        }
        if (str.startsWith(GNUObjectIdentifiers.Serpent.m32795super())) {
            return "Serpent";
        }
        String str2 = f31240case.get(Cfor.m36356final(str));
        return str2 != null ? str2 : str;
    }

    /* renamed from: new, reason: not valid java name */
    private byte[] m34727new(byte[] bArr, String str, int i) throws tw, NoSuchAlgorithmException, IllegalArgumentException {
        DerivationParameters kq0Var;
        DerivationFunction derivationFunction = this.f31247if;
        if (derivationFunction == null) {
            if (i <= 0) {
                return bArr;
            }
            int i2 = i / 8;
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            q3.m6365const(bArr);
            return bArr2;
        }
        if (i < 0) {
            throw new NoSuchAlgorithmException("unknown algorithm encountered: " + str);
        }
        int i3 = i / 8;
        byte[] bArr3 = new byte[i3];
        if (!(derivationFunction instanceof iu)) {
            kq0Var = new kq0(bArr, this.f31246for);
        } else {
            if (str == null) {
                throw new NoSuchAlgorithmException("algorithm OID is null");
            }
            try {
                kq0Var = new hu(new Ccatch(str), i, bArr, this.f31246for);
            } catch (IllegalArgumentException unused) {
                throw new NoSuchAlgorithmException("no OID for algorithm: " + str);
            }
        }
        this.f31247if.init(kq0Var);
        this.f31247if.generateBytes(bArr3, 0, i3);
        q3.m6365const(bArr);
        return bArr3;
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m34728try(byte[] bArr) {
        if (bArr[0] != 0) {
            return bArr;
        }
        int i = 0;
        while (i < bArr.length && bArr[i] == 0) {
            i++;
        }
        int length = bArr.length - i;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i, bArr2, 0, length);
        return bArr2;
    }

    /* renamed from: do */
    public abstract byte[] mo9261do();

    @Override // javax.crypto.KeyAgreementSpi
    public int engineGenerateSecret(byte[] bArr, int i) throws IllegalStateException, ShortBufferException {
        byte[] bArrEngineGenerateSecret = engineGenerateSecret();
        if (bArr.length - i >= bArrEngineGenerateSecret.length) {
            System.arraycopy(bArrEngineGenerateSecret, 0, bArr, i, bArrEngineGenerateSecret.length);
            return bArrEngineGenerateSecret.length;
        }
        throw new ShortBufferException(this.f31245do + " key agreement: need " + bArrEngineGenerateSecret.length + " bytes");
    }

    @Override // javax.crypto.KeyAgreementSpi
    public SecretKey engineGenerateSecret(String str) throws tw, NoSuchAlgorithmException, IllegalArgumentException {
        String strM36356final = Cfor.m36356final(str);
        Hashtable hashtable = f31241else;
        String strM32795super = hashtable.containsKey(strM36356final) ? ((Ccatch) hashtable.get(strM36356final)).m32795super() : str;
        byte[] bArrM34727new = m34727new(mo9261do(), strM32795super, m34725for(strM32795super));
        String strM34726if = m34726if(str);
        if (f31242goto.containsKey(strM34726if)) {
            ut.m8637for(bArrM34727new);
        }
        return new SecretKeySpec(bArrM34727new, strM34726if);
    }

    @Override // javax.crypto.KeyAgreementSpi
    public byte[] engineGenerateSecret() throws IllegalStateException {
        if (this.f31247if == null) {
            return mo9261do();
        }
        byte[] bArrMo9261do = mo9261do();
        try {
            return m34727new(bArrMo9261do, null, bArrMo9261do.length * 8);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}
