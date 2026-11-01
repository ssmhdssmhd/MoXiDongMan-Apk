package org.bouncycastle.crypto.tls;

import android.support.v4.du;
import android.support.v4.hn0;
import android.support.v4.ju;
import android.support.v4.n72;
import android.support.v4.ou;
import android.support.v4.pu;
import android.support.v4.ru;
import android.support.v4.vl;
import android.support.v4.y3;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Hashtable;
import org.bouncycastle.crypto.generators.Cnew;
import org.bouncycastle.util.Cdo;
import org.bouncycastle.util.encoders.Cfor;

/* loaded from: classes3.dex */
public class q {

    /* renamed from: do, reason: not valid java name */
    public static final BigInteger f30717do = BigInteger.valueOf(2);

    /* renamed from: if, reason: not valid java name */
    public static final Integer f30721if = hn0.m3072for(101);

    /* renamed from: for, reason: not valid java name */
    private static final String f30719for = "FFFFFFFFFFFFFFFFADF85458A2BB4A9AAFDC5620273D3CF1D8B9C583CE2D3695A9E13641146433FBCC939DCE249B3EF97D2FE363630C75D8F681B202AEC4617AD3DF1ED5D5FD65612433F51F5F066ED0856365553DED1AF3B557135E7F57C935984F0C70E0E68B77E2A689DAF3EFE8721DF158A136ADE73530ACCA4F483A797ABC0AB182B324FB61D108A94BB2C8E3FBB96ADAB760D7F4681D4F42A3DE394DF4AE56EDE76372BB190B07A7C8EE0A6D709E02FCE1CDF7E2ECC03404CD28342F619172FE9CE98583FF8E4F1232EEF28183C3FE3B1B4C6FAD733BB5FCBC2EC22005C58EF1837D1683B2C6F34A26C1B2EFFA886B4238611FCFDCDE355B3B6519035BBC34F4DEF99C023861B46FC9D6E6C9077AD91D2691F7F7EE598CB0FAC186D91CAEFE13098533C8B3FFFFFFFFFFFFFFFF";

    /* renamed from: new, reason: not valid java name */
    public static final ou f30722new = m34271this(f30719for);

    /* renamed from: try, reason: not valid java name */
    private static final String f30724try = "FFFFFFFFFFFFFFFFADF85458A2BB4A9AAFDC5620273D3CF1D8B9C583CE2D3695A9E13641146433FBCC939DCE249B3EF97D2FE363630C75D8F681B202AEC4617AD3DF1ED5D5FD65612433F51F5F066ED0856365553DED1AF3B557135E7F57C935984F0C70E0E68B77E2A689DAF3EFE8721DF158A136ADE73530ACCA4F483A797ABC0AB182B324FB61D108A94BB2C8E3FBB96ADAB760D7F4681D4F42A3DE394DF4AE56EDE76372BB190B07A7C8EE0A6D709E02FCE1CDF7E2ECC03404CD28342F619172FE9CE98583FF8E4F1232EEF28183C3FE3B1B4C6FAD733BB5FCBC2EC22005C58EF1837D1683B2C6F34A26C1B2EFFA886B4238611FCFDCDE355B3B6519035BBC34F4DEF99C023861B46FC9D6E6C9077AD91D2691F7F7EE598CB0FAC186D91CAEFE130985139270B4130C93BC437944F4FD4452E2D74DD364F2E21E71F54BFF5CAE82AB9C9DF69EE86D2BC522363A0DABC521979B0DEADA1DBF9A42D5C4484E0ABCD06BFA53DDEF3C1B20EE3FD59D7C25E41D2B66C62E37FFFFFFFFFFFFFFFF";

    /* renamed from: case, reason: not valid java name */
    public static final ou f30714case = m34271this(f30724try);

