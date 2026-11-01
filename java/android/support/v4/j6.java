package android.support.v4;

import androidx.exifinterface.media.ExifInterface;
import java.util.Hashtable;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x500.X500NameStyle;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;

/* loaded from: classes3.dex */
public class j6 extends k {
    private static final Hashtable a;

    /* renamed from: abstract, reason: not valid java name */
    public static final Ccatch f2975abstract;
    public static final X500NameStyle b;

    /* renamed from: break, reason: not valid java name */
    public static final Ccatch f2976break;

    /* renamed from: case, reason: not valid java name */
    public static final Ccatch f2977case;

    /* renamed from: catch, reason: not valid java name */
    public static final Ccatch f2978catch;

    /* renamed from: class, reason: not valid java name */
    public static final Ccatch f2979class;

    /* renamed from: const, reason: not valid java name */
    public static final Ccatch f2980const;

    /* renamed from: continue, reason: not valid java name */
    public static final Ccatch f2981continue;

    /* renamed from: default, reason: not valid java name */
    public static final Ccatch f2982default;

    /* renamed from: else, reason: not valid java name */
    public static final Ccatch f2983else;

    /* renamed from: extends, reason: not valid java name */
    public static final Ccatch f2984extends;

    /* renamed from: final, reason: not valid java name */
    public static final Ccatch f2985final;

    /* renamed from: finally, reason: not valid java name */
    public static final Ccatch f2986finally;

    /* renamed from: for, reason: not valid java name */
    public static final Ccatch f2987for;

    /* renamed from: goto, reason: not valid java name */
    public static final Ccatch f2988goto;

    /* renamed from: implements, reason: not valid java name */
    public static final Ccatch f2989implements;

    /* renamed from: import, reason: not valid java name */
    public static final Ccatch f2990import;

    /* renamed from: instanceof, reason: not valid java name */
    public static final Ccatch f2991instanceof;

    /* renamed from: interface, reason: not valid java name */
    public static final Ccatch f2992interface;

    /* renamed from: native, reason: not valid java name */
    public static final Ccatch f2993native;

    /* renamed from: new, reason: not valid java name */
    public static final Ccatch f2994new;

    /* renamed from: package, reason: not valid java name */
    public static final Ccatch f2995package;

    /* renamed from: private, reason: not valid java name */
    public static final Ccatch f2996private;

    /* renamed from: protected, reason: not valid java name */
    public static final Ccatch f2997protected;

    /* renamed from: public, reason: not valid java name */
    public static final Ccatch f2998public;

    /* renamed from: return, reason: not valid java name */
    public static final Ccatch f2999return;

    /* renamed from: static, reason: not valid java name */
    public static final Ccatch f3000static;

    /* renamed from: strictfp, reason: not valid java name */
    public static final Ccatch f3001strictfp;

    /* renamed from: super, reason: not valid java name */
    public static final Ccatch f3002super;

    /* renamed from: switch, reason: not valid java name */
    public static final Ccatch f3003switch;

    /* renamed from: synchronized, reason: not valid java name */
    private static final Hashtable f3004synchronized;

    /* renamed from: this, reason: not valid java name */
    public static final Ccatch f3005this;

    /* renamed from: throw, reason: not valid java name */
    public static final Ccatch f3006throw;

    /* renamed from: throws, reason: not valid java name */
    public static final Ccatch f3007throws;

    /* renamed from: transient, reason: not valid java name */
    public static final Ccatch f3008transient;

    /* renamed from: try, reason: not valid java name */
    public static final Ccatch f3009try;

    /* renamed from: volatile, reason: not valid java name */
    public static final Ccatch f3010volatile;

    /* renamed from: while, reason: not valid java name */
    public static final Ccatch f3011while;

    /* renamed from: if, reason: not valid java name */
    public final Hashtable f3013if = k.m4168if(f3004synchronized);

    /* renamed from: do, reason: not valid java name */
    public final Hashtable f3012do = k.m4168if(a);

