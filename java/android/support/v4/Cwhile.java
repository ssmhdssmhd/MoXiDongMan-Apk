package android.support.v4;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Ccontinue;
import org.bouncycastle.asn1.Cdo;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimplements;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Cnative;
import org.bouncycastle.asn1.Cnew;
import org.bouncycastle.asn1.Cpackage;
import org.bouncycastle.asn1.Cpublic;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.Cthrows;
import org.bouncycastle.asn1.Ctransient;
import org.bouncycastle.asn1.Ctry;
import org.bouncycastle.asn1.Cvolatile;
import org.bouncycastle.util.Cfor;

/* renamed from: android.support.v4.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile {

    /* renamed from: do, reason: not valid java name */
    private static final String f7530do = "    ";

    /* renamed from: if, reason: not valid java name */
    private static final int f7531if = 32;

    /* renamed from: case, reason: not valid java name */
    private static String m9153case(String str, String str2, boolean z, Cfinal cfinal, String str3) {
        Cdo cdoM32915const = Cdo.m32915const(cfinal);
        StringBuffer stringBuffer = new StringBuffer();
        if (!cdoM32915const.mo32749goto()) {
            return str2 + str + " ApplicationSpecific[" + cdoM32915const.m32918catch() + "] (" + Cfor.m36359if(org.bouncycastle.util.encoders.Cfor.m36327case(cdoM32915const.m32919class())) + ")" + str3;
        }
        try {
            Csuper csuperM33129catch = Csuper.m33129catch(cdoM32915const.m32921throw(16));
            stringBuffer.append(str2 + str + " ApplicationSpecific[" + cdoM32915const.m32918catch() + "]" + str3);
            Enumeration enumerationMo33076super = csuperM33129catch.mo33076super();
            while (enumerationMo33076super.hasMoreElements()) {
                m9154do(str2 + f7530do, z, (Cfinal) enumerationMo33076super.nextElement(), stringBuffer);
            }
        } catch (IOException e) {
            stringBuffer.append(e);
        }
        return stringBuffer.toString();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m9154do(String str, boolean z, Cfinal cfinal, StringBuffer stringBuffer) {
        StringBuilder sb;
        BigInteger bigIntegerM33095final;
        String str2;
        String strM9153case;
        String strM32781throw;
        StringBuilder sb2;
        int length;
        String strM36360new = Cfor.m36360new();
        if (!(cfinal instanceof Csuper)) {
            if (cfinal instanceof Cimport) {
                String str3 = str + f7530do;
                stringBuffer.append(str);
                stringBuffer.append(cfinal instanceof Cvolatile ? "BER Tagged [" : "Tagged [");
                Cimport cimport = (Cimport) cfinal;
                stringBuffer.append(Integer.toString(cimport.getTagNo()));
                stringBuffer.append(']');
                if (!cimport.m33066final()) {
                    stringBuffer.append(" IMPLICIT ");
                }
                stringBuffer.append(strM36360new);
                if (!cimport.isEmpty()) {
                    m9154do(str3, z, cimport.m33065const(), stringBuffer);
                    return;
                } else {
                    stringBuffer.append(str3);
                    stringBuffer.append("EMPTY");
                }
            } else if (cfinal instanceof Cthrow) {
                Enumeration enumerationM33159throw = ((Cthrow) cfinal).m33159throw();
                String str4 = str + f7530do;
                stringBuffer.append(str);
                stringBuffer.append(cfinal instanceof Ccontinue ? "BER Set" : cfinal instanceof org.bouncycastle.asn1.q ? "DER Set" : "Set");
                while (true) {
                    stringBuffer.append(strM36360new);
                    while (enumerationM33159throw.hasMoreElements()) {
                        Object objNextElement = enumerationM33159throw.nextElement();
                        if (objNextElement == null) {
                            break;
                        } else {
                            m9154do(str4, z, objNextElement instanceof Cfinal ? (Cfinal) objNextElement : ((ASN1Encodable) objNextElement).toASN1Primitive(), stringBuffer);
                        }
                    }
                    return;
                    stringBuffer.append(str4);
                    stringBuffer.append("NULL");
                }
            } else {
                if (!(cfinal instanceof Cclass)) {
                    if (cfinal instanceof Ccatch) {
                        sb = new StringBuilder();
                        sb.append(str);
                        sb.append("ObjectIdentifier(");
                        sb.append(((Ccatch) cfinal).m32795super());
                    } else if (cfinal instanceof org.bouncycastle.asn1.Cfor) {
                        sb = new StringBuilder();
                        sb.append(str);
                        sb.append("Boolean(");
                        sb.append(((org.bouncycastle.asn1.Cfor) cfinal).m33022throw());
                    } else {
                        if (!(cfinal instanceof Cgoto)) {
                            if (cfinal instanceof Cinstanceof) {
                                Cinstanceof cinstanceof = (Cinstanceof) cfinal;
                                stringBuffer.append(str + "DER Bit String[" + cinstanceof.m33057const().length + ", " + cinstanceof.m33060throw() + "] ");
                                if (z) {
                                    strM9153case = m9158try(str, cinstanceof.m33057const());
                                }
                            } else {
                                if (cfinal instanceof org.bouncycastle.asn1.g) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("IA5String(");
                                    strM32781throw = ((org.bouncycastle.asn1.g) cfinal).getString();
                                } else if (cfinal instanceof org.bouncycastle.asn1.v) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("UTF8String(");
                                    strM32781throw = ((org.bouncycastle.asn1.v) cfinal).getString();
                                } else if (cfinal instanceof org.bouncycastle.asn1.m) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("PrintableString(");
                                    strM32781throw = ((org.bouncycastle.asn1.m) cfinal).getString();
                                } else if (cfinal instanceof org.bouncycastle.asn1.y) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("VisibleString(");
                                    strM32781throw = ((org.bouncycastle.asn1.y) cfinal).getString();
                                } else if (cfinal instanceof Cimplements) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("BMPString(");
                                    strM32781throw = ((Cimplements) cfinal).getString();
                                } else if (cfinal instanceof org.bouncycastle.asn1.s) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("T61String(");
                                    strM32781throw = ((org.bouncycastle.asn1.s) cfinal).getString();
                                } else if (cfinal instanceof org.bouncycastle.asn1.f) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("GraphicString(");
                                    strM32781throw = ((org.bouncycastle.asn1.f) cfinal).getString();
                                } else if (cfinal instanceof org.bouncycastle.asn1.x) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("VideotexString(");
                                    strM32781throw = ((org.bouncycastle.asn1.x) cfinal).getString();
                                } else if (cfinal instanceof Cnative) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("UTCTime(");
                                    strM32781throw = ((Cnative) cfinal).m33091throw();
                                } else if (cfinal instanceof Ccase) {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append("GeneralizedTime(");
                                    strM32781throw = ((Ccase) cfinal).m32781throw();
                                } else {
                                    if (cfinal instanceof Cpublic) {
                                        str2 = ASN1Encoding.BER;
                                    } else if (cfinal instanceof Ctransient) {
                                        str2 = ASN1Encoding.DER;
                                    } else if (cfinal instanceof org.bouncycastle.asn1.z) {
                                        str2 = "";
                                    } else if (cfinal instanceof Cnew) {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("DER Enumerated(");
                                        bigIntegerM33095final = ((Cnew) cfinal).m33095final();
                                    } else {
                                        if (cfinal instanceof Ctry) {
                                            Ctry ctry = (Ctry) cfinal;
                                            stringBuffer.append(str + "External " + strM36360new);
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append(str);
                                            sb3.append(f7530do);
                                            String string = sb3.toString();
                                            if (ctry.m33173class() != null) {
                                                stringBuffer.append(string + "Direct Reference: " + ctry.m33173class().m32795super() + strM36360new);
                                            }
                                            if (ctry.m33176super() != null) {
                                                stringBuffer.append(string + "Indirect Reference: " + ctry.m33176super().toString() + strM36360new);
                                            }
                                            if (ctry.m33172catch() != null) {
                                                m9154do(string, z, ctry.m33172catch(), stringBuffer);
                                            }
                                            stringBuffer.append(string + "Encoding: " + ctry.m33174const() + strM36360new);
                                            m9154do(string, z, ctry.m33175final(), stringBuffer);
                                            return;
                                        }
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append(cfinal.toString());
                                        sb.append(strM36360new);
                                        strM9153case = sb.toString();
                                    }
                                    strM9153case = m9153case(str2, str, z, cfinal, strM36360new);
                                }
                                sb.append(strM32781throw);
                                sb.append(") ");
                                sb.append(strM36360new);
                                strM9153case = sb.toString();
                            }
                            stringBuffer.append(strM9153case);
                            return;
                        }
                        sb = new StringBuilder();
                        sb.append(str);
                        sb.append("Integer(");
                        bigIntegerM33095final = ((Cgoto) cfinal).m33044final();
                        sb.append(bigIntegerM33095final);
                    }
                    sb.append(")");
                    sb.append(strM36360new);
                    strM9153case = sb.toString();
                    stringBuffer.append(strM9153case);
                    return;
                }
                Cclass cclass = (Cclass) cfinal;
                if (cfinal instanceof Cthrows) {
                    sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append("BER Constructed Octet String[");
                    length = cclass.mo5490const().length;
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append("DER Octet String[");
                    length = cclass.mo5490const().length;
                }
                sb2.append(length);
                sb2.append("] ");
                stringBuffer.append(sb2.toString());
                if (z) {
                    strM9153case = m9158try(str, cclass.mo5490const());
                    stringBuffer.append(strM9153case);
                    return;
                }
            }
            stringBuffer.append(strM36360new);
            return;
        }
        Enumeration enumerationMo33076super = ((Csuper) cfinal).mo33076super();
        String str5 = str + f7530do;
        stringBuffer.append(str);
        stringBuffer.append(cfinal instanceof Cpackage ? "BER Sequence" : cfinal instanceof org.bouncycastle.asn1.n ? "DER Sequence" : "Sequence");
        while (true) {
            stringBuffer.append(strM36360new);
            while (enumerationMo33076super.hasMoreElements()) {
                Object objNextElement2 = enumerationMo33076super.nextElement();
                if (objNextElement2 == null || objNextElement2.equals(org.bouncycastle.asn1.h.f29080do)) {
                    break;
                } else {
                    m9154do(str5, z, objNextElement2 instanceof Cfinal ? (Cfinal) objNextElement2 : ((ASN1Encodable) objNextElement2).toASN1Primitive(), stringBuffer);
                }
            }
            return;
            stringBuffer.append(str5);
            stringBuffer.append("NULL");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static String m9155for(Object obj) {
        return m9157new(obj, false);
    }

    /* renamed from: if, reason: not valid java name */
    private static String m9156if(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = i; i3 != i + i2; i3++) {
            if (bArr[i3] >= 32 && bArr[i3] <= 126) {
                stringBuffer.append((char) bArr[i3]);
            }
        }
        return stringBuffer.toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static String m9157new(Object obj, boolean z) {
        Cfinal aSN1Primitive;
        StringBuffer stringBuffer = new StringBuffer();
        if (obj instanceof Cfinal) {
            aSN1Primitive = (Cfinal) obj;
        } else {
            if (!(obj instanceof ASN1Encodable)) {
                return "unknown object type " + obj.toString();
            }
            aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        }
        m9154do("", z, aSN1Primitive, stringBuffer);
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    private static String m9158try(String str, byte[] bArr) {
        String strM9156if;
        String strM36360new = Cfor.m36360new();
        StringBuffer stringBuffer = new StringBuffer();
        String str2 = str + f7530do;
        stringBuffer.append(strM36360new);
        for (int i = 0; i < bArr.length; i += 32) {
            int length = bArr.length - i;
            stringBuffer.append(str2);
            if (length > 32) {
                stringBuffer.append(Cfor.m36359if(org.bouncycastle.util.encoders.Cfor.m36329else(bArr, i, 32)));
                stringBuffer.append(f7530do);
                strM9156if = m9156if(bArr, i, 32);
            } else {
                stringBuffer.append(Cfor.m36359if(org.bouncycastle.util.encoders.Cfor.m36329else(bArr, i, bArr.length - i)));
                for (int length2 = bArr.length - i; length2 != 32; length2++) {
                    stringBuffer.append("  ");
                }
                stringBuffer.append(f7530do);
                strM9156if = m9156if(bArr, i, bArr.length - i);
            }
            stringBuffer.append(strM9156if);
            stringBuffer.append(strM36360new);
        }
        return stringBuffer.toString();
    }
}