    /* renamed from: else, reason: not valid java name */
    private static final String f30718else = "FFFFFFFFFFFFFFFFADF85458A2BB4A9AAFDC5620273D3CF1D8B9C583CE2D3695A9E13641146433FBCC939DCE249B3EF97D2FE363630C75D8F681B202AEC4617AD3DF1ED5D5FD65612433F51F5F066ED0856365553DED1AF3B557135E7F57C935984F0C70E0E68B77E2A689DAF3EFE8721DF158A136ADE73530ACCA4F483A797ABC0AB182B324FB61D108A94BB2C8E3FBB96ADAB760D7F4681D4F42A3DE394DF4AE56EDE76372BB190B07A7C8EE0A6D709E02FCE1CDF7E2ECC03404CD28342F619172FE9CE98583FF8E4F1232EEF28183C3FE3B1B4C6FAD733BB5FCBC2EC22005C58EF1837D1683B2C6F34A26C1B2EFFA886B4238611FCFDCDE355B3B6519035BBC34F4DEF99C023861B46FC9D6E6C9077AD91D2691F7F7EE598CB0FAC186D91CAEFE130985139270B4130C93BC437944F4FD4452E2D74DD364F2E21E71F54BFF5CAE82AB9C9DF69EE86D2BC522363A0DABC521979B0DEADA1DBF9A42D5C4484E0ABCD06BFA53DDEF3C1B20EE3FD59D7C25E41D2B669E1EF16E6F52C3164DF4FB7930E9E4E58857B6AC7D5F42D69F6D187763CF1D5503400487F55BA57E31CC7A7135C886EFB4318AED6A1E012D9E6832A907600A918130C46DC778F971AD0038092999A333CB8B7A1A1DB93D7140003C2A4ECEA9F98D0ACC0A8291CDCEC97DCF8EC9B55A7F88A46B4DB5A851F44182E1C68A007E5E655F6AFFFFFFFFFFFFFFFF";

    /* renamed from: goto, reason: not valid java name */
    public static final ou f30720goto = m34271this(f30718else);

    /* renamed from: this, reason: not valid java name */
    private static final String f30723this = "FFFFFFFFFFFFFFFFADF85458A2BB4A9AAFDC5620273D3CF1D8B9C583CE2D3695A9E13641146433FBCC939DCE249B3EF97D2FE363630C75D8F681B202AEC4617AD3DF1ED5D5FD65612433F51F5F066ED0856365553DED1AF3B557135E7F57C935984F0C70E0E68B77E2A689DAF3EFE8721DF158A136ADE73530ACCA4F483A797ABC0AB182B324FB61D108A94BB2C8E3FBB96ADAB760D7F4681D4F42A3DE394DF4AE56EDE76372BB190B07A7C8EE0A6D709E02FCE1CDF7E2ECC03404CD28342F619172FE9CE98583FF8E4F1232EEF28183C3FE3B1B4C6FAD733BB5FCBC2EC22005C58EF1837D1683B2C6F34A26C1B2EFFA886B4238611FCFDCDE355B3B6519035BBC34F4DEF99C023861B46FC9D6E6C9077AD91D2691F7F7EE598CB0FAC186D91CAEFE130985139270B4130C93BC437944F4FD4452E2D74DD364F2E21E71F54BFF5CAE82AB9C9DF69EE86D2BC522363A0DABC521979B0DEADA1DBF9A42D5C4484E0ABCD06BFA53DDEF3C1B20EE3FD59D7C25E41D2B669E1EF16E6F52C3164DF4FB7930E9E4E58857B6AC7D5F42D69F6D187763CF1D5503400487F55BA57E31CC7A7135C886EFB4318AED6A1E012D9E6832A907600A918130C46DC778F971AD0038092999A333CB8B7A1A1DB93D7140003C2A4ECEA9F98D0ACC0A8291CDCEC97DCF8EC9B55A7F88A46B4DB5A851F44182E1C68A007E5E0DD9020BFD64B645036C7A4E677D2C38532A3A23BA4442CAF53EA63BB454329B7624C8917BDD64B1C0FD4CB38E8C334C701C3ACDAD0657FCCFEC719B1F5C3E4E46041F388147FB4CFDB477A52471F7A9A96910B855322EDB6340D8A00EF092350511E30ABEC1FFF9E3A26E7FB29F8C183023C3587E38DA0077D9B4763E4E4B94B2BBC194C6651E77CAF992EEAAC0232A281BF6B3A739C1226116820AE8DB5847A67CBEF9C9091B462D538CD72B03746AE77F5E62292C311562A846505DC82DB854338AE49F5235C95B91178CCF2DD5CACEF403EC9D1810C6272B045B3B71F9DC6B80D63FDD4A8E9ADB1E6962A69526D43161C1A41D570D7938DAD4A40E329CD0E40E65FFFFFFFFFFFFFFFF";