    static {
        Ccatch ccatchM32793import = new Ccatch("2.5.4.6").m32793import();
        f2987for = ccatchM32793import;
        Ccatch ccatchM32793import2 = new Ccatch("2.5.4.10").m32793import();
        f2994new = ccatchM32793import2;
        Ccatch ccatchM32793import3 = new Ccatch("2.5.4.11").m32793import();
        f3009try = ccatchM32793import3;
        Ccatch ccatchM32793import4 = new Ccatch("2.5.4.12").m32793import();
        f2977case = ccatchM32793import4;
        Ccatch ccatchM32793import5 = new Ccatch("2.5.4.3").m32793import();
        f2983else = ccatchM32793import5;
        Ccatch ccatchM32793import6 = new Ccatch("2.5.4.5").m32793import();
        f2988goto = ccatchM32793import6;
        Ccatch ccatchM32793import7 = new Ccatch("2.5.4.9").m32793import();
        f3005this = ccatchM32793import7;
        f2976break = ccatchM32793import6;
        Ccatch ccatchM32793import8 = new Ccatch("2.5.4.7").m32793import();
        f2978catch = ccatchM32793import8;
        Ccatch ccatchM32793import9 = new Ccatch("2.5.4.8").m32793import();
        f2979class = ccatchM32793import9;
        Ccatch ccatchM32793import10 = new Ccatch("2.5.4.4").m32793import();
        f2980const = ccatchM32793import10;
        Ccatch ccatchM32793import11 = new Ccatch("2.5.4.42").m32793import();
        f2985final = ccatchM32793import11;
        Ccatch ccatchM32793import12 = new Ccatch("2.5.4.43").m32793import();
        f3002super = ccatchM32793import12;
        Ccatch ccatchM32793import13 = new Ccatch("2.5.4.44").m32793import();
        f3006throw = ccatchM32793import13;
        Ccatch ccatchM32793import14 = new Ccatch("2.5.4.45").m32793import();
        f3011while = ccatchM32793import14;
        Ccatch ccatchM32793import15 = new Ccatch("2.5.4.15").m32793import();
        f2990import = ccatchM32793import15;
        Ccatch ccatchM32793import16 = new Ccatch("2.5.4.17").m32793import();
        f2993native = ccatchM32793import16;
        Ccatch ccatchM32793import17 = new Ccatch("2.5.4.46").m32793import();
        f2998public = ccatchM32793import17;
        Ccatch ccatchM32793import18 = new Ccatch("2.5.4.65").m32793import();
        f2999return = ccatchM32793import18;
        Ccatch ccatchM32793import19 = new Ccatch("1.3.6.1.5.5.7.9.1").m32793import();
        f3000static = ccatchM32793import19;
        Ccatch ccatchM32793import20 = new Ccatch("1.3.6.1.5.5.7.9.2").m32793import();
        f3003switch = ccatchM32793import20;
        Ccatch ccatchM32793import21 = new Ccatch("1.3.6.1.5.5.7.9.3").m32793import();
        f3007throws = ccatchM32793import21;
        Ccatch ccatchM32793import22 = new Ccatch("1.3.6.1.5.5.7.9.4").m32793import();
        f2982default = ccatchM32793import22;
        Ccatch ccatchM32793import23 = new Ccatch("1.3.6.1.5.5.7.9.5").m32793import();
        f2984extends = ccatchM32793import23;
        Ccatch ccatchM32793import24 = new Ccatch("1.3.36.8.3.14").m32793import();
        f2986finally = ccatchM32793import24;
        Ccatch ccatchM32793import25 = new Ccatch("2.5.4.16").m32793import();
        f2995package = ccatchM32793import25;
        f2996private = new Ccatch("2.5.4.54").m32793import();
        Ccatch ccatch = X509ObjectIdentifiers.id_at_telephoneNumber;
        f2975abstract = ccatch;
        Ccatch ccatch2 = X509ObjectIdentifiers.id_at_name;
        f2981continue = ccatch2;
        Ccatch ccatch3 = X509ObjectIdentifiers.id_at_organizationIdentifier;
        f3001strictfp = ccatch3;
        Ccatch ccatch4 = PKCSObjectIdentifiers.pkcs_9_at_emailAddress;
        f3010volatile = ccatch4;
        Ccatch ccatch5 = PKCSObjectIdentifiers.pkcs_9_at_unstructuredName;
        f2992interface = ccatch5;
        Ccatch ccatch6 = PKCSObjectIdentifiers.pkcs_9_at_unstructuredAddress;
        f2997protected = ccatch6;
        f3008transient = ccatch4;
        Ccatch ccatch7 = new Ccatch("0.9.2342.19200300.100.1.25");
        f2989implements = ccatch7;
        Ccatch ccatch8 = new Ccatch("0.9.2342.19200300.100.1.1");
        f2991instanceof = ccatch8;
        Hashtable hashtable = new Hashtable();
        f3004synchronized = hashtable;
        Hashtable hashtable2 = new Hashtable();
        a = hashtable2;
        hashtable.put(ccatchM32793import, "C");
        hashtable.put(ccatchM32793import2, "O");
        hashtable.put(ccatchM32793import4, ExifInterface.GPS_DIRECTION_TRUE);
        hashtable.put(ccatchM32793import3, "OU");
        hashtable.put(ccatchM32793import5, "CN");
        hashtable.put(ccatchM32793import8, "L");
        hashtable.put(ccatchM32793import9, "ST");
        hashtable.put(ccatchM32793import6, "SERIALNUMBER");
        hashtable.put(ccatch4, ExifInterface.LONGITUDE_EAST);
        hashtable.put(ccatch7, "DC");
        hashtable.put(ccatch8, "UID");
        hashtable.put(ccatchM32793import7, "STREET");
        hashtable.put(ccatchM32793import10, "SURNAME");
        hashtable.put(ccatchM32793import11, "GIVENNAME");
        hashtable.put(ccatchM32793import12, "INITIALS");
        hashtable.put(ccatchM32793import13, "GENERATION");
        hashtable.put(ccatch6, "unstructuredAddress");
        hashtable.put(ccatch5, "unstructuredName");
        hashtable.put(ccatchM32793import14, "UniqueIdentifier");
        hashtable.put(ccatchM32793import17, "DN");
        hashtable.put(ccatchM32793import18, "Pseudonym");
        hashtable.put(ccatchM32793import25, "PostalAddress");
        hashtable.put(ccatchM32793import24, "NameAtBirth");
        hashtable.put(ccatchM32793import22, "CountryOfCitizenship");
        hashtable.put(ccatchM32793import23, "CountryOfResidence");
        hashtable.put(ccatchM32793import21, "Gender");
        hashtable.put(ccatchM32793import20, "PlaceOfBirth");
        hashtable.put(ccatchM32793import19, "DateOfBirth");
        hashtable.put(ccatchM32793import16, "PostalCode");
        hashtable.put(ccatchM32793import15, "BusinessCategory");
        hashtable.put(ccatch, "TelephoneNumber");
        hashtable.put(ccatch2, "Name");
        hashtable.put(ccatch3, "organizationIdentifier");
        hashtable2.put("c", ccatchM32793import);
        hashtable2.put("o", ccatchM32793import2);
        hashtable2.put(com.umeng.analytics.pro.ak.aH, ccatchM32793import4);
        hashtable2.put("ou", ccatchM32793import3);
        hashtable2.put("cn", ccatchM32793import5);
        hashtable2.put("l", ccatchM32793import8);
        hashtable2.put("st", ccatchM32793import9);
        hashtable2.put("sn", ccatchM32793import6);
        hashtable2.put("serialnumber", ccatchM32793import6);
        hashtable2.put("street", ccatchM32793import7);
        hashtable2.put("emailaddress", ccatch4);
        hashtable2.put("dc", ccatch7);
        hashtable2.put("e", ccatch4);
        hashtable2.put("uid", ccatch8);
        hashtable2.put("surname", ccatchM32793import10);
        hashtable2.put("givenname", ccatchM32793import11);
        hashtable2.put("initials", ccatchM32793import12);
        hashtable2.put("generation", ccatchM32793import13);
        hashtable2.put("unstructuredaddress", ccatch6);
        hashtable2.put("unstructuredname", ccatch5);
        hashtable2.put("uniqueidentifier", ccatchM32793import14);
        hashtable2.put("dn", ccatchM32793import17);
        hashtable2.put("pseudonym", ccatchM32793import18);
        hashtable2.put("postaladdress", ccatchM32793import25);
        hashtable2.put("nameofbirth", ccatchM32793import24);
        hashtable2.put("countryofcitizenship", ccatchM32793import22);
        hashtable2.put("countryofresidence", ccatchM32793import23);
        hashtable2.put("gender", ccatchM32793import21);
        hashtable2.put("placeofbirth", ccatchM32793import20);
        hashtable2.put("dateofbirth", ccatchM32793import19);
        hashtable2.put("postalcode", ccatchM32793import16);
        hashtable2.put("businesscategory", ccatchM32793import15);
        hashtable2.put("telephonenumber", ccatch);
        hashtable2.put("name", ccatch2);
        hashtable2.put("organizationidentifier", ccatch3);
        b = new j6();
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public Ccatch attrNameToOID(String str) {
        return dl0.m1394else(str, this.f3012do);
    }

    @Override // android.support.v4.k
    /* renamed from: for, reason: not valid java name */
    public ASN1Encodable mo3732for(Ccatch ccatch, String str) {
        return (ccatch.equals(f3010volatile) || ccatch.equals(f2989implements)) ? new org.bouncycastle.asn1.g(str) : ccatch.equals(f3000static) ? new Ccase(str) : (ccatch.equals(f2987for) || ccatch.equals(f2988goto) || ccatch.equals(f2998public) || ccatch.equals(f2975abstract)) ? new org.bouncycastle.asn1.m(str) : super.mo3732for(ccatch, str);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public oj1[] fromString(String str) {
        return dl0.m1391class(str, this);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String[] oidToAttrNames(Ccatch ccatch) {
        return dl0.m1402this(ccatch, this.f3012do);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String oidToDisplayName(Ccatch ccatch) {
        return (String) f3004synchronized.get(ccatch);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String toString(tg2 tg2Var) {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = true;
        for (oj1 oj1Var : tg2Var.m7888break()) {
            if (z) {
                z = false;
            } else {
                stringBuffer.append(',');
            }
            dl0.m1393do(stringBuffer, oj1Var, this.f3013if);
        }
        return stringBuffer.toString();
    }
}
