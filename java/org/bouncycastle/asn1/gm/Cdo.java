package org.bouncycastle.asn1.gm;

import android.support.v4.th2;
import android.support.v4.uh2;
import android.support.v4.vh2;
import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.asn1.gm.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static uh2 f29074do = new C0398do();

    /* renamed from: if, reason: not valid java name */
    public static uh2 f29076if = new Cif();

    /* renamed from: for, reason: not valid java name */
    public static final Hashtable f29075for = new Hashtable();

    /* renamed from: new, reason: not valid java name */
    public static final Hashtable f29077new = new Hashtable();

    /* renamed from: try, reason: not valid java name */
    public static final Hashtable f29078try = new Hashtable();

    /* renamed from: org.bouncycastle.asn1.gm.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0398do extends uh2 {
        @Override // android.support.v4.uh2
        /* renamed from: do */
        public th2 mo8457do() {
            BigInteger bigIntegerM33039try = Cdo.m33039try("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF");
            BigInteger bigIntegerM33039try2 = Cdo.m33039try("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC");
            BigInteger bigIntegerM33039try3 = Cdo.m33039try("28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93");
            BigInteger bigIntegerM33039try4 = Cdo.m33039try("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123");
            BigInteger bigIntegerValueOf = BigInteger.valueOf(1L);
            org.bouncycastle.math.ec.Cif cifM33034for = Cdo.m33034for(new Cif.Ccase(bigIntegerM33039try, bigIntegerM33039try2, bigIntegerM33039try3, bigIntegerM33039try4, bigIntegerValueOf));
            return new th2(cifM33034for, new vh2(cifM33034for, Cfor.m36332if("0432C4AE2C1F1981195F9904466A39C9948FE30BBFF2660BE1715A4589334C74C7BC3736A2F4F6779C59BDCEE36B692153D0A9877CC62A474002DF32E52139F0A0")), bigIntegerM33039try4, bigIntegerValueOf, (byte[]) null);
        }
    }

    /* renamed from: org.bouncycastle.asn1.gm.do$if, reason: invalid class name */
    public static class Cif extends uh2 {
        @Override // android.support.v4.uh2
        /* renamed from: do */
        public th2 mo8457do() {
            BigInteger bigIntegerM33039try = Cdo.m33039try("BDB6F4FE3E8B1D9E0DA8C0D46F4C318CEFE4AFE3B6B8551F");
            BigInteger bigIntegerM33039try2 = Cdo.m33039try("BB8E5E8FBC115E139FE6A814FE48AAA6F0ADA1AA5DF91985");
            BigInteger bigIntegerM33039try3 = Cdo.m33039try("1854BEBDC31B21B7AEFC80AB0ECD10D5B1B3308E6DBF11C1");
            BigInteger bigIntegerM33039try4 = Cdo.m33039try("BDB6F4FE3E8B1D9E0DA8C0D40FC962195DFAE76F56564677");
            BigInteger bigIntegerValueOf = BigInteger.valueOf(1L);
            org.bouncycastle.math.ec.Cif cifM33034for = Cdo.m33034for(new Cif.Ccase(bigIntegerM33039try, bigIntegerM33039try2, bigIntegerM33039try3, bigIntegerM33039try4, bigIntegerValueOf));
            return new th2(cifM33034for, new vh2(cifM33034for, Cfor.m36332if("044AD5F7048DE709AD51236DE65E4D4B482C836DC6E410664002BB3A02D4AAADACAE24817A4CA3A1B014B5270432DB27D2")), bigIntegerM33039try4, bigIntegerValueOf, (byte[]) null);
        }
    }

    static {
        m33037new("wapip192v1", GMObjectIdentifiers.wapip192v1, f29076if);
        m33037new("sm2p256v1", GMObjectIdentifiers.sm2p256v1, f29074do);
    }

    /* renamed from: break, reason: not valid java name */
    public static Ccatch m33030break(String str) {
        return (Ccatch) f29075for.get(org.bouncycastle.util.Cfor.m36349break(str));
    }

    /* renamed from: case, reason: not valid java name */
    public static th2 m33031case(String str) {
        Ccatch ccatchM33030break = m33030break(str);
        if (ccatchM33030break == null) {
            return null;
        }
        return m33033else(ccatchM33030break);
    }

    /* renamed from: else, reason: not valid java name */
    public static th2 m33033else(Ccatch ccatch) {
        uh2 uh2Var = (uh2) f29077new.get(ccatch);
        if (uh2Var == null) {
            return null;
        }
        return uh2Var.m8458if();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static org.bouncycastle.math.ec.Cif m33034for(org.bouncycastle.math.ec.Cif cif) {
        return cif;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m33035goto(Ccatch ccatch) {
        return (String) f29078try.get(ccatch);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m33037new(String str, Ccatch ccatch, uh2 uh2Var) {
        f29075for.put(org.bouncycastle.util.Cfor.m36349break(str), ccatch);
        f29078try.put(ccatch, str);
        f29077new.put(ccatch, uh2Var);
    }

    /* renamed from: this, reason: not valid java name */
    public static Enumeration m33038this() {
        return f29078try.elements();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static BigInteger m33039try(String str) {
        return new BigInteger(1, Cfor.m36332if(str));
    }
}
