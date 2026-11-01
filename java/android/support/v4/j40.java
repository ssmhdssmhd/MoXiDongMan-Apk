package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.rosstandart.RosstandartObjectIdentifiers;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.ECConstants;

/* loaded from: classes3.dex */
public class j40 {

    /* renamed from: do, reason: not valid java name */
    public static final Hashtable f2967do;

    /* renamed from: for, reason: not valid java name */
    public static final Hashtable f2968for;

    /* renamed from: if, reason: not valid java name */
    public static final Hashtable f2969if;

    static {
        Hashtable hashtable = new Hashtable();
        f2967do = hashtable;
        Hashtable hashtable2 = new Hashtable();
        f2969if = hashtable2;
        Hashtable hashtable3 = new Hashtable();
        f2968for = hashtable3;
        BigInteger bigInteger = new BigInteger("115792089237316195423570985008687907853269984665640564039457584007913129639319");
        BigInteger bigInteger2 = new BigInteger("115792089237316195423570985008687907853073762908499243225378155805079068850323");
        BigInteger bigInteger3 = new BigInteger("115792089237316195423570985008687907853269984665640564039457584007913129639316");
        BigInteger bigInteger4 = new BigInteger("166");
        BigInteger bigInteger5 = ECConstants.ONE;
        Cif.Ccase ccase = new Cif.Ccase(bigInteger, bigInteger3, bigInteger4, bigInteger2, bigInteger5);
        e40 e40Var = new e40(ccase, ccase.m35430goto(new BigInteger("1"), new BigInteger("64033881142927202683649881450433473985931760268884941288852745803908878638612")), bigInteger2, bigInteger5);
        Ccatch ccatch = CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_A;
        hashtable2.put(ccatch, e40Var);
        BigInteger bigInteger6 = new BigInteger("115792089237316195423570985008687907853269984665640564039457584007913129639319");
        BigInteger bigInteger7 = new BigInteger("115792089237316195423570985008687907853073762908499243225378155805079068850323");
        Cif.Ccase ccase2 = new Cif.Ccase(bigInteger6, new BigInteger("115792089237316195423570985008687907853269984665640564039457584007913129639316"), new BigInteger("166"), bigInteger7, bigInteger5);
        e40 e40Var2 = new e40(ccase2, ccase2.m35430goto(new BigInteger("1"), new BigInteger("64033881142927202683649881450433473985931760268884941288852745803908878638612")), bigInteger7, bigInteger5);
        Ccatch ccatch2 = CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_XchA;
        hashtable2.put(ccatch2, e40Var2);
        BigInteger bigInteger8 = new BigInteger("57896044618658097711785492504343953926634992332820282019728792003956564823193");
        BigInteger bigInteger9 = new BigInteger("57896044618658097711785492504343953927102133160255826820068844496087732066703");
        Cif.Ccase ccase3 = new Cif.Ccase(bigInteger8, new BigInteger("57896044618658097711785492504343953926634992332820282019728792003956564823190"), new BigInteger("28091019353058090096996979000309560759124368558014865957655842872397301267595"), bigInteger9, bigInteger5);
        e40 e40Var3 = new e40(ccase3, ccase3.m35430goto(new BigInteger("1"), new BigInteger("28792665814854611296992347458380284135028636778229113005756334730996303888124")), bigInteger9, bigInteger5);
        Ccatch ccatch3 = CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_B;
        hashtable2.put(ccatch3, e40Var3);
        BigInteger bigInteger10 = new BigInteger("70390085352083305199547718019018437841079516630045180471284346843705633502619");
        BigInteger bigInteger11 = new BigInteger("70390085352083305199547718019018437840920882647164081035322601458352298396601");
        Cif.Ccase ccase4 = new Cif.Ccase(bigInteger10, new BigInteger("70390085352083305199547718019018437841079516630045180471284346843705633502616"), new BigInteger("32858"), bigInteger11, bigInteger5);
        e40 e40Var4 = new e40(ccase4, ccase4.m35430goto(new BigInteger("0"), new BigInteger("29818893917731240733471273240314769927240550812383695689146495261604565990247")), bigInteger11, bigInteger5);
        Ccatch ccatch4 = CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_XchB;
        hashtable2.put(ccatch4, e40Var4);
        BigInteger bigInteger12 = new BigInteger("70390085352083305199547718019018437841079516630045180471284346843705633502619");
        BigInteger bigInteger13 = new BigInteger("70390085352083305199547718019018437840920882647164081035322601458352298396601");
        Cif.Ccase ccase5 = new Cif.Ccase(bigInteger12, new BigInteger("70390085352083305199547718019018437841079516630045180471284346843705633502616"), new BigInteger("32858"), bigInteger13, bigInteger5);
        e40 e40Var5 = new e40(ccase5, ccase5.m35430goto(new BigInteger("0"), new BigInteger("29818893917731240733471273240314769927240550812383695689146495261604565990247")), bigInteger13, bigInteger5);
        Ccatch ccatch5 = CryptoProObjectIdentifiers.gostR3410_2001_CryptoPro_C;
        hashtable2.put(ccatch5, e40Var5);
        BigInteger bigInteger14 = new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97", 16);
        BigInteger bigInteger15 = new BigInteger("400000000000000000000000000000000FD8CDDFC87B6635C115AF556C360C67", 16);
        BigInteger bigInteger16 = new BigInteger("C2173F1513981673AF4892C23035A27CE25E2013BF95AA33B22C656F277E7335", 16);
        BigInteger bigInteger17 = new BigInteger("295F9BAE7428ED9CCC20E7C359A9D41A22FCCD9108E17BF7BA9337A6F8AE9513", 16);
        BigInteger bigInteger18 = ECConstants.FOUR;
        Cif.Ccase ccase6 = new Cif.Ccase(bigInteger14, bigInteger16, bigInteger17, bigInteger15, bigInteger18);
        e40 e40Var6 = new e40(ccase6, ccase6.m35430goto(new BigInteger("91E38443A5E82C0D880923425712B2BB658B9196932E02C78B2582FE742DAA28", 16), new BigInteger("32879423AB1A0375895786C4BB46E9565FDE0B5344766740AF268ADB32322E5C", 16)), bigInteger15, bigInteger18);
        Ccatch ccatch6 = RosstandartObjectIdentifiers.id_tc26_gost_3410_12_256_paramSetA;
        hashtable2.put(ccatch6, e40Var6);
        BigInteger bigInteger19 = new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC7", 16);
        BigInteger bigInteger20 = new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF27E69532F48D89116FF22B8D4E0560609B4B38ABFAD2B85DCACDB1411F10B275", 16);
        Cif.Ccase ccase7 = new Cif.Ccase(bigInteger19, new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC4", 16), new BigInteger("E8C2505DEDFC86DDC1BD0B2B6667F1DA34B82574761CB0E879BD081CFD0B6265EE3CB090F30D27614CB4574010DA90DD862EF9D4EBEE4761503190785A71C760", 16), bigInteger20, bigInteger5);
        e40 e40Var7 = new e40(ccase7, ccase7.m35430goto(new BigInteger("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003"), new BigInteger("7503CFE87A836AE3A61B8816E25450E6CE5E1C93ACF1ABC1778064FDCBEFA921DF1626BE4FD036E93D75E6A50E3A41E98028FE5FC235F5B889A589CB5215F2A4", 16)), bigInteger20, bigInteger5);
        Ccatch ccatch7 = RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512_paramSetA;
        hashtable2.put(ccatch7, e40Var7);
        BigInteger bigInteger21 = new BigInteger("8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006F", 16);
        BigInteger bigInteger22 = new BigInteger("800000000000000000000000000000000000000000000000000000000000000149A1EC142565A545ACFDB77BD9D40CFA8B996712101BEA0EC6346C54374F25BD", 16);
        Cif.Ccase ccase8 = new Cif.Ccase(bigInteger21, new BigInteger("8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006C", 16), new BigInteger("687D1B459DC841457E3E06CF6F5E2517B97C7D614AF138BCBF85DC806C4B289F3E965D2DB1416D217F8B276FAD1AB69C50F78BEE1FA3106EFB8CCBC7C5140116", 16), bigInteger22, bigInteger5);
        e40 e40Var8 = new e40(ccase8, ccase8.m35430goto(new BigInteger("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002"), new BigInteger("1A8F7EDA389B094C2C071E3647A8940F3C123B697578C213BE6DD9E6C8EC7335DCB228FD1EDF4A39152CBCAAF8C0398828041055F94CEEEC7E21340780FE41BD", 16)), bigInteger22, bigInteger5);
        Ccatch ccatch8 = RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512_paramSetB;
        hashtable2.put(ccatch8, e40Var8);
        BigInteger bigInteger23 = new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC7", 16);
        BigInteger bigInteger24 = new BigInteger("3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC98CDBA46506AB004C33A9FF5147502CC8EDA9E7A769A12694623CEF47F023ED", 16);
        Cif.Ccase ccase9 = new Cif.Ccase(bigInteger23, new BigInteger("DC9203E514A721875485A529D2C722FB187BC8980EB866644DE41C68E143064546E861C0E2C9EDD92ADE71F46FCF50FF2AD97F951FDA9F2A2EB6546F39689BD3", 16), new BigInteger("B4C4EE28CEBC6C2C8AC12952CF37F16AC7EFB6A9F69F4B57FFDA2E4F0DE5ADE038CBC2FFF719D2C18DE0284B8BFEF3B52B8CC7A5F5BF0A3C8D2319A5312557E1", 16), bigInteger24, bigInteger18);
        e40 e40Var9 = new e40(ccase9, ccase9.m35430goto(new BigInteger("E2E31EDFC23DE7BDEBE241CE593EF5DE2295B7A9CBAEF021D385F7074CEA043AA27272A7AE602BF2A7B9033DB9ED3610C6FB85487EAE97AAC5BC7928C1950148", 16), new BigInteger("F5CE40D95B5EB899ABBCCFF5911CB8577939804D6527378B8C108C3D2090FF9BE18E2D33E3021ED2EF32D85822423B6304F726AA854BAE07D0396E9A9ADDC40F", 16)), bigInteger24, bigInteger18);
        Ccatch ccatch9 = RosstandartObjectIdentifiers.id_tc26_gost_3410_12_512_paramSetC;
        hashtable2.put(ccatch9, e40Var9);
        hashtable.put("GostR3410-2001-CryptoPro-A", ccatch);
        hashtable.put("GostR3410-2001-CryptoPro-B", ccatch3);
        hashtable.put("GostR3410-2001-CryptoPro-C", ccatch5);
        hashtable.put("GostR3410-2001-CryptoPro-XchA", ccatch2);
        hashtable.put("GostR3410-2001-CryptoPro-XchB", ccatch4);
        hashtable.put("Tc26-Gost-3410-12-256-paramSetA", ccatch6);
        hashtable.put("Tc26-Gost-3410-12-512-paramSetA", ccatch7);
        hashtable.put("Tc26-Gost-3410-12-512-paramSetB", ccatch8);
        hashtable.put("Tc26-Gost-3410-12-512-paramSetC", ccatch9);
        hashtable3.put(ccatch, "GostR3410-2001-CryptoPro-A");
        hashtable3.put(ccatch3, "GostR3410-2001-CryptoPro-B");
        hashtable3.put(ccatch5, "GostR3410-2001-CryptoPro-C");
        hashtable3.put(ccatch2, "GostR3410-2001-CryptoPro-XchA");
        hashtable3.put(ccatch4, "GostR3410-2001-CryptoPro-XchB");
        hashtable3.put(ccatch6, "Tc26-Gost-3410-12-256-paramSetA");
        hashtable3.put(ccatch7, "Tc26-Gost-3410-12-512-paramSetA");
        hashtable3.put(ccatch8, "Tc26-Gost-3410-12-512-paramSetB");
        hashtable3.put(ccatch9, "Tc26-Gost-3410-12-512-paramSetC");
    }

    /* renamed from: do, reason: not valid java name */
    public static e40 m3718do(String str) {
        Ccatch ccatch = (Ccatch) f2967do.get(str);
        if (ccatch != null) {
            return (e40) f2969if.get(ccatch);
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m3719for(Ccatch ccatch) {
        return (String) f2968for.get(ccatch);
    }

    /* renamed from: if, reason: not valid java name */
    public static e40 m3720if(Ccatch ccatch) {
        return (e40) f2969if.get(ccatch);
    }

    /* renamed from: new, reason: not valid java name */
    public static Enumeration m3721new() {
        return f2968for.elements();
    }

    /* renamed from: try, reason: not valid java name */
    public static Ccatch m3722try(String str) {
        return (Ccatch) f2967do.get(str);
    }
}