    /* renamed from: break, reason: not valid java name */
    public static final ou f30713break = m34271this(f30723this);

    /* renamed from: catch, reason: not valid java name */
    private static final String f30715catch = "FFFFFFFFFFFFFFFFADF85458A2BB4A9AAFDC5620273D3CF1D8B9C583CE2D3695A9E13641146433FBCC939DCE249B3EF97D2FE363630C75D8F681B202AEC4617AD3DF1ED5D5FD65612433F51F5F066ED0856365553DED1AF3B557135E7F57C935984F0C70E0E68B77E2A689DAF3EFE8721DF158A136ADE73530ACCA4F483A797ABC0AB182B324FB61D108A94BB2C8E3FBB96ADAB760D7F4681D4F42A3DE394DF4AE56EDE76372BB190B07A7C8EE0A6D709E02FCE1CDF7E2ECC03404CD28342F619172FE9CE98583FF8E4F1232EEF28183C3FE3B1B4C6FAD733BB5FCBC2EC22005C58EF1837D1683B2C6F34A26C1B2EFFA886B4238611FCFDCDE355B3B6519035BBC34F4DEF99C023861B46FC9D6E6C9077AD91D2691F7F7EE598CB0FAC186D91CAEFE130985139270B4130C93BC437944F4FD4452E2D74DD364F2E21E71F54BFF5CAE82AB9C9DF69EE86D2BC522363A0DABC521979B0DEADA1DBF9A42D5C4484E0ABCD06BFA53DDEF3C1B20EE3FD59D7C25E41D2B669E1EF16E6F52C3164DF4FB7930E9E4E58857B6AC7D5F42D69F6D187763CF1D5503400487F55BA57E31CC7A7135C886EFB4318AED6A1E012D9E6832A907600A918130C46DC778F971AD0038092999A333CB8B7A1A1DB93D7140003C2A4ECEA9F98D0ACC0A8291CDCEC97DCF8EC9B55A7F88A46B4DB5A851F44182E1C68A007E5E0DD9020BFD64B645036C7A4E677D2C38532A3A23BA4442CAF53EA63BB454329B7624C8917BDD64B1C0FD4CB38E8C334C701C3ACDAD0657FCCFEC719B1F5C3E4E46041F388147FB4CFDB477A52471F7A9A96910B855322EDB6340D8A00EF092350511E30ABEC1FFF9E3A26E7FB29F8C183023C3587E38DA0077D9B4763E4E4B94B2BBC194C6651E77CAF992EEAAC0232A281BF6B3A739C1226116820AE8DB5847A67CBEF9C9091B462D538CD72B03746AE77F5E62292C311562A846505DC82DB854338AE49F5235C95B91178CCF2DD5CACEF403EC9D1810C6272B045B3B71F9DC6B80D63FDD4A8E9ADB1E6962A69526D43161C1A41D570D7938DAD4A40E329CCFF46AAA36AD004CF600C8381E425A31D951AE64FDB23FCEC9509D43687FEB69EDD1CC5E0B8CC3BDF64B10EF86B63142A3AB8829555B2F747C932665CB2C0F1CC01BD70229388839D2AF05E454504AC78B7582822846C0BA35C35F5C59160CC046FD8251541FC68C9C86B022BB7099876A460E7451A8A93109703FEE1C217E6C3826E52C51AA691E0E423CFC99E9E31650C1217B624816CDAD9A95F9D5B8019488D9C0A0A1FE3075A577E23183F81D4A3F2FA4571EFC8CE0BA8A4FE8B6855DFE72B0A66EDED2FBABFBE58A30FAFABE1C5D71A87E2F741EF8C1FE86FEA6BBFDE530677F0D97D11D49F7A8443D0822E506A9F4614E011E2A94838FF88CD68C8BB7C5C6424CFFFFFFFFFFFFFFFF";

