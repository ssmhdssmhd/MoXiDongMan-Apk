package org.bouncycastle.jce.provider;

import android.support.v4.Cwhile;
import android.support.v4.a31;
import android.support.v4.b1;
import android.support.v4.hn0;
import android.support.v4.lr0;
import android.support.v4.pj1;
import android.support.v4.q3;
import android.support.v4.r7;
import android.support.v4.rg;
import android.support.v4.tg0;
import android.support.v4.tg2;
import android.support.v4.ve2;
import android.support.v4.y90;
import android.support.v4.z21;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cconst;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.g;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.jcajce.provider.asymmetric.util.Cthis;
import org.bouncycastle.jce.Ccase;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.util.Cfor;

/* renamed from: org.bouncycastle.jce.provider.synchronized, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csynchronized extends X509Certificate implements PKCS12BagAttributeCarrier {
    private PKCS12BagAttributeCarrier attrCarrier = new Cthis();
    private r7 basicConstraints;
    private rg c;
    private int hashValue;
    private boolean hashValueSet;
    private boolean[] keyUsage;

    public Csynchronized(rg rgVar) throws CertificateParsingException {
        this.c = rgVar;
        try {
            byte[] bArrM35120new = m35120new("2.5.29.19");
            if (bArrM35120new != null) {
                this.basicConstraints = r7.m6795try(Cfinal.m33015else(bArrM35120new));
            }
            try {
                byte[] bArrM35120new2 = m35120new("2.5.29.15");
                if (bArrM35120new2 == null) {
                    this.keyUsage = null;
                    return;
                }
                Cinstanceof cinstanceofM33068public = Cinstanceof.m33068public(Cfinal.m33015else(bArrM35120new2));
                byte[] bArrM33057const = cinstanceofM33068public.m33057const();
                int length = (bArrM33057const.length * 8) - cinstanceofM33068public.m33060throw();
                int i = 9;
                if (length >= 9) {
                    i = length;
                }
                this.keyUsage = new boolean[i];
                for (int i2 = 0; i2 != length; i2++) {
                    this.keyUsage[i2] = (bArrM33057const[i2 / 8] & (128 >>> (i2 % 8))) != 0;
                }
            } catch (Exception e) {
                throw new CertificateParsingException("cannot construct KeyUsage: " + e);
            }
        } catch (Exception e2) {
            throw new CertificateParsingException("cannot construct BasicConstraints: " + e2);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private int m35117do() {
        try {
            byte[] encoded = getEncoded();
            int i = 0;
            for (int i2 = 1; i2 < encoded.length; i2++) {
                i += encoded[i2] * i2;
            }
            return i;
        } catch (CertificateEncodingException unused) {
            return 0;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static Collection m35118for(byte[] bArr) throws CertificateParsingException, IOException {
        String string;
        if (bArr == null) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Enumeration enumerationMo33076super = Csuper.m33129catch(bArr).mo33076super();
            while (enumerationMo33076super.hasMoreElements()) {
                tg0 tg0VarM7877try = tg0.m7877try(enumerationMo33076super.nextElement());
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(hn0.m3072for(tg0VarM7877try.getTagNo()));
                switch (tg0VarM7877try.getTagNo()) {
                    case 0:
                    case 3:
                    case 5:
                        arrayList2.add(tg0VarM7877try.getEncoded());
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                    case 1:
                    case 2:
                    case 6:
                        string = ((ASN1String) tg0VarM7877try.m7878else()).getString();
                        arrayList2.add(string);
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                    case 4:
                        string = tg2.m7887this(pj1.i, tg0VarM7877try.m7878else()).toString();
                        arrayList2.add(string);
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                    case 7:
                        try {
                            string = InetAddress.getByAddress(Cclass.m32796catch(tg0VarM7877try.m7878else()).mo5490const()).getHostAddress();
                            arrayList2.add(string);
                            arrayList.add(Collections.unmodifiableList(arrayList2));
                        } catch (UnknownHostException unused) {
                        }
                    case 8:
                        string = Ccatch.m32790throw(tg0VarM7877try.m7878else()).m32795super();
                        arrayList2.add(string);
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                    default:
                        throw new IOException("Bad tag number: " + tg0VarM7877try.getTagNo());
                }
            }
            if (arrayList.size() == 0) {
                return null;
            }
            return Collections.unmodifiableCollection(arrayList);
        } catch (Exception e) {
            throw new CertificateParsingException(e.getMessage());
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m35119if(PublicKey publicKey, Signature signature) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException {
        if (!m35121try(this.c.m6957break(), this.c.m6962final().m9033catch())) {
            throw new CertificateException("signature algorithm in TBS cert not same as outer cert");
        }
        b.m34998for(signature, this.c.m6957break().m419else());
        signature.initVerify(publicKey);
        signature.update(getTBSCertificate());
        if (!signature.verify(getSignature())) {
            throw new SignatureException("certificate does not verify with supplied key");
        }
    }

    /* renamed from: new, reason: not valid java name */
    private byte[] m35120new(String str) {
        Cif cifM9786case;
        y90 y90VarM9042try = this.c.m6962final().m9042try();
        if (y90VarM9042try == null || (cifM9786case = y90VarM9042try.m9786case(new Ccatch(str))) == null) {
            return null;
        }
        return cifM9786case.m33246case().mo5490const();
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m35121try(b1 b1Var, b1 b1Var2) {
        if (b1Var.m420new().equals(b1Var2.m420new())) {
            return b1Var.m419else() == null ? b1Var2.m419else() == null || b1Var2.m419else().equals(h.f29080do) : b1Var2.m419else() == null ? b1Var.m419else() == null || b1Var.m419else().equals(h.f29080do) : b1Var.m419else().equals(b1Var2.m419else());
        }
        return false;
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity() throws CertificateNotYetValidException, CertificateExpiredException {
        checkValidity(new Date());
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity(Date date) throws CertificateNotYetValidException, CertificateExpiredException {
        if (date.getTime() > getNotAfter().getTime()) {
            throw new CertificateExpiredException("certificate expired on " + this.c.m6964new().m7735else());
        }
        if (date.getTime() >= getNotBefore().getTime()) {
            return;
        }
        throw new CertificateNotYetValidException("certificate not valid till " + this.c.m6958catch().m7735else());
    }

    @Override // java.security.cert.Certificate
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Certificate)) {
            return false;
        }
        try {
            return q3.m6362case(getEncoded(), ((Certificate) obj).getEncoded());
        } catch (CertificateEncodingException unused) {
            return false;
        }
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return this.attrCarrier.getBagAttribute(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // java.security.cert.X509Certificate
    public int getBasicConstraints() {
        r7 r7Var = this.basicConstraints;
        if (r7Var == null || !r7Var.m6797goto()) {
            return -1;
        }
        if (this.basicConstraints.m6796else() == null) {
            return Integer.MAX_VALUE;
        }
        return this.basicConstraints.m6796else().intValue();
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        if (getVersion() != 3) {
            return null;
        }
        HashSet hashSet = new HashSet();
        y90 y90VarM9042try = this.c.m6962final().m9042try();
        if (y90VarM9042try == null) {
            return null;
        }
        Enumeration enumerationM9788const = y90VarM9042try.m9788const();
        while (enumerationM9788const.hasMoreElements()) {
            Ccatch ccatch = (Ccatch) enumerationM9788const.nextElement();
            if (y90VarM9042try.m9786case(ccatch).m33248this()) {
                hashSet.add(ccatch.m32795super());
            }
        }
        return hashSet;
    }

    @Override // java.security.cert.Certificate
    public byte[] getEncoded() throws CertificateEncodingException {
        try {
            return this.c.m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }

    @Override // java.security.cert.X509Certificate
    public List getExtendedKeyUsage() throws CertificateParsingException {
        byte[] bArrM35120new = m35120new("2.5.29.37");
        if (bArrM35120new == null) {
            return null;
        }
        try {
            Csuper csuper = (Csuper) new Celse(bArrM35120new).m33002break();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i != csuper.size(); i++) {
                arrayList.add(((Ccatch) csuper.mo33075final(i)).m32795super());
            }
            return Collections.unmodifiableList(arrayList);
        } catch (Exception unused) {
            throw new CertificateParsingException("error processing extended key usage extension");
        }
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        Cif cifM9786case;
        y90 y90VarM9042try = this.c.m6962final().m9042try();
        if (y90VarM9042try == null || (cifM9786case = y90VarM9042try.m9786case(new Ccatch(str))) == null) {
            return null;
        }
        try {
            return cifM9786case.m33246case().getEncoded();
        } catch (Exception e) {
            throw new IllegalStateException("error parsing " + e.toString());
        }
    }

    @Override // java.security.cert.X509Certificate
    public Collection getIssuerAlternativeNames() throws CertificateParsingException {
        return m35118for(m35120new(Cif.f29334this.m32795super()));
    }

    @Override // java.security.cert.X509Certificate
    public Principal getIssuerDN() {
        try {
            return new Ccase(tg2.m7884else(this.c.m6961else().getEncoded()));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getIssuerUniqueID() {
        Cinstanceof cinstanceofM9040this = this.c.m6962final().m9040this();
        if (cinstanceofM9040this == null) {
            return null;
        }
        byte[] bArrM33057const = cinstanceofM9040this.m33057const();
        int length = (bArrM33057const.length * 8) - cinstanceofM9040this.m33060throw();
        boolean[] zArr = new boolean[length];
        for (int i = 0; i != length; i++) {
            zArr[i] = (bArrM33057const[i / 8] & (128 >>> (i % 8))) != 0;
        }
        return zArr;
    }

    @Override // java.security.cert.X509Certificate
    public X500Principal getIssuerX500Principal() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new Cconst(byteArrayOutputStream).mo32770const(this.c.m6961else());
            return new X500Principal(byteArrayOutputStream.toByteArray());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getKeyUsage() {
        return this.keyUsage;
    }

    @Override // java.security.cert.X509Extension
    public Set getNonCriticalExtensionOIDs() {
        if (getVersion() != 3) {
            return null;
        }
        HashSet hashSet = new HashSet();
        y90 y90VarM9042try = this.c.m6962final().m9042try();
        if (y90VarM9042try == null) {
            return null;
        }
        Enumeration enumerationM9788const = y90VarM9042try.m9788const();
        while (enumerationM9788const.hasMoreElements()) {
            Ccatch ccatch = (Ccatch) enumerationM9788const.nextElement();
            if (!y90VarM9042try.m9786case(ccatch).m33248this()) {
                hashSet.add(ccatch.m32795super());
            }
        }
        return hashSet;
    }

    @Override // java.security.cert.X509Certificate
    public Date getNotAfter() {
        return this.c.m6964new().m7736new();
    }

    @Override // java.security.cert.X509Certificate
    public Date getNotBefore() {
        return this.c.m6958catch().m7736new();
    }

    @Override // java.security.cert.Certificate
    public PublicKey getPublicKey() {
        try {
            return Cdo.getPublicKey(this.c.m6960const());
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public BigInteger getSerialNumber() {
        return this.c.m6963goto().m33044final();
    }

    @Override // java.security.cert.X509Certificate
    public String getSigAlgName() {
        Provider provider = Security.getProvider(Cdo.PROVIDER_NAME);
        if (provider != null) {
            String property = provider.getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property != null) {
                return property;
            }
        }
        Provider[] providers = Security.getProviders();
        for (int i = 0; i != providers.length; i++) {
            String property2 = providers[i].getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property2 != null) {
                return property2;
            }
        }
        return getSigAlgOID();
    }

    @Override // java.security.cert.X509Certificate
    public String getSigAlgOID() {
        return this.c.m6957break().m420new().m32795super();
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getSigAlgParams() {
        if (this.c.m6957break().m419else() != null) {
            try {
                return this.c.m6957break().m419else().toASN1Primitive().m32764do(ASN1Encoding.DER);
            } catch (IOException unused) {
            }
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getSignature() {
        return this.c.m6966this().m33059super();
    }

    @Override // java.security.cert.X509Certificate
    public Collection getSubjectAlternativeNames() throws CertificateParsingException {
        return m35118for(m35120new(Cif.f29320goto.m32795super()));
    }

    @Override // java.security.cert.X509Certificate
    public Principal getSubjectDN() {
        return new Ccase(tg2.m7884else(this.c.m6959class().toASN1Primitive()));
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getSubjectUniqueID() {
        Cinstanceof cinstanceofM9039super = this.c.m6962final().m9039super();
        if (cinstanceofM9039super == null) {
            return null;
        }
        byte[] bArrM33057const = cinstanceofM9039super.m33057const();
        int length = (bArrM33057const.length * 8) - cinstanceofM9039super.m33060throw();
        boolean[] zArr = new boolean[length];
        for (int i = 0; i != length; i++) {
            zArr[i] = (bArrM33057const[i / 8] & (128 >>> (i % 8))) != 0;
        }
        return zArr;
    }

    @Override // java.security.cert.X509Certificate
    public X500Principal getSubjectX500Principal() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new Cconst(byteArrayOutputStream).mo32770const(this.c.m6959class());
            return new X500Principal(byteArrayOutputStream.toByteArray());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getTBSCertificate() throws CertificateEncodingException {
        try {
            return this.c.m6962final().m32764do(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }

    @Override // java.security.cert.X509Certificate
    public int getVersion() {
        return this.c.m6967throw();
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        y90 y90VarM9042try;
        if (getVersion() != 3 || (y90VarM9042try = this.c.m6962final().m9042try()) == null) {
            return false;
        }
        Enumeration enumerationM9788const = y90VarM9042try.m9788const();
        while (enumerationM9788const.hasMoreElements()) {
            Ccatch ccatch = (Ccatch) enumerationM9788const.nextElement();
            String strM32795super = ccatch.m32795super();
            if (!strM32795super.equals(Cabstract.f31572final) && !strM32795super.equals(Cabstract.f31575if) && !strM32795super.equals(Cabstract.f31573for) && !strM32795super.equals(Cabstract.f31578new) && !strM32795super.equals(Cabstract.f31565break) && !strM32795super.equals(Cabstract.f31582try) && !strM32795super.equals(Cabstract.f31571else) && !strM32795super.equals(Cabstract.f31574goto) && !strM32795super.equals(Cabstract.f31580this) && !strM32795super.equals(Cabstract.f31567catch) && !strM32795super.equals(Cabstract.f31568class) && y90VarM9042try.m9786case(ccatch).m33248this()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.cert.Certificate
    public synchronized int hashCode() {
        if (!this.hashValueSet) {
            this.hashValue = m35117do();
            this.hashValueSet = true;
        }
        return this.hashValue;
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        this.attrCarrier.setBagAttribute(ccatch, aSN1Encodable);
    }

    @Override // java.security.cert.Certificate
    public String toString() {
        Object ve2Var;
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append("  [0]         Version: ");
        stringBuffer.append(getVersion());
        stringBuffer.append(strM36360new);
        stringBuffer.append("         SerialNumber: ");
        stringBuffer.append(getSerialNumber());
        stringBuffer.append(strM36360new);
        stringBuffer.append("             IssuerDN: ");
        stringBuffer.append(getIssuerDN());
        stringBuffer.append(strM36360new);
        stringBuffer.append("           Start Date: ");
        stringBuffer.append(getNotBefore());
        stringBuffer.append(strM36360new);
        stringBuffer.append("           Final Date: ");
        stringBuffer.append(getNotAfter());
        stringBuffer.append(strM36360new);
        stringBuffer.append("            SubjectDN: ");
        stringBuffer.append(getSubjectDN());
        stringBuffer.append(strM36360new);
        stringBuffer.append("           Public Key: ");
        stringBuffer.append(getPublicKey());
        stringBuffer.append(strM36360new);
        stringBuffer.append("  Signature Algorithm: ");
        stringBuffer.append(getSigAlgName());
        stringBuffer.append(strM36360new);
        byte[] signature = getSignature();
        stringBuffer.append("            Signature: ");
        stringBuffer.append(new String(org.bouncycastle.util.encoders.Cfor.m36329else(signature, 0, 20)));
        stringBuffer.append(strM36360new);
        int i = 20;
        while (i < signature.length) {
            int length = signature.length - 20;
            stringBuffer.append("                       ");
            stringBuffer.append(i < length ? new String(org.bouncycastle.util.encoders.Cfor.m36329else(signature, i, 20)) : new String(org.bouncycastle.util.encoders.Cfor.m36329else(signature, i, signature.length - i)));
            stringBuffer.append(strM36360new);
            i += 20;
        }
        y90 y90VarM9042try = this.c.m6962final().m9042try();
        if (y90VarM9042try != null) {
            Enumeration enumerationM9788const = y90VarM9042try.m9788const();
            if (enumerationM9788const.hasMoreElements()) {
                stringBuffer.append("       Extensions: \n");
            }
            while (enumerationM9788const.hasMoreElements()) {
                Ccatch ccatch = (Ccatch) enumerationM9788const.nextElement();
                Cif cifM9786case = y90VarM9042try.m9786case(ccatch);
                if (cifM9786case.m33246case() != null) {
                    Celse celse = new Celse(cifM9786case.m33246case().mo5490const());
                    stringBuffer.append("                       critical(");
                    stringBuffer.append(cifM9786case.m33248this());
                    stringBuffer.append(") ");
                    try {
                    } catch (Exception unused) {
                        stringBuffer.append(ccatch.m32795super());
                        stringBuffer.append(" value = ");
                        stringBuffer.append("*****");
                    }
                    if (ccatch.equals(Cif.f29309break)) {
                        ve2Var = r7.m6795try(celse.m33002break());
                    } else if (ccatch.equals(Cif.f29310case)) {
                        ve2Var = lr0.m4748case(celse.m33002break());
                    } else if (ccatch.equals(MiscObjectIdentifiers.netscapeCertType)) {
                        ve2Var = new z21((Cinstanceof) celse.m33002break());
                    } else if (ccatch.equals(MiscObjectIdentifiers.netscapeRevocationURL)) {
                        ve2Var = new a31((g) celse.m33002break());
                    } else if (ccatch.equals(MiscObjectIdentifiers.verisignCzagExtension)) {
                        ve2Var = new ve2((g) celse.m33002break());
                    } else {
                        stringBuffer.append(ccatch.m32795super());
                        stringBuffer.append(" value = ");
                        stringBuffer.append(Cwhile.m9155for(celse.m33002break()));
                        stringBuffer.append(strM36360new);
                    }
                    stringBuffer.append(ve2Var);
                    stringBuffer.append(strM36360new);
                }
                stringBuffer.append(strM36360new);
            }
        }
        return stringBuffer.toString();
    }

    @Override // java.security.cert.Certificate
    public final void verify(PublicKey publicKey) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
        Signature signature;
        String strM34999if = b.m34999if(this.c.m6957break());
        try {
            signature = Signature.getInstance(strM34999if, Cdo.PROVIDER_NAME);
        } catch (Exception unused) {
            signature = Signature.getInstance(strM34999if);
        }
        m35119if(publicKey, signature);
    }

    @Override // java.security.cert.Certificate
    public final void verify(PublicKey publicKey, String str) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
        String strM34999if = b.m34999if(this.c.m6957break());
        m35119if(publicKey, str != null ? Signature.getInstance(strM34999if, str) : Signature.getInstance(strM34999if));
    }

    @Override // java.security.cert.X509Certificate, java.security.cert.Certificate
    public final void verify(PublicKey publicKey, Provider provider) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException {
        String strM34999if = b.m34999if(this.c.m6957break());
        m35119if(publicKey, provider != null ? Signature.getInstance(strM34999if, provider) : Signature.getInstance(strM34999if));
    }
}
