package android.support.v4;

import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.gm.GMObjectIdentifiers;
import org.bouncycastle.asn1.gnu.GNUObjectIdentifiers;
import org.bouncycastle.asn1.iso.ISOIECObjectIdentifiers;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;

/* loaded from: classes3.dex */
public class tz0 {

    /* renamed from: do, reason: not valid java name */
    private static Map<Ccatch, String> f6712do;

    static {
        HashMap map = new HashMap();
        f6712do = map;
        map.put(PKCSObjectIdentifiers.md2, "MD2");
        f6712do.put(PKCSObjectIdentifiers.md4, "MD4");
        f6712do.put(PKCSObjectIdentifiers.md5, "MD5");
        f6712do.put(OIWObjectIdentifiers.idSHA1, qy0.f5539case);
        f6712do.put(NISTObjectIdentifiers.id_sha224, qy0.f5542else);
        f6712do.put(NISTObjectIdentifiers.id_sha256, "SHA-256");
        f6712do.put(NISTObjectIdentifiers.id_sha384, qy0.f5544this);
        f6712do.put(NISTObjectIdentifiers.id_sha512, "SHA-512");
        f6712do.put(TeleTrusTObjectIdentifiers.ripemd128, "RIPEMD-128");
        f6712do.put(TeleTrusTObjectIdentifiers.ripemd160, "RIPEMD-160");
        f6712do.put(TeleTrusTObjectIdentifiers.ripemd256, "RIPEMD-128");
        f6712do.put(ISOIECObjectIdentifiers.ripemd128, "RIPEMD-128");
        f6712do.put(ISOIECObjectIdentifiers.ripemd160, "RIPEMD-160");
        f6712do.put(CryptoProObjectIdentifiers.gostR3411, "GOST3411");
        f6712do.put(GNUObjectIdentifiers.Tiger_192, "Tiger");
        f6712do.put(ISOIECObjectIdentifiers.whirlpool, "Whirlpool");
        f6712do.put(NISTObjectIdentifiers.id_sha3_224, "SHA3-224");
        f6712do.put(NISTObjectIdentifiers.id_sha3_256, "SHA3-256");
        f6712do.put(NISTObjectIdentifiers.id_sha3_384, "SHA3-384");
        f6712do.put(NISTObjectIdentifiers.id_sha3_512, "SHA3-512");
        f6712do.put(GMObjectIdentifiers.sm3, "SM3");
    }

    /* renamed from: do, reason: not valid java name */
    public static String m8163do(Ccatch ccatch) {
        String str = f6712do.get(ccatch);
        return str != null ? str : ccatch.m32795super();
    }
}