    /* renamed from: class, reason: not valid java name */
    public static final ou f30716class = m34271this(f30715catch);

    /* renamed from: break, reason: not valid java name */
    public static y3 m34252break(SecureRandom secureRandom, ou ouVar) {
        Cnew cnew = new Cnew();
        cnew.init(new ju(secureRandom, ouVar));
        return cnew.generateKeyPair();
    }

    /* renamed from: case, reason: not valid java name */
    public static byte[] m34253case(short[] sArr) throws IOException {
        if (sArr == null || sArr.length < 1 || sArr.length > 255) {
            throw new n72((short) 80);
        }
        return l0.m34186continue(sArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static pu m34254catch(SecureRandom secureRandom, ou ouVar, OutputStream outputStream) throws IOException {
        y3 y3VarM34252break = m34252break(secureRandom, ouVar);
        m34268static(((ru) y3VarM34252break.m9727if()).m7126for(), outputStream);
        return (pu) y3VarM34252break.m9726do();
    }

    /* renamed from: class, reason: not valid java name */
    public static pu m34255class(SecureRandom secureRandom, ou ouVar, OutputStream outputStream) throws IOException {
        y3 y3VarM34252break = m34252break(secureRandom, ouVar);
        ru ruVar = (ru) y3VarM34252break.m9727if();
        m34270switch(ouVar, outputStream);
        m34268static(ruVar.m7126for(), outputStream);
        return (pu) y3VarM34252break.m9726do();
    }

    /* renamed from: const, reason: not valid java name */
    public static short[] m34256const(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30721if);
        if (bArrB == null) {
            return null;
        }
        return m34264native(bArrB);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m34257do(Hashtable hashtable, short[] sArr) throws IOException {
        hashtable.put(f30721if, m34253case(sArr));
    }

    /* renamed from: else, reason: not valid java name */
    public static byte[] m34258else(short s) throws IOException {
        l0.m34200native(s);
        byte[] bArr = new byte[1];
        l0.I0(s, bArr, 0);
        return bArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static short m34259final(Hashtable hashtable) throws IOException {
        byte[] bArrB = l0.b(hashtable, f30721if);
        if (bArrB == null) {
            return (short) -1;
        }
        return m34266public(bArrB);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m34260for(ou ouVar, ou ouVar2) {
        return ouVar.m5757case().equals(ouVar2.m5757case()) && ouVar.m5761if().equals(ouVar2.m5761if()) && (ouVar.m5758else() == null || ouVar2.m5758else() == null || ouVar.m5758else().equals(ouVar2.m5758else()));
    }

    /* renamed from: goto, reason: not valid java name */
    private static BigInteger m34261goto(String str) {
        return new BigInteger(1, Cfor.m36332if(str));
    }

    /* renamed from: if, reason: not valid java name */
    public static void m34262if(Hashtable hashtable, short s) throws IOException {
        hashtable.put(f30721if, m34258else(s));
    }

    /* renamed from: import, reason: not valid java name */
    public static ou m34263import(InputStream inputStream) throws IOException {
        return new ou(m34274while(inputStream), m34274while(inputStream));
    }

    /* renamed from: native, reason: not valid java name */
    public static short[] m34264native(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        short sC0 = l0.c0(byteArrayInputStream);
        if (sC0 < 1) {
            throw new n72((short) 50);
        }
        short[] sArrE0 = l0.e0(sC0, byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        return sArrE0;
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m34265new(ru ruVar, pu puVar) {
        du duVar = new du();
        duVar.init(puVar);
        return Cdo.m36313if(duVar.calculateAgreement(ruVar));
    }

    /* renamed from: public, reason: not valid java name */
    public static short m34266public(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        if (bArr.length == 1) {
            return l0.d0(bArr, 0);
        }
        throw new n72((short) 50);
    }

    /* renamed from: return, reason: not valid java name */
    public static ou m34267return(TlsDHVerifier tlsDHVerifier, InputStream inputStream) throws IOException {
        ou ouVarM34263import = m34263import(inputStream);
        if (tlsDHVerifier.accept(ouVarM34263import)) {
            return ouVarM34263import;
        }
        throw new n72((short) 71);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m34268static(BigInteger bigInteger, OutputStream outputStream) throws IOException {
        l0.o0(Cdo.m36313if(bigInteger), outputStream);
    }

    /* renamed from: super, reason: not valid java name */
    public static ou m34269super(short s) {
        if (s == 0) {
            return f30722new;
        }
        if (s == 1) {
            return f30714case;
        }
        if (s == 2) {
            return f30720goto;
        }
        if (s == 3) {
            return f30713break;
        }
        if (s != 4) {
            return null;
        }
        return f30716class;
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m34270switch(ou ouVar, OutputStream outputStream) throws IOException {
        m34268static(ouVar.m5757case(), outputStream);
        m34268static(ouVar.m5761if(), outputStream);
    }

    /* renamed from: this, reason: not valid java name */
    private static ou m34271this(String str) {
        BigInteger bigIntegerM34261goto = m34261goto(str);
        return new ou(bigIntegerM34261goto, f30717do, bigIntegerM34261goto.shiftRight(1));
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m34272throw(int i) {
        switch (i) {
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 24:
            case 27:
            case 45:
            case 50:
            case 51:
            case 52:
            case 56:
            case 57:
            case 58:
            case 64:
            case 68:
            case 69:
            case 70:
            case 103:
            case 106:
            case 107:
            case 108:
            case 109:
            case 135:
            case 136:
            case 137:
            case 142:
            case 143:
            case 144:
            case 145:
            case 153:
            case 154:
            case 155:
            case 158:
            case 159:
            case 162:
            case 163:
            case 166:
            case 167:
            case 170:
            case 171:
            case 178:
            case 179:
            case 180:
            case 181:
            case 189:
            case 190:
            case 191:
            case 195:
            case 196:
            case 197:
            case vl.d2 /* 49276 */:
            case vl.e2 /* 49277 */:
            case vl.h2 /* 49280 */:
            case vl.i2 /* 49281 */:
            case vl.l2 /* 49284 */:
            case vl.m2 /* 49285 */:
            case vl.x2 /* 49296 */:
            case vl.y2 /* 49297 */:
            case vl.D2 /* 49302 */:
            case vl.E2 /* 49303 */:
            case vl.L2 /* 49310 */:
            case vl.M2 /* 49311 */:
            case vl.P2 /* 49314 */:
            case vl.Q2 /* 49315 */:
            case vl.T2 /* 49318 */:
            case vl.U2 /* 49319 */:
            case vl.X2 /* 49322 */:
            case vl.Y2 /* 49323 */:
            case vl.g3 /* 52394 */:
            case vl.j3 /* 52397 */:
            case 65280:
            case 65281:
            case vl.t3 /* 65298 */:
            case vl.u3 /* 65299 */:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m34273try(int[] iArr) {
        for (int i : iArr) {
            if (m34272throw(i)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: while, reason: not valid java name */
    public static BigInteger m34274while(InputStream inputStream) throws IOException {
        return new BigInteger(1, l0.P(inputStream));
    }
}
