package org.bouncycastle.x509;

import android.support.v4.a2;
import android.support.v4.b1;
import android.support.v4.b21;
import android.support.v4.b5;
import android.support.v4.b92;
import android.support.v4.c5;
import android.support.v4.do0;
import android.support.v4.fe1;
import android.support.v4.fg;
import android.support.v4.g80;
import android.support.v4.hn0;
import android.support.v4.i01;
import android.support.v4.m;
import android.support.v4.mv0;
import android.support.v4.q10;
import android.support.v4.r10;
import android.support.v4.r7;
import android.support.v4.tg0;
import android.support.v4.uc2;
import android.support.v4.ug0;
import android.support.v4.vc2;
import android.support.v4.wg0;
import android.support.v4.ya1;
import android.support.v4.ye;
import android.support.v4.yg2;
import android.support.v4.za1;
import android.support.v4.zg1;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyNode;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cnew;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.g;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.asn1.x509.qualified.ETSIQCObjectIdentifiers;
import org.bouncycastle.asn1.x509.qualified.RFC3739QCObjectIdentifiers;
import org.bouncycastle.jce.provider.Cdo;
import org.bouncycastle.jce.provider.Cpackage;

/* renamed from: org.bouncycastle.x509.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends Cfor {

    /* renamed from: interface, reason: not valid java name */
    private static final String f32681interface = "org.bouncycastle.x509.CertPathReviewerMessages";

    /* renamed from: abstract, reason: not valid java name */
    private boolean f32684abstract;

    /* renamed from: default, reason: not valid java name */
    public List[] f32685default;

    /* renamed from: extends, reason: not valid java name */
    public List[] f32686extends;

    /* renamed from: finally, reason: not valid java name */
    public TrustAnchor f32687finally;

    /* renamed from: package, reason: not valid java name */
    public PublicKey f32688package;

    /* renamed from: private, reason: not valid java name */
    public PolicyNode f32689private;

    /* renamed from: public, reason: not valid java name */
    public CertPath f32690public;

    /* renamed from: return, reason: not valid java name */
    public PKIXParameters f32691return;

    /* renamed from: static, reason: not valid java name */
    public Date f32692static;

    /* renamed from: switch, reason: not valid java name */
    public List f32693switch;

    /* renamed from: throws, reason: not valid java name */
    public int f32694throws;

    /* renamed from: continue, reason: not valid java name */
    private static final String f32680continue = Cif.f29314continue.m32795super();

    /* renamed from: strictfp, reason: not valid java name */
    private static final String f32682strictfp = Cif.f29323native.m32795super();

    /* renamed from: volatile, reason: not valid java name */
    private static final String f32683volatile = Cif.f29319finally.m32795super();

    public Cbreak() {
    }

    public Cbreak(CertPath certPath, PKIXParameters pKIXParameters) throws fg {
        l(certPath, pKIXParameters);
    }

    /* renamed from: continue, reason: not valid java name */
    private void m36403continue() throws fg, CertPathValidatorException {
        List<PKIXCertPathChecker> certPathCheckers = this.f32691return.getCertPathCheckers();
        Iterator<PKIXCertPathChecker> it = certPathCheckers.iterator();
        while (it.hasNext()) {
            try {
                try {
                    it.next().init(false);
                } catch (CertPathValidatorException e) {
                    throw new fg(new g80(f32681interface, "CertPathReviewer.certPathCheckerError", new Object[]{e.getMessage(), e, e.getClass().getName()}), e);
                }
            } catch (fg e2) {
                m36412finally(e2.getErrorMessage(), e2.getIndex());
                return;
            }
        }
        for (int size = this.f32693switch.size() - 1; size >= 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.f32693switch.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(Cfor.f32730else);
                criticalExtensionOIDs.remove(Cfor.f32734if);
                criticalExtensionOIDs.remove(Cfor.f32737new);
                criticalExtensionOIDs.remove(Cfor.f32733goto);
                criticalExtensionOIDs.remove(Cfor.f32739this);
                criticalExtensionOIDs.remove(Cfor.f32724break);
                criticalExtensionOIDs.remove(Cfor.f32726catch);
                criticalExtensionOIDs.remove(Cfor.f32732for);
                criticalExtensionOIDs.remove(Cfor.f32741try);
                criticalExtensionOIDs.remove(Cfor.f32725case);
                String str = f32680continue;
                if (criticalExtensionOIDs.contains(str) && n(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(str);
                }
                Iterator<PKIXCertPathChecker> it2 = certPathCheckers.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().check(x509Certificate, criticalExtensionOIDs);
                    } catch (CertPathValidatorException e3) {
                        throw new fg(new g80(f32681interface, "CertPathReviewer.criticalExtensionError", new Object[]{e3.getMessage(), e3, e3.getClass().getName()}), e3.getCause(), this.f32690public, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it3 = criticalExtensionOIDs.iterator();
                    while (it3.hasNext()) {
                        m36412finally(new g80(f32681interface, "CertPathReviewer.unknownCriticalExt", new Object[]{new Ccatch(it3.next())}), size);
                    }
                }
            }
        }
    }

    /* renamed from: default, reason: not valid java name */
    private String m36404default(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr).getHostAddress();
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i != bArr.length; i++) {
                stringBuffer.append(Integer.toHexString(bArr[i] & 255));
                stringBuffer.append(' ');
            }
            return stringBuffer.toString();
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    private X509CRL m36405instanceof(String str) throws Exception {
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals("http") && !url.getProtocol().equals("https")) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return (X509CRL) CertificateFactory.getInstance("X.509", Cdo.PROVIDER_NAME).generateCRL(httpURLConnection.getInputStream());
            }
            throw new Exception(httpURLConnection.getResponseMessage());
        } catch (Exception e) {
            throw new fg(new g80(f32681interface, "CertPathReviewer.loadCrlDistPointError", new Object[]{new uc2(str), e.getMessage(), e, e.getClass().getName()}));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x023f A[Catch: fg -> 0x0607, TryCatch #2 {fg -> 0x0607, blocks: (B:17:0x006f, B:21:0x007f, B:23:0x008c, B:27:0x009c, B:28:0x00a7, B:30:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:37:0x00e1, B:38:0x00ed, B:42:0x00f9, B:45:0x0100, B:46:0x0109, B:48:0x010f, B:50:0x0119, B:53:0x0120, B:55:0x0124, B:95:0x0210, B:97:0x0216, B:98:0x0219, B:100:0x021f, B:102:0x022b, B:105:0x0233, B:106:0x0236, B:107:0x0239, B:109:0x023f, B:110:0x0248, B:112:0x024e, B:120:0x0271, B:121:0x027d, B:122:0x027e, B:124:0x0282, B:126:0x028a, B:127:0x028e, B:129:0x0294, B:132:0x02b6, B:134:0x02c0, B:135:0x02c5, B:136:0x02d1, B:137:0x02d2, B:138:0x02de, B:140:0x02e1, B:141:0x02ee, B:143:0x02f4, B:145:0x031a, B:147:0x0332, B:146:0x0329, B:148:0x0339, B:149:0x033f, B:151:0x0345, B:153:0x034d, B:164:0x0377, B:157:0x0355, B:158:0x0361, B:160:0x0363, B:161:0x0372, B:167:0x0380, B:178:0x039f, B:180:0x03a9, B:181:0x03ad, B:183:0x03b3, B:188:0x03c3, B:191:0x03d4, B:194:0x03e5, B:196:0x03ef, B:207:0x0431, B:199:0x03fb, B:200:0x0409, B:201:0x040a, B:202:0x0418, B:204:0x041a, B:205:0x0428, B:59:0x0133, B:60:0x0137, B:62:0x013d, B:64:0x0153, B:66:0x015d, B:67:0x0162, B:69:0x0168, B:70:0x0176, B:72:0x017c, B:74:0x0188, B:78:0x0195, B:79:0x019b, B:81:0x01a1, B:86:0x01ba, B:75:0x018b, B:77:0x018f, B:90:0x01f3, B:93:0x0203, B:94:0x020f, B:209:0x0440, B:210:0x044d, B:211:0x044e, B:215:0x045f, B:217:0x0469, B:218:0x046e, B:220:0x0474, B:223:0x0482, B:230:0x049b, B:308:0x05ed, B:309:0x05f9, B:233:0x04a6, B:234:0x04b2, B:235:0x04b3, B:237:0x04b9, B:239:0x04c1, B:241:0x04c7, B:244:0x04d1, B:245:0x04d4, B:247:0x04da, B:249:0x04ea, B:250:0x04ee, B:252:0x04f4, B:253:0x04fc, B:254:0x04ff, B:255:0x0504, B:256:0x0508, B:258:0x050e, B:259:0x051c, B:261:0x0524, B:262:0x0527, B:264:0x052d, B:266:0x0539, B:267:0x053d, B:268:0x0540, B:269:0x0543, B:270:0x054f, B:272:0x0554, B:274:0x055e, B:275:0x0561, B:277:0x0567, B:279:0x0577, B:280:0x057b, B:282:0x0581, B:284:0x0591, B:285:0x0595, B:286:0x0598, B:287:0x059b, B:288:0x05a1, B:290:0x05a7, B:292:0x05b9, B:295:0x05c3, B:297:0x05c9, B:298:0x05cc, B:300:0x05d2, B:302:0x05de, B:303:0x05e2, B:304:0x05e5, B:310:0x05fa, B:311:0x0606), top: B:317:0x006f, inners: #1, #4, #5, #6, #7, #8, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0216 A[Catch: fg -> 0x0607, TryCatch #2 {fg -> 0x0607, blocks: (B:17:0x006f, B:21:0x007f, B:23:0x008c, B:27:0x009c, B:28:0x00a7, B:30:0x00ad, B:32:0x00ce, B:33:0x00d6, B:35:0x00dc, B:37:0x00e1, B:38:0x00ed, B:42:0x00f9, B:45:0x0100, B:46:0x0109, B:48:0x010f, B:50:0x0119, B:53:0x0120, B:55:0x0124, B:95:0x0210, B:97:0x0216, B:98:0x0219, B:100:0x021f, B:102:0x022b, B:105:0x0233, B:106:0x0236, B:107:0x0239, B:109:0x023f, B:110:0x0248, B:112:0x024e, B:120:0x0271, B:121:0x027d, B:122:0x027e, B:124:0x0282, B:126:0x028a, B:127:0x028e, B:129:0x0294, B:132:0x02b6, B:134:0x02c0, B:135:0x02c5, B:136:0x02d1, B:137:0x02d2, B:138:0x02de, B:140:0x02e1, B:141:0x02ee, B:143:0x02f4, B:145:0x031a, B:147:0x0332, B:146:0x0329, B:148:0x0339, B:149:0x033f, B:151:0x0345, B:153:0x034d, B:164:0x0377, B:157:0x0355, B:158:0x0361, B:160:0x0363, B:161:0x0372, B:167:0x0380, B:178:0x039f, B:180:0x03a9, B:181:0x03ad, B:183:0x03b3, B:188:0x03c3, B:191:0x03d4, B:194:0x03e5, B:196:0x03ef, B:207:0x0431, B:199:0x03fb, B:200:0x0409, B:201:0x040a, B:202:0x0418, B:204:0x041a, B:205:0x0428, B:59:0x0133, B:60:0x0137, B:62:0x013d, B:64:0x0153, B:66:0x015d, B:67:0x0162, B:69:0x0168, B:70:0x0176, B:72:0x017c, B:74:0x0188, B:78:0x0195, B:79:0x019b, B:81:0x01a1, B:86:0x01ba, B:75:0x018b, B:77:0x018f, B:90:0x01f3, B:93:0x0203, B:94:0x020f, B:209:0x0440, B:210:0x044d, B:211:0x044e, B:215:0x045f, B:217:0x0469, B:218:0x046e, B:220:0x0474, B:223:0x0482, B:230:0x049b, B:308:0x05ed, B:309:0x05f9, B:233:0x04a6, B:234:0x04b2, B:235:0x04b3, B:237:0x04b9, B:239:0x04c1, B:241:0x04c7, B:244:0x04d1, B:245:0x04d4, B:247:0x04da, B:249:0x04ea, B:250:0x04ee, B:252:0x04f4, B:253:0x04fc, B:254:0x04ff, B:255:0x0504, B:256:0x0508, B:258:0x050e, B:259:0x051c, B:261:0x0524, B:262:0x0527, B:264:0x052d, B:266:0x0539, B:267:0x053d, B:268:0x0540, B:269:0x0543, B:270:0x054f, B:272:0x0554, B:274:0x055e, B:275:0x0561, B:277:0x0567, B:279:0x0577, B:280:0x057b, B:282:0x0581, B:284:0x0591, B:285:0x0595, B:286:0x0598, B:287:0x059b, B:288:0x05a1, B:290:0x05a7, B:292:0x05b9, B:295:0x05c3, B:297:0x05c9, B:298:0x05cc, B:300:0x05d2, B:302:0x05de, B:303:0x05e2, B:304:0x05e5, B:310:0x05fa, B:311:0x0606), top: B:317:0x006f, inners: #1, #4, #5, #6, #7, #8, #9, #10 }] */
    /* renamed from: interface, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m36406interface() throws fg {
        int i;
        int i2;
        za1 za1VarM36508static;
        Set<String> set;
        String str;
        int i3;
        int i4;
        HashSet hashSet;
        String str2;
        int i5;
        int iIntValue;
        int iIntValue2;
        String str3;
        HashSet hashSet2;
        HashSet hashSet3;
        String strM32795super;
        int i6;
        int i7;
        Set<String> criticalExtensionOIDs;
        String str4 = "CertPathReviewer.policyExtError";
        Set<String> initialPolicies = this.f32691return.getInitialPolicies();
        int i8 = this.f32694throws + 1;
        ArrayList[] arrayListArr = new ArrayList[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            arrayListArr[i9] = new ArrayList();
        }
        HashSet hashSet4 = new HashSet();
        hashSet4.add("2.5.29.32.0");
        za1 za1Var = new za1(new ArrayList(), 0, hashSet4, null, new HashSet(), "2.5.29.32.0", false);
        arrayListArr[0].add(za1Var);
        if (this.f32691return.isExplicitPolicyRequired()) {
            i2 = 0;
            i = 1;
        } else {
            i = 1;
            i2 = this.f32694throws + 1;
        }
        int i10 = this.f32691return.isAnyPolicyInhibited() ? 0 : this.f32694throws + i;
        int i11 = this.f32691return.isPolicyMappingInhibited() ? 0 : this.f32694throws + i;
        try {
            int size = this.f32693switch.size() - i;
            za1 za1VarM36504native = za1Var;
            X509Certificate x509Certificate = null;
            HashSet hashSet5 = null;
            while (size >= 0) {
                int i12 = this.f32694throws - size;
                X509Certificate x509Certificate2 = (X509Certificate) this.f32693switch.get(size);
                int i13 = i8;
                try {
                    Csuper csuper = (Csuper) Cfor.m36498else(x509Certificate2, Cfor.f32734if);
                    if (csuper == null || za1VarM36504native == null) {
                        set = initialPolicies;
                        str = str4;
                        i3 = i10;
                        i4 = i11;
                        za1VarM36504native = za1VarM36504native;
                    } else {
                        Enumeration enumerationMo33076super = csuper.mo33076super();
                        set = initialPolicies;
                        HashSet hashSet6 = new HashSet();
                        while (enumerationMo33076super.hasMoreElements()) {
                            fe1 fe1VarM2258new = fe1.m2258new(enumerationMo33076super.nextElement());
                            za1 za1Var2 = za1VarM36504native;
                            Ccatch ccatchM2260try = fe1VarM2258new.m2260try();
                            String str5 = str4;
                            hashSet6.add(ccatchM2260try.m32795super());
                            if (!"2.5.29.32.0".equals(ccatchM2260try.m32795super())) {
                                try {
                                    Set setM36494catch = Cfor.m36494catch(fe1VarM2258new.m2259case());
                                    if (!Cfor.m36506public(i12, arrayListArr, ccatchM2260try, setM36494catch)) {
                                        Cfor.m36507return(i12, arrayListArr, ccatchM2260try, setM36494catch);
                                    }
                                } catch (CertPathValidatorException e) {
                                    throw new fg(new g80(f32681interface, "CertPathReviewer.policyQualifierError"), e, this.f32690public, size);
                                }
                            }
                            za1VarM36504native = za1Var2;
                            str4 = str5;
                        }
                        str = str4;
                        za1 za1Var3 = za1VarM36504native;
                        if (hashSet5 == null || hashSet5.contains("2.5.29.32.0")) {
                            hashSet2 = hashSet6;
                        } else {
                            hashSet2 = new HashSet();
                            for (Object obj : hashSet5) {
                                if (hashSet6.contains(obj)) {
                                    hashSet2.add(obj);
                                }
                            }
                        }
                        if (i10 > 0 || (i12 < this.f32694throws && Cfor.m36515while(x509Certificate2))) {
                            Enumeration enumerationMo33076super2 = csuper.mo33076super();
                            while (enumerationMo33076super2.hasMoreElements()) {
                                fe1 fe1VarM2258new2 = fe1.m2258new(enumerationMo33076super2.nextElement());
                                if ("2.5.29.32.0".equals(fe1VarM2258new2.m2260try().m32795super())) {
                                    try {
                                        Set setM36494catch2 = Cfor.m36494catch(fe1VarM2258new2.m2259case());
                                        ArrayList arrayList = arrayListArr[i12 - 1];
                                        hashSet3 = hashSet2;
                                        for (int i14 = 0; i14 < arrayList.size(); i14++) {
                                            za1 za1Var4 = (za1) arrayList.get(i14);
                                            for (Object obj2 : za1Var4.getExpectedPolicies()) {
                                                ArrayList arrayList2 = arrayList;
                                                int i15 = i10;
                                                if (obj2 instanceof String) {
                                                    strM32795super = (String) obj2;
                                                } else if (obj2 instanceof Ccatch) {
                                                    strM32795super = ((Ccatch) obj2).m32795super();
                                                } else {
                                                    arrayList = arrayList2;
                                                    i10 = i15;
                                                }
                                                Iterator children = za1Var4.getChildren();
                                                boolean z = false;
                                                while (children.hasNext()) {
                                                    Iterator it = children;
                                                    if (strM32795super.equals(((za1) children.next()).getValidPolicy())) {
                                                        z = true;
                                                    }
                                                    children = it;
                                                }
                                                if (z) {
                                                    i6 = i11;
                                                } else {
                                                    HashSet hashSet7 = new HashSet();
                                                    hashSet7.add(strM32795super);
                                                    i6 = i11;
                                                    za1 za1Var5 = new za1(new ArrayList(), i12, hashSet7, za1Var4, setM36494catch2, strM32795super, false);
                                                    za1Var4.m10143do(za1Var5);
                                                    arrayListArr[i12].add(za1Var5);
                                                }
                                                arrayList = arrayList2;
                                                i10 = i15;
                                                i11 = i6;
                                            }
                                        }
                                        i3 = i10;
                                        i4 = i11;
                                        za1VarM36504native = za1Var3;
                                        for (i7 = i12 - 1; i7 >= 0; i7--) {
                                            ArrayList arrayList3 = arrayListArr[i7];
                                            for (int i16 = 0; i16 < arrayList3.size(); i16++) {
                                                za1 za1Var6 = (za1) arrayList3.get(i16);
                                                if (!za1Var6.m10145for()) {
                                                    za1 za1VarM36508static2 = Cfor.m36508static(za1VarM36504native, arrayListArr, za1Var6);
                                                    za1VarM36504native = za1VarM36508static2;
                                                    if (za1VarM36508static2 == null) {
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                        criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                        if (criticalExtensionOIDs != null) {
                                            boolean zContains = criticalExtensionOIDs.contains(Cfor.f32734if);
                                            ArrayList arrayList4 = arrayListArr[i12];
                                            for (int i17 = 0; i17 < arrayList4.size(); i17++) {
                                                ((za1) arrayList4.get(i17)).m10149try(zContains);
                                            }
                                        }
                                        hashSet5 = hashSet3;
                                    } catch (CertPathValidatorException e2) {
                                        throw new fg(new g80(f32681interface, "CertPathReviewer.policyQualifierError"), e2, this.f32690public, size);
                                    }
                                }
                            }
                            i3 = i10;
                            i4 = i11;
                            hashSet3 = hashSet2;
                            za1VarM36504native = za1Var3;
                            while (i7 >= 0) {
                            }
                            criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs != null) {
                            }
                            hashSet5 = hashSet3;
                        } else {
                            i3 = i10;
                            i4 = i11;
                            hashSet3 = hashSet2;
                            za1VarM36504native = za1Var3;
                            while (i7 >= 0) {
                            }
                            criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs != null) {
                            }
                            hashSet5 = hashSet3;
                        }
                    }
                    if (csuper == null) {
                        za1VarM36504native = null;
                    }
                    if (i2 <= 0 && za1VarM36504native == null) {
                        throw new fg(new g80(f32681interface, "CertPathReviewer.noValidPolicyTree"));
                    }
                    if (i12 != this.f32694throws) {
                        try {
                            Cfinal cfinalM36498else = Cfor.m36498else(x509Certificate2, Cfor.f32737new);
                            if (cfinalM36498else != null) {
                                Csuper csuper2 = (Csuper) cfinalM36498else;
                                int i18 = 0;
                                while (i18 < csuper2.size()) {
                                    Csuper csuper3 = (Csuper) csuper2.mo33075final(i18);
                                    Ccatch ccatch = (Ccatch) csuper3.mo33075final(0);
                                    Ccatch ccatch2 = (Ccatch) csuper3.mo33075final(1);
                                    boolean zEquals = "2.5.29.32.0".equals(ccatch.m32795super());
                                    Csuper csuper4 = csuper2;
                                    if (zEquals) {
                                        throw new fg(new g80(f32681interface, "CertPathReviewer.invalidPolicyMapping"), this.f32690public, size);
                                    }
                                    if ("2.5.29.32.0".equals(ccatch2.m32795super())) {
                                        throw new fg(new g80(f32681interface, "CertPathReviewer.invalidPolicyMapping"), this.f32690public, size);
                                    }
                                    i18++;
                                    csuper2 = csuper4;
                                }
                            }
                            if (cfinalM36498else != null) {
                                Csuper csuper5 = (Csuper) cfinalM36498else;
                                HashMap map = new HashMap();
                                HashSet<String> hashSet8 = new HashSet();
                                int i19 = 0;
                                while (i19 < csuper5.size()) {
                                    Csuper csuper6 = (Csuper) csuper5.mo33075final(i19);
                                    Csuper csuper7 = csuper5;
                                    String strM32795super2 = ((Ccatch) csuper6.mo33075final(0)).m32795super();
                                    HashSet hashSet9 = hashSet5;
                                    String strM32795super3 = ((Ccatch) csuper6.mo33075final(1)).m32795super();
                                    if (map.containsKey(strM32795super2)) {
                                        ((Set) map.get(strM32795super2)).add(strM32795super3);
                                    } else {
                                        HashSet hashSet10 = new HashSet();
                                        hashSet10.add(strM32795super3);
                                        map.put(strM32795super2, hashSet10);
                                        hashSet8.add(strM32795super2);
                                    }
                                    i19++;
                                    csuper5 = csuper7;
                                    hashSet5 = hashSet9;
                                }
                                hashSet = hashSet5;
                                for (String str6 : hashSet8) {
                                    if (i4 > 0) {
                                        try {
                                            Cfor.m36503import(i12, arrayListArr, str6, map, x509Certificate2);
                                            str3 = str;
                                        } catch (a2 e3) {
                                            throw new fg(new g80(f32681interface, str), e3, this.f32690public, size);
                                        } catch (CertPathValidatorException e4) {
                                            throw new fg(new g80(f32681interface, "CertPathReviewer.policyQualifierError"), e4, this.f32690public, size);
                                        }
                                    } else {
                                        str3 = str;
                                        if (i4 <= 0) {
                                            za1VarM36504native = Cfor.m36504native(i12, arrayListArr, str6, za1VarM36504native);
                                        }
                                    }
                                    str = str3;
                                }
                            } else {
                                hashSet = hashSet5;
                            }
                            str2 = str;
                            if (Cfor.m36515while(x509Certificate2)) {
                                i5 = i3;
                                i11 = i4;
                            } else {
                                if (i2 != 0) {
                                    i2--;
                                }
                                i11 = i4 != 0 ? i4 - 1 : i4;
                                i5 = i3 != 0 ? i3 - 1 : i3;
                            }
                            try {
                                Csuper csuper8 = (Csuper) Cfor.m36498else(x509Certificate2, Cfor.f32726catch);
                                if (csuper8 != null) {
                                    Enumeration enumerationMo33076super3 = csuper8.mo33076super();
                                    while (enumerationMo33076super3.hasMoreElements()) {
                                        Cimport cimport = (Cimport) enumerationMo33076super3.nextElement();
                                        int tagNo = cimport.getTagNo();
                                        if (tagNo == 0) {
                                            int iIntValue3 = Cgoto.m33041class(cimport, false).m33044final().intValue();
                                            if (iIntValue3 < i2) {
                                                i2 = iIntValue3;
                                            }
                                        } else if (tagNo == 1 && (iIntValue2 = Cgoto.m33041class(cimport, false).m33044final().intValue()) < i11) {
                                            i11 = iIntValue2;
                                        }
                                    }
                                }
                                try {
                                    Cgoto cgoto = (Cgoto) Cfor.m36498else(x509Certificate2, Cfor.f32733goto);
                                    if (cgoto != null && (iIntValue = cgoto.m33044final().intValue()) < i5) {
                                        i5 = iIntValue;
                                    }
                                } catch (a2 unused) {
                                    throw new fg(new g80(f32681interface, "CertPathReviewer.policyInhibitExtError"), this.f32690public, size);
                                }
                            } catch (a2 unused2) {
                                throw new fg(new g80(f32681interface, "CertPathReviewer.policyConstExtError"), this.f32690public, size);
                            }
                        } catch (a2 e5) {
                            throw new fg(new g80(f32681interface, "CertPathReviewer.policyMapExtError"), e5, this.f32690public, size);
                        }
                    } else {
                        hashSet = hashSet5;
                        str2 = str;
                        i5 = i3;
                        i11 = i4;
                    }
                    size--;
                    x509Certificate = x509Certificate2;
                    str4 = str2;
                    hashSet5 = hashSet;
                    i8 = i13;
                    i10 = i5;
                    initialPolicies = set;
                } catch (a2 e6) {
                    throw new fg(new g80(f32681interface, str4), e6, this.f32690public, size);
                }
            }
            Set<String> set2 = initialPolicies;
            int i20 = i8;
            za1 za1Var7 = za1VarM36504native;
            if (!Cfor.m36515while(x509Certificate) && i2 > 0) {
                i2--;
            }
            try {
                Csuper csuper9 = (Csuper) Cfor.m36498else(x509Certificate, Cfor.f32726catch);
                if (csuper9 != null) {
                    Enumeration enumerationMo33076super4 = csuper9.mo33076super();
                    int i21 = i2;
                    while (enumerationMo33076super4.hasMoreElements()) {
                        Cimport cimport2 = (Cimport) enumerationMo33076super4.nextElement();
                        if (cimport2.getTagNo() == 0 && Cgoto.m33041class(cimport2, false).m33044final().intValue() == 0) {
                            i21 = 0;
                        }
                    }
                    i2 = i21;
                }
                if (za1Var7 == null) {
                    if (this.f32691return.isExplicitPolicyRequired()) {
                        throw new fg(new g80(f32681interface, "CertPathReviewer.explicitPolicy"), this.f32690public, size);
                    }
                    za1VarM36508static = null;
                } else if (!Cfor.m36509super(set2)) {
                    HashSet<za1> hashSet11 = new HashSet();
                    for (int i22 = 0; i22 < i20; i22++) {
                        ArrayList arrayList5 = arrayListArr[i22];
                        for (int i23 = 0; i23 < arrayList5.size(); i23++) {
                            za1 za1Var8 = (za1) arrayList5.get(i23);
                            if ("2.5.29.32.0".equals(za1Var8.getValidPolicy())) {
                                Iterator children2 = za1Var8.getChildren();
                                while (children2.hasNext()) {
                                    za1 za1Var9 = (za1) children2.next();
                                    if (!"2.5.29.32.0".equals(za1Var9.getValidPolicy())) {
                                        hashSet11.add(za1Var9);
                                    }
                                }
                            }
                        }
                    }
                    za1VarM36508static = za1Var7;
                    for (za1 za1Var10 : hashSet11) {
                        Set<String> set3 = set2;
                        if (!set3.contains(za1Var10.getValidPolicy())) {
                            za1VarM36508static = Cfor.m36508static(za1VarM36508static, arrayListArr, za1Var10);
                        }
                        set2 = set3;
                    }
                    if (za1VarM36508static != null) {
                        for (int i24 = this.f32694throws - 1; i24 >= 0; i24--) {
                            ArrayList arrayList6 = arrayListArr[i24];
                            for (int i25 = 0; i25 < arrayList6.size(); i25++) {
                                za1 za1Var11 = (za1) arrayList6.get(i25);
                                if (!za1Var11.m10145for()) {
                                    za1VarM36508static = Cfor.m36508static(za1VarM36508static, arrayListArr, za1Var11);
                                }
                            }
                        }
                    }
                } else if (!this.f32691return.isExplicitPolicyRequired()) {
                    za1VarM36508static = za1Var7;
                } else {
                    if (hashSet5.isEmpty()) {
                        throw new fg(new g80(f32681interface, "CertPathReviewer.explicitPolicy"), this.f32690public, size);
                    }
                    HashSet hashSet12 = new HashSet();
                    int i26 = 0;
                    while (true) {
                        int i27 = i20;
                        if (i26 >= i27) {
                            break;
                        }
                        ArrayList arrayList7 = arrayListArr[i26];
                        for (int i28 = 0; i28 < arrayList7.size(); i28++) {
                            za1 za1Var12 = (za1) arrayList7.get(i28);
                            if ("2.5.29.32.0".equals(za1Var12.getValidPolicy())) {
                                Iterator children3 = za1Var12.getChildren();
                                while (children3.hasNext()) {
                                    hashSet12.add(children3.next());
                                }
                            }
                        }
                        i26++;
                        i20 = i27;
                    }
                    Iterator it2 = hashSet12.iterator();
                    while (it2.hasNext()) {
                        hashSet5.contains(((za1) it2.next()).getValidPolicy());
                    }
                    za1VarM36508static = za1Var7;
                    for (int i29 = this.f32694throws - 1; i29 >= 0; i29--) {
                        ArrayList arrayList8 = arrayListArr[i29];
                        for (int i30 = 0; i30 < arrayList8.size(); i30++) {
                            za1 za1Var13 = (za1) arrayList8.get(i30);
                            if (!za1Var13.m10145for()) {
                                za1VarM36508static = Cfor.m36508static(za1VarM36508static, arrayListArr, za1Var13);
                            }
                        }
                    }
                }
                if (i2 <= 0 && za1VarM36508static == null) {
                    throw new fg(new g80(f32681interface, "CertPathReviewer.invalidPolicy"));
                }
            } catch (a2 unused3) {
                throw new fg(new g80(f32681interface, "CertPathReviewer.policyConstExtError"), this.f32690public, size);
            }
        } catch (fg e7) {
            m36412finally(e7.getErrorMessage(), e7.getIndex());
        }
    }

    private boolean n(X509Certificate x509Certificate, int i) {
        g80 g80Var;
        try {
            Csuper csuper = (Csuper) Cfor.m36498else(x509Certificate, f32680continue);
            boolean z = false;
            for (int i2 = 0; i2 < csuper.size(); i2++) {
                zg1 zg1VarM10192new = zg1.m10192new(csuper.mo33075final(i2));
                if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcCompliance.equals(zg1VarM10192new.m10194try())) {
                    g80Var = new g80(f32681interface, "CertPathReviewer.QcEuCompliance");
                } else {
                    if (!RFC3739QCObjectIdentifiers.id_qcs_pkixQCSyntax_v1.equals(zg1VarM10192new.m10194try())) {
                        if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcSSCD.equals(zg1VarM10192new.m10194try())) {
                            g80Var = new g80(f32681interface, "CertPathReviewer.QcSSCD");
                        } else if (ETSIQCObjectIdentifiers.id_etsi_qcs_LimiteValue.equals(zg1VarM10192new.m10194try())) {
                            i01 i01VarM3181else = i01.m3181else(zg1VarM10192new.m10193case());
                            i01VarM3181else.m3184try();
                            double dDoubleValue = i01VarM3181else.m3183new().doubleValue() * Math.pow(10.0d, i01VarM3181else.m3182case().doubleValue());
                            m36415private(i01VarM3181else.m3184try().m10252else() ? new g80(f32681interface, "CertPathReviewer.QcLimitValueAlpha", new Object[]{i01VarM3181else.m3184try().m10253new(), new b92(new Double(dDoubleValue)), i01VarM3181else}) : new g80(f32681interface, "CertPathReviewer.QcLimitValueNum", new Object[]{hn0.m3072for(i01VarM3181else.m3184try().m10251case()), new b92(new Double(dDoubleValue)), i01VarM3181else}), i);
                        } else {
                            m36415private(new g80(f32681interface, "CertPathReviewer.QcUnknownStatement", new Object[]{zg1VarM10192new.m10194try(), new uc2(zg1VarM10192new)}), i);
                            z = true;
                        }
                    }
                }
                m36415private(g80Var, i);
            }
            return true ^ z;
        } catch (a2 unused) {
            m36412finally(new g80(f32681interface, "CertPathReviewer.QcStatementExtError"), i);
            return false;
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m36407strictfp() throws fg {
        Cpackage cpackage = new Cpackage();
        try {
            for (int size = this.f32693switch.size() - 1; size > 0; size--) {
                X509Certificate x509Certificate = (X509Certificate) this.f32693switch.get(size);
                if (!Cfor.m36515while(x509Certificate)) {
                    X500Principal x500PrincipalM36496const = Cfor.m36496const(x509Certificate);
                    try {
                        Csuper csuper = (Csuper) new Celse(new ByteArrayInputStream(x500PrincipalM36496const.getEncoded())).m33002break();
                        try {
                            cpackage.m35089catch(csuper);
                            try {
                                cpackage.m35093new(csuper);
                                try {
                                    Csuper csuper2 = (Csuper) Cfor.m36498else(x509Certificate, Cfor.f32741try);
                                    if (csuper2 != null) {
                                        for (int i = 0; i < csuper2.size(); i++) {
                                            tg0 tg0VarM7877try = tg0.m7877try(csuper2.mo33075final(i));
                                            try {
                                                cpackage.m35096this(tg0VarM7877try);
                                                cpackage.m35092if(tg0VarM7877try);
                                            } catch (ya1 e) {
                                                throw new fg(new g80(f32681interface, "CertPathReviewer.notPermittedEmail", new Object[]{new uc2(tg0VarM7877try)}), e, this.f32690public, size);
                                            }
                                        }
                                    }
                                } catch (a2 e2) {
                                    throw new fg(new g80(f32681interface, "CertPathReviewer.subjAltNameExtError"), e2, this.f32690public, size);
                                }
                            } catch (ya1 e3) {
                                throw new fg(new g80(f32681interface, "CertPathReviewer.excludedDN", new Object[]{new uc2(x500PrincipalM36496const.getName())}), e3, this.f32690public, size);
                            }
                        } catch (ya1 e4) {
                            throw new fg(new g80(f32681interface, "CertPathReviewer.notPermittedDN", new Object[]{new uc2(x500PrincipalM36496const.getName())}), e4, this.f32690public, size);
                        }
                    } catch (IOException e5) {
                        throw new fg(new g80(f32681interface, "CertPathReviewer.ncSubjectNameError", new Object[]{new uc2(x500PrincipalM36496const)}), e5, this.f32690public, size);
                    }
                }
                try {
                    Csuper csuper3 = (Csuper) Cfor.m36498else(x509Certificate, Cfor.f32725case);
                    if (csuper3 != null) {
                        b21 b21VarM422else = b21.m422else(csuper3);
                        wg0[] wg0VarArrM426goto = b21VarM422else.m426goto();
                        if (wg0VarArrM426goto != null) {
                            cpackage.m35095strictfp(wg0VarArrM426goto);
                        }
                        wg0[] wg0VarArrM425case = b21VarM422else.m425case();
                        if (wg0VarArrM425case != null) {
                            for (int i2 = 0; i2 != wg0VarArrM425case.length; i2++) {
                                cpackage.m35091do(wg0VarArrM425case[i2]);
                            }
                        }
                    }
                } catch (a2 e6) {
                    throw new fg(new g80(f32681interface, "CertPathReviewer.ncExtError"), e6, this.f32690public, size);
                }
            }
        } catch (fg e7) {
            m36412finally(e7.getErrorMessage(), e7.getIndex());
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:55|(2:166|57)(2:62|(2:170|64)(3:68|(2:72|(1:74))|75))|(2:178|76)|81|(16:172|83|(1:85)(1:87)|160|89|(1:91)(1:94)|95|(2:98|96)|184|99|(2:102|100)|174|103|104|168|105)(1:112)|(1:117)(1:116)|118|(1:139)(7:120|(1:124)|164|126|(2:128|(1:130))(1:131)|134|(1:138))|140|158|141|162|142|183|146) */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x03e8, code lost:
    
        r7 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x03ea, code lost:
    
        m36412finally(new android.support.v4.g80(org.bouncycastle.x509.Cbreak.f32681interface, "CertPathReviewer.pubKeyError"), r13);
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0289 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0176  */
    /* renamed from: transient, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m36408transient() throws Exception {
        TrustAnchor trustAnchor;
        TrustAnchor trustAnchor2;
        X500Principal x500PrincipalM36496const;
        X509Certificate trustedCert;
        PublicKey publicKey;
        int size;
        g80 g80Var;
        g80 g80Var2;
        int i;
        int i2;
        PublicKey publicKey2;
        X500Principal x500Principal;
        TrustAnchor trustAnchor3;
        X509Certificate x509Certificate;
        Cfinal cfinalM36498else;
        Cfinal cfinalM36498else2;
        c5 c5VarM743else;
        ug0 ug0VarM748try;
        boolean[] keyUsage;
        X509Certificate x509Certificate2;
        Collection collectionK;
        char c = 2;
        char c2 = 0;
        char c3 = 1;
        m36414package(new g80(f32681interface, "CertPathReviewer.certPathValidDate", new Object[]{new b92(this.f32692static), new b92(new Date())}));
        try {
            List list = this.f32693switch;
            x509Certificate2 = (X509Certificate) list.get(list.size() - 1);
            collectionK = k(x509Certificate2, this.f32691return.getTrustAnchors());
        } catch (fg e) {
            e = e;
            trustAnchor = null;
        } catch (Throwable th) {
            th = th;
            trustAnchor = null;
        }
        if (collectionK.size() > 1) {
            m36411extends(new g80(f32681interface, "CertPathReviewer.conflictingTrustAnchors", new Object[]{hn0.m3072for(collectionK.size()), new uc2(x509Certificate2.getIssuerX500Principal())}));
        } else {
            if (!collectionK.isEmpty()) {
                trustAnchor = (TrustAnchor) collectionK.iterator().next();
                try {
                    try {
                        try {
                            Cfor.m36513throws(x509Certificate2, trustAnchor.getTrustedCert() != null ? trustAnchor.getTrustedCert().getPublicKey() : trustAnchor.getCAPublicKey(), this.f32691return.getSigProvider());
                        } catch (SignatureException unused) {
                            m36411extends(new g80(f32681interface, "CertPathReviewer.trustButInvalidCert"));
                        } catch (Exception unused2) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        m36411extends(new g80(f32681interface, "CertPathReviewer.unknown", new Object[]{new uc2(th.getMessage()), new uc2(th)}));
                        trustAnchor2 = trustAnchor;
                        if (trustAnchor2 == null) {
                        }
                        if (trustAnchor2 == null) {
                        }
                        X509Certificate x509Certificate3 = trustedCert;
                        X500Principal subjectX500Principal = x500PrincipalM36496const;
                        PublicKey publicKeyM36511this = publicKey;
                        size = this.f32693switch.size() - 1;
                        while (size >= 0) {
                        }
                        this.f32687finally = trustAnchor2;
                        this.f32688package = publicKeyM36511this;
                    }
                } catch (fg e2) {
                    e = e2;
                    m36411extends(e.getErrorMessage());
                    trustAnchor2 = trustAnchor;
                    if (trustAnchor2 == null) {
                    }
                    if (trustAnchor2 == null) {
                    }
                    X509Certificate x509Certificate32 = trustedCert;
                    X500Principal subjectX500Principal2 = x500PrincipalM36496const;
                    PublicKey publicKeyM36511this2 = publicKey;
                    size = this.f32693switch.size() - 1;
                    while (size >= 0) {
                    }
                    this.f32687finally = trustAnchor2;
                    this.f32688package = publicKeyM36511this2;
                }
                trustAnchor2 = trustAnchor;
                if (trustAnchor2 == null) {
                    X509Certificate trustedCert2 = trustAnchor2.getTrustedCert();
                    try {
                        x500PrincipalM36496const = trustedCert2 != null ? Cfor.m36496const(trustedCert2) : new X500Principal(trustAnchor2.getCAName());
                    } catch (IllegalArgumentException unused3) {
                        m36411extends(new g80(f32681interface, "CertPathReviewer.trustDNInvalid", new Object[]{new uc2(trustAnchor2.getCAName())}));
                        x500PrincipalM36496const = null;
                    }
                    if (trustedCert2 != null && (keyUsage = trustedCert2.getKeyUsage()) != null && !keyUsage[5]) {
                        m36414package(new g80(f32681interface, "CertPathReviewer.trustKeyUsage"));
                    }
                } else {
                    x500PrincipalM36496const = null;
                }
                if (trustAnchor2 == null) {
                    trustedCert = trustAnchor2.getTrustedCert();
                    publicKey = trustedCert != null ? trustedCert.getPublicKey() : trustAnchor2.getCAPublicKey();
                    try {
                        b1 b1VarM36505new = Cfor.m36505new(publicKey);
                        b1VarM36505new.m420new();
                        b1VarM36505new.m419else();
                    } catch (CertPathValidatorException unused4) {
                        m36411extends(new g80(f32681interface, "CertPathReviewer.trustPubKeyError"));
                    }
                } else {
                    trustedCert = null;
                    publicKey = null;
                }
                X509Certificate x509Certificate322 = trustedCert;
                X500Principal subjectX500Principal22 = x500PrincipalM36496const;
                PublicKey publicKeyM36511this22 = publicKey;
                size = this.f32693switch.size() - 1;
                while (size >= 0) {
                    int i3 = this.f32694throws - size;
                    X509Certificate x509Certificate4 = (X509Certificate) this.f32693switch.get(size);
                    if (publicKeyM36511this22 != null) {
                        try {
                            Cfor.m36513throws(x509Certificate4, publicKeyM36511this22, this.f32691return.getSigProvider());
                        } catch (GeneralSecurityException e3) {
                            Object[] objArr = new Object[3];
                            objArr[c2] = e3.getMessage();
                            objArr[c3] = e3;
                            objArr[c] = e3.getClass().getName();
                            g80Var = new g80(f32681interface, "CertPathReviewer.signatureNotVerified", objArr);
                            m36412finally(g80Var, size);
                            x509Certificate4.checkValidity(this.f32692static);
                            if (this.f32691return.isRevocationEnabled()) {
                            }
                            if (x500Principal == null) {
                            }
                            if (i != this.f32694throws) {
                            }
                            subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                            publicKeyM36511this22 = Cfor.m36511this(this.f32693switch, i2);
                            b1 b1VarM36505new2 = Cfor.m36505new(publicKeyM36511this22);
                            b1VarM36505new2.m420new();
                            b1VarM36505new2.m419else();
                            size = i2 - 1;
                            trustAnchor2 = trustAnchor3;
                            x509Certificate322 = x509Certificate;
                            c = 2;
                            c2 = 0;
                            c3 = 1;
                        }
                    } else if (Cfor.m36515while(x509Certificate4)) {
                        try {
                            Cfor.m36513throws(x509Certificate4, x509Certificate4.getPublicKey(), this.f32691return.getSigProvider());
                            m36412finally(new g80(f32681interface, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"), size);
                        } catch (GeneralSecurityException e4) {
                            Object[] objArr2 = new Object[3];
                            objArr2[c2] = e4.getMessage();
                            objArr2[c3] = e4;
                            objArr2[c] = e4.getClass().getName();
                            g80Var = new g80(f32681interface, "CertPathReviewer.signatureNotVerified", objArr2);
                            m36412finally(g80Var, size);
                            x509Certificate4.checkValidity(this.f32692static);
                            if (this.f32691return.isRevocationEnabled()) {
                            }
                            if (x500Principal == null) {
                            }
                            if (i != this.f32694throws) {
                            }
                            subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                            publicKeyM36511this22 = Cfor.m36511this(this.f32693switch, i2);
                            b1 b1VarM36505new22 = Cfor.m36505new(publicKeyM36511this22);
                            b1VarM36505new22.m420new();
                            b1VarM36505new22.m419else();
                            size = i2 - 1;
                            trustAnchor2 = trustAnchor3;
                            x509Certificate322 = x509Certificate;
                            c = 2;
                            c2 = 0;
                            c3 = 1;
                        }
                    } else {
                        g80 g80Var3 = new g80(f32681interface, "CertPathReviewer.NoIssuerPublicKey");
                        byte[] extensionValue = x509Certificate4.getExtensionValue(Cif.f29330static.m32795super());
                        if (extensionValue != null && (ug0VarM748try = (c5VarM743else = c5.m743else(Cclass.m32796catch(extensionValue).mo5490const())).m748try()) != null) {
                            tg0 tg0Var = ug0VarM748try.m8440goto()[c2];
                            BigInteger bigIntegerM746case = c5VarM743else.m746case();
                            if (bigIntegerM746case != null) {
                                Object[] objArr3 = new Object[7];
                                objArr3[c2] = new mv0(f32681interface, "missingIssuer");
                                objArr3[1] = " \"";
                                objArr3[2] = tg0Var;
                                objArr3[3] = "\" ";
                                objArr3[4] = new mv0(f32681interface, "missingSerial");
                                objArr3[5] = org.apache.commons.lang3.Cclass.f28652do;
                                objArr3[6] = bigIntegerM746case;
                                g80Var3.m5787class(objArr3);
                            }
                        }
                        m36412finally(g80Var3, size);
                    }
                    try {
                        x509Certificate4.checkValidity(this.f32692static);
                    } catch (CertificateExpiredException unused5) {
                        Object[] objArr4 = new Object[1];
                        objArr4[c2] = new b92(x509Certificate4.getNotAfter());
                        g80Var2 = new g80(f32681interface, "CertPathReviewer.certificateExpired", objArr4);
                        m36412finally(g80Var2, size);
                        if (this.f32691return.isRevocationEnabled()) {
                        }
                        if (x500Principal == null) {
                        }
                        if (i != this.f32694throws) {
                        }
                        subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                        publicKeyM36511this22 = Cfor.m36511this(this.f32693switch, i2);
                        b1 b1VarM36505new222 = Cfor.m36505new(publicKeyM36511this22);
                        b1VarM36505new222.m420new();
                        b1VarM36505new222.m419else();
                        size = i2 - 1;
                        trustAnchor2 = trustAnchor3;
                        x509Certificate322 = x509Certificate;
                        c = 2;
                        c2 = 0;
                        c3 = 1;
                    } catch (CertificateNotYetValidException unused6) {
                        Object[] objArr5 = new Object[1];
                        objArr5[c2] = new b92(x509Certificate4.getNotBefore());
                        g80Var2 = new g80(f32681interface, "CertPathReviewer.certificateNotYetValid", objArr5);
                        m36412finally(g80Var2, size);
                        if (this.f32691return.isRevocationEnabled()) {
                        }
                        if (x500Principal == null) {
                        }
                        if (i != this.f32694throws) {
                        }
                        subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                        publicKeyM36511this22 = Cfor.m36511this(this.f32693switch, i2);
                        b1 b1VarM36505new2222 = Cfor.m36505new(publicKeyM36511this22);
                        b1VarM36505new2222.m420new();
                        b1VarM36505new2222.m419else();
                        size = i2 - 1;
                        trustAnchor2 = trustAnchor3;
                        x509Certificate322 = x509Certificate;
                        c = 2;
                        c2 = 0;
                        c3 = 1;
                    }
                    if (this.f32691return.isRevocationEnabled()) {
                        try {
                            cfinalM36498else2 = Cfor.m36498else(x509Certificate4, f32682strictfp);
                        } catch (a2 unused7) {
                            m36412finally(new g80(f32681interface, "CertPathReviewer.crlDistPtExtError"), size);
                        }
                        ye yeVarM9822case = cfinalM36498else2 != null ? ye.m9822case(cfinalM36498else2) : null;
                        try {
                            cfinalM36498else = Cfor.m36498else(x509Certificate4, f32683volatile);
                        } catch (a2 unused8) {
                            m36412finally(new g80(f32681interface, "CertPathReviewer.crlAuthInfoAccError"), size);
                        }
                        b5 b5VarM443case = cfinalM36498else != null ? b5.m443case(cfinalM36498else) : null;
                        Vector vectorM36417synchronized = m36417synchronized(yeVarM9822case);
                        Vector vectorG = g(b5VarM443case);
                        Iterator it = vectorM36417synchronized.iterator();
                        while (it.hasNext()) {
                            Object[] objArr6 = new Object[1];
                            objArr6[c2] = new vc2(it.next());
                            m36415private(new g80(f32681interface, "CertPathReviewer.crlDistPoint", objArr6), size);
                            x509Certificate4 = x509Certificate4;
                        }
                        X509Certificate x509Certificate5 = x509Certificate4;
                        Iterator it2 = vectorG.iterator();
                        while (it2.hasNext()) {
                            Object[] objArr7 = new Object[1];
                            objArr7[c2] = new vc2(it2.next());
                            m36415private(new g80(f32681interface, "CertPathReviewer.ocspLocation", objArr7), size);
                        }
                        try {
                            x509Certificate = x509Certificate5;
                            i = i3;
                            i2 = size;
                            publicKey2 = publicKeyM36511this22;
                            x500Principal = subjectX500Principal22;
                            trustAnchor3 = trustAnchor2;
                            try {
                                m36416protected(this.f32691return, x509Certificate, this.f32692static, x509Certificate322, publicKeyM36511this22, vectorM36417synchronized, vectorG, i2);
                            } catch (fg e5) {
                                e = e5;
                                m36412finally(e.getErrorMessage(), i2);
                                if (x500Principal == null) {
                                }
                                if (i != this.f32694throws) {
                                }
                                subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                                publicKeyM36511this22 = Cfor.m36511this(this.f32693switch, i2);
                                b1 b1VarM36505new22222 = Cfor.m36505new(publicKeyM36511this22);
                                b1VarM36505new22222.m420new();
                                b1VarM36505new22222.m419else();
                                size = i2 - 1;
                                trustAnchor2 = trustAnchor3;
                                x509Certificate322 = x509Certificate;
                                c = 2;
                                c2 = 0;
                                c3 = 1;
                            }
                        } catch (fg e6) {
                            e = e6;
                            i = i3;
                            i2 = size;
                            publicKey2 = publicKeyM36511this22;
                            x500Principal = subjectX500Principal22;
                            trustAnchor3 = trustAnchor2;
                            x509Certificate = x509Certificate5;
                        }
                    } else {
                        x509Certificate = x509Certificate4;
                        i = i3;
                        i2 = size;
                        publicKey2 = publicKeyM36511this22;
                        x500Principal = subjectX500Principal22;
                        trustAnchor3 = trustAnchor2;
                    }
                    if (x500Principal == null && !x509Certificate.getIssuerX500Principal().equals(x500Principal)) {
                        m36412finally(new g80(f32681interface, "CertPathReviewer.certWrongIssuer", new Object[]{x500Principal.getName(), x509Certificate.getIssuerX500Principal().getName()}), i2);
                    }
                    if (i != this.f32694throws) {
                        if (x509Certificate != null && x509Certificate.getVersion() == 1) {
                            m36412finally(new g80(f32681interface, "CertPathReviewer.noCACert"), i2);
                        }
                        try {
                            r7 r7VarM6795try = r7.m6795try(Cfor.m36498else(x509Certificate, Cfor.f32732for));
                            if (r7VarM6795try == null) {
                                m36412finally(new g80(f32681interface, "CertPathReviewer.noBasicConstraints"), i2);
                            } else if (!r7VarM6795try.m6797goto()) {
                                m36412finally(new g80(f32681interface, "CertPathReviewer.noCACert"), i2);
                            }
                        } catch (a2 unused9) {
                            m36412finally(new g80(f32681interface, "CertPathReviewer.errorProcesingBC"), i2);
                        }
                        boolean[] keyUsage2 = x509Certificate.getKeyUsage();
                        if (keyUsage2 != null && !keyUsage2[5]) {
                            m36412finally(new g80(f32681interface, "CertPathReviewer.noCertSign"), i2);
                        }
                    }
                    subjectX500Principal22 = x509Certificate.getSubjectX500Principal();
                    publicKeyM36511this22 = Cfor.m36511this(this.f32693switch, i2);
                    b1 b1VarM36505new222222 = Cfor.m36505new(publicKeyM36511this22);
                    b1VarM36505new222222.m420new();
                    b1VarM36505new222222.m419else();
                    size = i2 - 1;
                    trustAnchor2 = trustAnchor3;
                    x509Certificate322 = x509Certificate;
                    c = 2;
                    c2 = 0;
                    c3 = 1;
                }
                this.f32687finally = trustAnchor2;
                this.f32688package = publicKeyM36511this22;
            }
            m36411extends(new g80(f32681interface, "CertPathReviewer.noTrustAnchorFound", new Object[]{new uc2(x509Certificate2.getIssuerX500Principal()), hn0.m3072for(this.f32691return.getTrustAnchors().size())}));
        }
        trustAnchor = null;
        trustAnchor2 = trustAnchor;
        if (trustAnchor2 == null) {
        }
        if (trustAnchor2 == null) {
        }
        X509Certificate x509Certificate3222 = trustedCert;
        X500Principal subjectX500Principal222 = x500PrincipalM36496const;
        PublicKey publicKeyM36511this222 = publicKey;
        size = this.f32693switch.size() - 1;
        while (size >= 0) {
        }
        this.f32687finally = trustAnchor2;
        this.f32688package = publicKeyM36511this222;
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m36409volatile() {
        r7 r7VarM6795try;
        BigInteger bigIntegerM6796else;
        int iIntValue;
        int i = this.f32694throws;
        int i2 = 0;
        for (int size = this.f32693switch.size() - 1; size > 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.f32693switch.get(size);
            if (!Cfor.m36515while(x509Certificate)) {
                if (i <= 0) {
                    m36411extends(new g80(f32681interface, "CertPathReviewer.pathLengthExtended"));
                }
                i--;
                i2++;
            }
            try {
                r7VarM6795try = r7.m6795try(Cfor.m36498else(x509Certificate, Cfor.f32732for));
            } catch (a2 unused) {
                m36412finally(new g80(f32681interface, "CertPathReviewer.processLengthConstError"), size);
                r7VarM6795try = null;
            }
            if (r7VarM6795try != null && (bigIntegerM6796else = r7VarM6795try.m6796else()) != null && (iIntValue = bigIntegerM6796else.intValue()) < i) {
                i = iIntValue;
            }
        }
        m36414package(new g80(f32681interface, "CertPathReviewer.totalPathLength", new Object[]{hn0.m3072for(i2)}));
    }

    public CertPath a() {
        return this.f32690public;
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x02b2  */
    /* renamed from: abstract, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m36410abstract(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, int i) throws Exception {
        Iterator it;
        X509CRL x509crl;
        boolean z;
        boolean z2;
        boolean z3;
        boolean[] keyUsage;
        X509CRL x509crl2;
        Iterator it2;
        String str;
        X509CRL x509crlM36405instanceof;
        boolean z4;
        yg2 yg2Var = new yg2();
        try {
            yg2Var.addIssuerName(Cfor.m36493case(x509Certificate).getEncoded());
            yg2Var.setCertificateChecking(x509Certificate);
            try {
                Cthis cthis = Cfor.f32729do;
                Set setM36584if = cthis.m36584if(yg2Var, pKIXParameters);
                it = setM36584if.iterator();
                if (setM36584if.isEmpty()) {
                    Iterator it3 = cthis.m36584if(new yg2(), pKIXParameters).iterator();
                    ArrayList arrayList = new ArrayList();
                    while (it3.hasNext()) {
                        arrayList.add(((X509CRL) it3.next()).getIssuerX500Principal());
                    }
                    m36415private(new g80(f32681interface, "CertPathReviewer.noCrlInCertstore", new Object[]{new uc2(yg2Var.getIssuerNames()), new uc2(arrayList), hn0.m3072for(arrayList.size())}), i);
                }
            } catch (a2 e) {
                m36412finally(new g80(f32681interface, "CertPathReviewer.crlExtractionError", new Object[]{e.getCause().getMessage(), e.getCause(), e.getCause().getClass().getName()}), i);
                it = new ArrayList().iterator();
            }
            X509CRL x509crl3 = null;
            while (it.hasNext()) {
                x509crl3 = (X509CRL) it.next();
                if (x509crl3.getNextUpdate() == null || pKIXParameters.getDate().before(x509crl3.getNextUpdate())) {
                    m36415private(new g80(f32681interface, "CertPathReviewer.localValidCRL", new Object[]{new b92(x509crl3.getThisUpdate()), new b92(x509crl3.getNextUpdate())}), i);
                    x509crl = x509crl3;
                    z = true;
                    break;
                }
                m36415private(new g80(f32681interface, "CertPathReviewer.localInvalidCRL", new Object[]{new b92(x509crl3.getThisUpdate()), new b92(x509crl3.getNextUpdate())}), i);
            }
            x509crl = x509crl3;
            z = false;
            if (!z) {
                Iterator it4 = vector.iterator();
                boolean z5 = z;
                while (true) {
                    if (!it4.hasNext()) {
                        z2 = z5;
                        break;
                    }
                    try {
                        str = (String) it4.next();
                        x509crlM36405instanceof = m36405instanceof(str);
                    } catch (fg e2) {
                        e = e2;
                        x509crl2 = x509crl;
                        it2 = it4;
                    }
                    if (x509crlM36405instanceof != null) {
                        if (x509Certificate.getIssuerX500Principal().equals(x509crlM36405instanceof.getIssuerX500Principal())) {
                            x509crl2 = x509crl;
                            it2 = it4;
                            try {
                            } catch (fg e3) {
                                e = e3;
                                m36415private(e.getErrorMessage(), i);
                                it4 = it2;
                                x509crl = x509crl2;
                            }
                            if (x509crlM36405instanceof.getNextUpdate() == null || this.f32691return.getDate().before(x509crlM36405instanceof.getNextUpdate())) {
                                try {
                                    m36415private(new g80(f32681interface, "CertPathReviewer.onlineValidCRL", new Object[]{new b92(x509crlM36405instanceof.getThisUpdate()), new b92(x509crlM36405instanceof.getNextUpdate()), new vc2(str)}), i);
                                    x509crl = x509crlM36405instanceof;
                                    z2 = true;
                                    break;
                                } catch (fg e4) {
                                    e = e4;
                                    z5 = true;
                                }
                            } else {
                                Object[] objArr = new Object[3];
                                z4 = z5;
                                try {
                                    objArr[0] = new b92(x509crlM36405instanceof.getThisUpdate());
                                    objArr[1] = new b92(x509crlM36405instanceof.getNextUpdate());
                                    objArr[2] = new vc2(str);
                                    m36415private(new g80(f32681interface, "CertPathReviewer.onlineInvalidCRL", objArr), i);
                                    it4 = it2;
                                    x509crl = x509crl2;
                                    z5 = z4;
                                } catch (fg e5) {
                                    e = e5;
                                    z5 = z4;
                                }
                            }
                        } else {
                            try {
                                x509crl2 = x509crl;
                                it2 = it4;
                                try {
                                    m36415private(new g80(f32681interface, "CertPathReviewer.onlineCRLWrongCA", new Object[]{new uc2(x509crlM36405instanceof.getIssuerX500Principal().getName()), new uc2(x509Certificate.getIssuerX500Principal().getName()), new vc2(str)}), i);
                                } catch (fg e6) {
                                    e = e6;
                                }
                            } catch (fg e7) {
                                e = e7;
                                x509crl2 = x509crl;
                                it2 = it4;
                            }
                        }
                        m36415private(e.getErrorMessage(), i);
                        it4 = it2;
                        x509crl = x509crl2;
                    } else {
                        x509crl2 = x509crl;
                        it2 = it4;
                    }
                    z4 = z5;
                    it4 = it2;
                    x509crl = x509crl2;
                    z5 = z4;
                }
            } else {
                z2 = z;
            }
            if (x509crl != null) {
                if (x509Certificate2 != null && (keyUsage = x509Certificate2.getKeyUsage()) != null && (keyUsage.length < 7 || !keyUsage[6])) {
                    throw new fg(new g80(f32681interface, "CertPathReviewer.noCrlSigningPermited"));
                }
                if (publicKey == null) {
                    throw new fg(new g80(f32681interface, "CertPathReviewer.crlNoIssuerPublicKey"));
                }
                try {
                    x509crl.verify(publicKey, Cdo.PROVIDER_NAME);
                    X509CRLEntry revokedCertificate = x509crl.getRevokedCertificate(x509Certificate.getSerialNumber());
                    if (revokedCertificate == null) {
                        m36415private(new g80(f32681interface, "CertPathReviewer.notRevoked"), i);
                    } else if (revokedCertificate.hasExtensions()) {
                        try {
                            Cnew cnewM33093class = Cnew.m33093class(Cfor.m36498else(revokedCertificate, Cif.f29312class.m32795super()));
                            String str2 = cnewM33093class != null ? Cfor.f32736native[cnewM33093class.m33095final().intValue()] : null;
                            if (str2 == null) {
                                str2 = Cfor.f32736native[7];
                            }
                            mv0 mv0Var = new mv0(f32681interface, str2);
                            if (!date.before(revokedCertificate.getRevocationDate())) {
                                throw new fg(new g80(f32681interface, "CertPathReviewer.certRevoked", new Object[]{new b92(revokedCertificate.getRevocationDate()), mv0Var}));
                            }
                            m36415private(new g80(f32681interface, "CertPathReviewer.revokedAfterValidation", new Object[]{new b92(revokedCertificate.getRevocationDate()), mv0Var}), i);
                        } catch (a2 e8) {
                            throw new fg(new g80(f32681interface, "CertPathReviewer.crlReasonExtError"), e8);
                        }
                    }
                    if (x509crl.getNextUpdate() != null && x509crl.getNextUpdate().before(this.f32691return.getDate())) {
                        m36415private(new g80(f32681interface, "CertPathReviewer.crlUpdateAvailable", new Object[]{new b92(x509crl.getNextUpdate())}), i);
                    }
                    try {
                        Cfinal cfinalM36498else = Cfor.m36498else(x509crl, Cfor.f32739this);
                        try {
                            Cfinal cfinalM36498else2 = Cfor.m36498else(x509crl, Cfor.f32724break);
                            if (cfinalM36498else2 != null) {
                                yg2 yg2Var2 = new yg2();
                                try {
                                    yg2Var2.addIssuerName(Cfor.m36501goto(x509crl).getEncoded());
                                    yg2Var2.setMinCRLNumber(((Cgoto) cfinalM36498else2).m33043const());
                                    try {
                                        yg2Var2.setMaxCRLNumber(((Cgoto) Cfor.m36498else(x509crl, Cfor.f32740throw)).m33043const().subtract(BigInteger.valueOf(1L)));
                                        try {
                                            Iterator it5 = Cfor.f32729do.m36584if(yg2Var2, pKIXParameters).iterator();
                                            while (it5.hasNext()) {
                                                try {
                                                    Cfinal cfinalM36498else3 = Cfor.m36498else((X509CRL) it5.next(), Cfor.f32739this);
                                                    if (cfinalM36498else == null) {
                                                        if (cfinalM36498else3 == null) {
                                                            z3 = true;
                                                            break;
                                                        }
                                                    } else if (cfinalM36498else.equals(cfinalM36498else3)) {
                                                        z3 = true;
                                                        break;
                                                    }
                                                } catch (a2 e9) {
                                                    throw new fg(new g80(f32681interface, "CertPathReviewer.distrPtExtError"), e9);
                                                }
                                            }
                                            z3 = false;
                                            if (!z3) {
                                                throw new fg(new g80(f32681interface, "CertPathReviewer.noBaseCRL"));
                                            }
                                        } catch (a2 e10) {
                                            throw new fg(new g80(f32681interface, "CertPathReviewer.crlExtractionError"), e10);
                                        }
                                    } catch (a2 e11) {
                                        throw new fg(new g80(f32681interface, "CertPathReviewer.crlNbrExtError"), e11);
                                    }
                                } catch (IOException e12) {
                                    throw new fg(new g80(f32681interface, "CertPathReviewer.crlIssuerException"), e12);
                                }
                            }
                            if (cfinalM36498else != null) {
                                do0 do0VarM1460else = do0.m1460else(cfinalM36498else);
                                try {
                                    r7 r7VarM6795try = r7.m6795try(Cfor.m36498else(x509Certificate, Cfor.f32732for));
                                    if (do0VarM1460else.m1468const() && r7VarM6795try != null && r7VarM6795try.m6797goto()) {
                                        throw new fg(new g80(f32681interface, "CertPathReviewer.crlOnlyUserCert"));
                                    }
                                    if (do0VarM1460else.m1467class() && (r7VarM6795try == null || !r7VarM6795try.m6797goto())) {
                                        throw new fg(new g80(f32681interface, "CertPathReviewer.crlOnlyCaCert"));
                                    }
                                    if (do0VarM1460else.m1466catch()) {
                                        throw new fg(new g80(f32681interface, "CertPathReviewer.crlOnlyAttrCert"));
                                    }
                                } catch (a2 e13) {
                                    throw new fg(new g80(f32681interface, "CertPathReviewer.crlBCExtError"), e13);
                                }
                            }
                        } catch (a2 unused) {
                            throw new fg(new g80(f32681interface, "CertPathReviewer.deltaCrlExtError"));
                        }
                    } catch (a2 unused2) {
                        throw new fg(new g80(f32681interface, "CertPathReviewer.distrPtExtError"));
                    }
                } catch (Exception e14) {
                    throw new fg(new g80(f32681interface, "CertPathReviewer.crlVerifyFailed"), e14);
                }
            }
            if (!z2) {
                throw new fg(new g80(f32681interface, "CertPathReviewer.noValidCrlFound"));
            }
        } catch (IOException e15) {
            throw new fg(new g80(f32681interface, "CertPathReviewer.crlIssuerException"), e15);
        }
    }

    public int b() {
        return this.f32694throws;
    }

    public List c(int i) throws Exception {
        m36413implements();
        return this.f32686extends[i + 1];
    }

    public List[] d() throws Exception {
        m36413implements();
        return this.f32686extends;
    }

    public List e(int i) throws Exception {
        m36413implements();
        return this.f32685default[i + 1];
    }

    /* renamed from: extends, reason: not valid java name */
    public void m36411extends(g80 g80Var) {
        this.f32686extends[0].add(g80Var);
    }

    public List[] f() throws Exception {
        m36413implements();
        return this.f32685default;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m36412finally(g80 g80Var, int i) {
        if (i < -1 || i >= this.f32694throws) {
            throw new IndexOutOfBoundsException();
        }
        this.f32686extends[i + 1].add(g80Var);
    }

    public Vector g(b5 b5Var) {
        Vector vector = new Vector();
        if (b5Var != null) {
            m[] mVarArrM445try = b5Var.m445try();
            for (int i = 0; i < mVarArrM445try.length; i++) {
                if (mVarArrM445try[i].m4815try().equals(m.f3810new)) {
                    tg0 tg0VarM4814new = mVarArrM445try[i].m4814new();
                    if (tg0VarM4814new.getTagNo() == 6) {
                        vector.add(((g) tg0VarM4814new.m7878else()).getString());
                    }
                }
            }
        }
        return vector;
    }

    public PolicyNode h() throws Exception {
        m36413implements();
        return this.f32689private;
    }

    public PublicKey i() throws Exception {
        m36413implements();
        return this.f32688package;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m36413implements() throws Exception {
        if (!this.f32684abstract) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        }
        if (this.f32685default != null) {
            return;
        }
        int i = this.f32694throws;
        this.f32685default = new List[i + 1];
        this.f32686extends = new List[i + 1];
        int i2 = 0;
        while (true) {
            List[] listArr = this.f32685default;
            if (i2 >= listArr.length) {
                m36408transient();
                m36407strictfp();
                m36409volatile();
                m36406interface();
                m36403continue();
                return;
            }
            listArr[i2] = new ArrayList();
            this.f32686extends[i2] = new ArrayList();
            i2++;
        }
    }

    public TrustAnchor j() throws Exception {
        m36413implements();
        return this.f32687finally;
    }

    public Collection k(X509Certificate x509Certificate, Set set) throws fg, IOException {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(Cfor.m36493case(x509Certificate).getEncoded());
            byte[] extensionValue = x509Certificate.getExtensionValue(Cif.f29330static.m32795super());
            if (extensionValue != null) {
                c5 c5VarM743else = c5.m743else(Cfinal.m33015else(((Cclass) Cfinal.m33015else(extensionValue)).mo5490const()));
                x509CertSelector.setSerialNumber(c5VarM743else.m746case());
                byte[] bArrM747this = c5VarM743else.m747this();
                if (bArrM747this != null) {
                    x509CertSelector.setSubjectKeyIdentifier(new j(bArrM747this).getEncoded());
                }
            }
            while (it.hasNext()) {
                TrustAnchor trustAnchor = (TrustAnchor) it.next();
                if (trustAnchor.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                        arrayList.add(trustAnchor);
                    }
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null && Cfor.m36493case(x509Certificate).equals(new X500Principal(trustAnchor.getCAName()))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException unused) {
            throw new fg(new g80(f32681interface, "CertPathReviewer.trustAnchorIssuerError"));
        }
    }

    public void l(CertPath certPath, PKIXParameters pKIXParameters) throws fg {
        if (this.f32684abstract) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.f32684abstract = true;
        Objects.requireNonNull(certPath, "certPath was null");
        this.f32690public = certPath;
        List<? extends Certificate> certificates = certPath.getCertificates();
        this.f32693switch = certificates;
        this.f32694throws = certificates.size();
        if (this.f32693switch.isEmpty()) {
            throw new fg(new g80(f32681interface, "CertPathReviewer.emptyCertPath"));
        }
        PKIXParameters pKIXParameters2 = (PKIXParameters) pKIXParameters.clone();
        this.f32691return = pKIXParameters2;
        this.f32692static = Cfor.m36499final(pKIXParameters2);
        this.f32685default = null;
        this.f32686extends = null;
        this.f32687finally = null;
        this.f32688package = null;
        this.f32689private = null;
    }

    public boolean m() throws Exception {
        m36413implements();
        int i = 0;
        while (true) {
            List[] listArr = this.f32686extends;
            if (i >= listArr.length) {
                return true;
            }
            if (!listArr[i].isEmpty()) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: package, reason: not valid java name */
    public void m36414package(g80 g80Var) {
        this.f32685default[0].add(g80Var);
    }

    /* renamed from: private, reason: not valid java name */
    public void m36415private(g80 g80Var, int i) {
        if (i < -1 || i >= this.f32694throws) {
            throw new IndexOutOfBoundsException();
        }
        this.f32685default[i + 1].add(g80Var);
    }

    /* renamed from: protected, reason: not valid java name */
    public void m36416protected(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i) throws Exception {
        m36410abstract(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public Vector m36417synchronized(ye yeVar) {
        Vector vector = new Vector();
        if (yeVar != null) {
            for (q10 q10Var : yeVar.m9825try()) {
                r10 r10VarM6308case = q10Var.m6308case();
                if (r10VarM6308case.m6731goto() == 0) {
                    tg0[] tg0VarArrM8440goto = ug0.m8436case(r10VarM6308case.m6730else()).m8440goto();
                    for (int i = 0; i < tg0VarArrM8440goto.length; i++) {
                        if (tg0VarArrM8440goto[i].getTagNo() == 6) {
                            vector.add(((g) tg0VarArrM8440goto[i].m7878else()).getString());
                        }
                    }
                }
            }
        }
        return vector;
    }
}
