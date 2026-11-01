package org.bouncycastle.x509.util;

import android.support.v4.ah2;
import android.support.v4.r12;
import android.support.v4.rg;
import android.support.v4.tg;
import android.support.v4.x12;
import android.support.v4.yg2;
import android.support.v4.zg2;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.Principal;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.jce.Ctry;
import org.bouncycastle.jce.provider.Cimplements;
import org.bouncycastle.jce.provider.Cinstanceof;
import org.bouncycastle.jce.provider.Ctransient;
import org.bouncycastle.jce.provider.Cvolatile;
import org.bouncycastle.x509.Ccatch;
import org.bouncycastle.x509.Cclass;
import org.bouncycastle.x509.X509AttributeCertificate;

/* renamed from: org.bouncycastle.x509.util.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: case, reason: not valid java name */
    private static final String f32769case = "com.sun.jndi.url";

    /* renamed from: else, reason: not valid java name */
    private static int f32770else = 32;

    /* renamed from: for, reason: not valid java name */
    private static String f32771for = "com.sun.jndi.ldap.LdapCtxFactory";

    /* renamed from: goto, reason: not valid java name */
    private static long f32772goto = 60000;

    /* renamed from: new, reason: not valid java name */
    private static String f32773new = "ignore";

    /* renamed from: try, reason: not valid java name */
    private static final String f32774try = "none";

    /* renamed from: do, reason: not valid java name */
    private Ctry f32775do;

    /* renamed from: if, reason: not valid java name */
    private Map f32776if = new HashMap(f32770else);

    public Cdo(Ctry ctry) {
        this.f32775do = ctry;
    }

    /* renamed from: break, reason: not valid java name */
    private List m36599break(zg2 zg2Var, String[] strArr, String[] strArr2, String[] strArr3) throws r12 {
        ArrayList arrayList = new ArrayList();
        String strM36612switch = zg2Var.m10198if() != null ? m36612switch(zg2Var.m10198if()) : null;
        if (zg2Var.m10196do() != null && zg2Var.m10196do().m36445if() != null) {
            strM36612switch = zg2Var.m10196do().m36445if().getSubjectX500Principal().getName("RFC1779");
        }
        if (strM36612switch != null) {
            for (String str : strArr3) {
                arrayList.addAll(m36604extends(strArr2, "*" + m36601default(strM36612switch, str) + "*", strArr));
            }
        }
        if (strM36612switch == null) {
            arrayList.addAll(m36604extends(strArr2, "*", strArr));
        }
        return arrayList;
    }

    /* renamed from: case, reason: not valid java name */
    private Set m36600case(List list, Ccatch ccatch) throws r12 {
        HashSet hashSet = new HashSet();
        Iterator it = list.iterator();
        Cvolatile cvolatile = new Cvolatile();
        while (it.hasNext()) {
            try {
                cvolatile.mo35048do(new ByteArrayInputStream((byte[]) it.next()));
                X509AttributeCertificate x509AttributeCertificate = (X509AttributeCertificate) cvolatile.mo35050if();
                if (ccatch.match(x509AttributeCertificate)) {
                    hashSet.add(x509AttributeCertificate);
                }
            } catch (x12 unused) {
            }
        }
        return hashSet;
    }

    /* renamed from: default, reason: not valid java name */
    private String m36601default(String str, String str2) {
        int iIndexOf = str.toLowerCase().indexOf(str2.toLowerCase() + "=");
        if (iIndexOf == -1) {
            return "";
        }
        String strSubstring = str.substring(iIndexOf + str2.length());
        int iIndexOf2 = strSubstring.indexOf(44);
        if (iIndexOf2 == -1) {
            iIndexOf2 = strSubstring.length();
        }
        while (strSubstring.charAt(iIndexOf2 - 1) == '\\') {
            iIndexOf2 = strSubstring.indexOf(44, iIndexOf2 + 1);
            if (iIndexOf2 == -1) {
                iIndexOf2 = strSubstring.length();
            }
        }
        String strSubstring2 = strSubstring.substring(0, iIndexOf2);
        String strSubstring3 = strSubstring2.substring(strSubstring2.indexOf(61) + 1);
        if (strSubstring3.charAt(0) == ' ') {
            strSubstring3 = strSubstring3.substring(1);
        }
        if (strSubstring3.startsWith("\"")) {
            strSubstring3 = strSubstring3.substring(1);
        }
        return strSubstring3.endsWith("\"") ? strSubstring3.substring(0, strSubstring3.length() - 1) : strSubstring3;
    }

    /* renamed from: do, reason: not valid java name */
    private synchronized void m36602do(String str, List list) {
        Date date = new Date(System.currentTimeMillis());
        ArrayList arrayList = new ArrayList();
        arrayList.add(date);
        arrayList.add(list);
        if (!this.f32776if.containsKey(str) && this.f32776if.size() >= f32770else) {
            long time = date.getTime();
            Object key = null;
            for (Map.Entry entry : this.f32776if.entrySet()) {
                long time2 = ((Date) ((List) entry.getValue()).get(0)).getTime();
                if (time2 < time) {
                    key = entry.getKey();
                    time = time2;
                }
            }
            this.f32776if.remove(key);
        }
        Map map = this.f32776if;
        map.put(str, arrayList);
    }

    /* renamed from: else, reason: not valid java name */
    private Set m36603else(List list, yg2 yg2Var) throws r12 {
        HashSet hashSet = new HashSet();
        Ctransient ctransient = new Ctransient();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ctransient.mo35048do(new ByteArrayInputStream((byte[]) it.next()));
                X509CRL x509crl = (X509CRL) ctransient.mo35050if();
                if (yg2Var.match((Object) x509crl)) {
                    hashSet.add(x509crl);
                }
            } catch (x12 unused) {
            }
        }
        return hashSet;
    }

    /* renamed from: extends, reason: not valid java name */
    private List m36604extends(String[] strArr, String str, String[] strArr2) throws r12 {
        String str2;
        DirContext dirContextM36614try = null;
        if (strArr == null) {
            str2 = null;
        } else {
            if (str.equals("**")) {
                str = "*";
            }
            String str3 = "";
            for (String str4 : strArr) {
                str3 = str3 + "(" + str4 + "=" + str + ")";
            }
            str2 = "(|" + str3 + ")";
        }
        String str5 = "";
        for (String str6 : strArr2) {
            str5 = str5 + "(" + str6 + "=*)";
        }
        String str7 = "(|" + str5 + ")";
        String str8 = "(&" + str2 + "" + str7 + ")";
        if (str2 != null) {
            str7 = str8;
        }
        List listM36611static = m36611static(str7);
        if (listM36611static != null) {
            return listM36611static;
        }
        ArrayList arrayList = new ArrayList();
        try {
            dirContextM36614try = m36614try();
            SearchControls searchControls = new SearchControls();
            searchControls.setSearchScope(2);
            searchControls.setCountLimit(0L);
            searchControls.setReturningAttributes(strArr2);
            NamingEnumeration namingEnumerationSearch = dirContextM36614try.search(this.f32775do.m35191throw(), str7, searchControls);
            while (namingEnumerationSearch.hasMoreElements()) {
                NamingEnumeration all = ((Attribute) ((SearchResult) namingEnumerationSearch.next()).getAttributes().getAll().next()).getAll();
                while (all.hasMore()) {
                    arrayList.add(all.next());
                }
            }
            m36602do(str7, arrayList);
        } catch (NamingException unused) {
            if (dirContextM36614try != null) {
            }
        } catch (Throwable th) {
            if (dirContextM36614try != null) {
                try {
                    dirContextM36614try.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
        try {
            dirContextM36614try.close();
        } catch (Exception unused3) {
        }
        return arrayList;
    }

    /* renamed from: finally, reason: not valid java name */
    private String[] m36605finally(String str) {
        return str.split("\\s+");
    }

    /* renamed from: for, reason: not valid java name */
    private List m36606for(yg2 yg2Var, String[] strArr, String[] strArr2, String[] strArr3) throws r12 {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        if (yg2Var.getIssuers() != null) {
            hashSet.addAll(yg2Var.getIssuers());
        }
        if (yg2Var.getCertificateChecking() != null) {
            hashSet.add(m36609import(yg2Var.getCertificateChecking()));
        }
        if (yg2Var.m9849do() != null) {
            Principal[] principalArrM36520if = yg2Var.m9849do().getIssuer().m36520if();
            for (int i = 0; i < principalArrM36520if.length; i++) {
                if (principalArrM36520if[i] instanceof X500Principal) {
                    hashSet.add(principalArrM36520if[i]);
                }
            }
        }
        Iterator it = hashSet.iterator();
        String name = null;
        while (it.hasNext()) {
            name = ((X500Principal) it.next()).getName("RFC1779");
            for (String str : strArr3) {
                arrayList.addAll(m36604extends(strArr2, "*" + m36601default(name, str) + "*", strArr));
            }
        }
        if (name == null) {
            arrayList.addAll(m36604extends(strArr2, "*", strArr));
        }
        return arrayList;
    }

    /* renamed from: goto, reason: not valid java name */
    private Set m36607goto(List list, ah2 ah2Var) throws r12 {
        HashSet hashSet = new HashSet();
        Iterator it = list.iterator();
        Cinstanceof cinstanceof = new Cinstanceof();
        while (it.hasNext()) {
            try {
                cinstanceof.mo35048do(new ByteArrayInputStream((byte[]) it.next()));
                X509Certificate x509Certificate = (X509Certificate) cinstanceof.mo35050if();
                if (ah2Var.match((Object) x509Certificate)) {
                    hashSet.add(x509Certificate);
                }
            } catch (Exception unused) {
            }
        }
        return hashSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003d  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List m36608if(Ccatch ccatch, String[] strArr, String[] strArr2, String[] strArr3) throws r12 {
        Principal[] principalArrM36460new;
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        if (ccatch.m36434goto() == null) {
            principalArrM36460new = null;
        } else {
            if (ccatch.m36434goto().m36455break() != null) {
                hashSet.add(ccatch.m36434goto().m36455break().toString());
            }
            if (ccatch.m36434goto().m36460new() != null) {
                principalArrM36460new = ccatch.m36434goto().m36460new();
            }
        }
        if (ccatch.m36426case() != null) {
            if (ccatch.m36426case().getHolder().m36460new() != null) {
                principalArrM36460new = ccatch.m36426case().getHolder().m36460new();
            }
            hashSet.add(ccatch.m36426case().getSerialNumber().toString());
        }
        String name = principalArrM36460new != null ? principalArrM36460new[0] instanceof X500Principal ? ((X500Principal) principalArrM36460new[0]).getName("RFC1779") : principalArrM36460new[0].getName() : null;
        if (ccatch.m36425break() != null) {
            hashSet.add(ccatch.m36425break().toString());
        }
        if (name != null) {
            for (String str : strArr3) {
                arrayList.addAll(m36604extends(strArr2, "*" + m36601default(name, str) + "*", strArr));
            }
        }
        if (hashSet.size() > 0 && this.f32775do.m35176instanceof() != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                arrayList.addAll(m36604extends(m36605finally(this.f32775do.m35176instanceof()), (String) it.next(), strArr));
            }
        }
        if (hashSet.size() == 0 && name == null) {
            arrayList.addAll(m36604extends(strArr2, "*", strArr));
        }
        return arrayList;
    }

    /* renamed from: import, reason: not valid java name */
    private X500Principal m36609import(X509Certificate x509Certificate) {
        return x509Certificate.getIssuerX500Principal();
    }

    /* renamed from: new, reason: not valid java name */
    private List m36610new(ah2 ah2Var, String[] strArr, String[] strArr2, String[] strArr3) throws r12, IOException {
        ArrayList arrayList = new ArrayList();
        String strM36612switch = m36612switch(ah2Var);
        String string = ah2Var.getSerialNumber() != null ? ah2Var.getSerialNumber().toString() : null;
        if (ah2Var.getCertificate() != null) {
            strM36612switch = ah2Var.getCertificate().getSubjectX500Principal().getName("RFC1779");
            string = ah2Var.getCertificate().getSerialNumber().toString();
        }
        if (strM36612switch != null) {
            for (String str : strArr3) {
                arrayList.addAll(m36604extends(strArr2, "*" + m36601default(strM36612switch, str) + "*", strArr));
            }
        }
        if (string != null && this.f32775do.m35176instanceof() != null) {
            arrayList.addAll(m36604extends(m36605finally(this.f32775do.m35176instanceof()), string, strArr));
        }
        if (string == null && strM36612switch == null) {
            arrayList.addAll(m36604extends(strArr2, "*", strArr));
        }
        return arrayList;
    }

    /* renamed from: static, reason: not valid java name */
    private List m36611static(String str) {
        List list = (List) this.f32776if.get(str);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (list == null || ((Date) list.get(0)).getTime() < jCurrentTimeMillis - f32772goto) {
            return null;
        }
        return (List) list.get(1);
    }

    /* renamed from: switch, reason: not valid java name */
    private String m36612switch(ah2 ah2Var) throws IOException {
        try {
            byte[] subjectAsBytes = ah2Var.getSubjectAsBytes();
            if (subjectAsBytes != null) {
                return new X500Principal(subjectAsBytes).getName("RFC1779");
            }
            return null;
        } catch (IOException e) {
            throw new r12("exception processing name: " + e.getMessage(), e);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private Set m36613this(List list, zg2 zg2Var) throws r12 {
        Cclass cclass;
        HashSet hashSet = new HashSet();
        int i = 0;
        while (i < list.size()) {
            try {
                try {
                    Cimplements cimplements = new Cimplements();
                    cimplements.mo35048do(new ByteArrayInputStream((byte[]) list.get(i)));
                    cclass = (Cclass) cimplements.mo35050if();
                } catch (x12 unused) {
                    int i2 = i + 1;
                    i = i2;
                    cclass = new Cclass(new tg(rg.m6956try(new Celse((byte[]) list.get(i)).m33002break()), rg.m6956try(new Celse((byte[]) list.get(i2)).m33002break())));
                }
                if (zg2Var.match(cclass)) {
                    hashSet.add(cclass);
                }
            } catch (IOException | CertificateParsingException unused2) {
            }
            i++;
        }
        return hashSet;
    }

    /* renamed from: try, reason: not valid java name */
    private DirContext m36614try() throws NamingException {
        Properties properties = new Properties();
        properties.setProperty("java.naming.factory.initial", f32771for);
        properties.setProperty("java.naming.batchsize", "0");
        properties.setProperty("java.naming.provider.url", this.f32775do.m35193transient());
        properties.setProperty("java.naming.factory.url.pkgs", f32769case);
        properties.setProperty("java.naming.referral", f32773new);
        properties.setProperty("java.naming.security.authentication", "none");
        return new InitialDirContext(properties);
    }

    /* renamed from: catch, reason: not valid java name */
    public Collection m36615catch(Ccatch ccatch) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35179new());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35169extends());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.m35194try());
        Set setM36600case = m36600case(m36608if(ccatch, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), ccatch);
        if (setM36600case.size() == 0) {
            setM36600case.addAll(m36600case(m36608if(new Ccatch(), strArrM36605finally, strArrM36605finally2, strArrM36605finally3), ccatch));
        }
        return setM36600case;
    }

    /* renamed from: class, reason: not valid java name */
    public Collection m36616class(yg2 yg2Var) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35163case());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35171finally());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.m35168else());
        Set setM36603else = m36603else(m36606for(yg2Var, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), yg2Var);
        if (setM36603else.size() == 0) {
            setM36603else.addAll(m36603else(m36606for(new yg2(), strArrM36605finally, strArrM36605finally2, strArrM36605finally3), yg2Var));
        }
        return setM36603else;
    }

    /* renamed from: const, reason: not valid java name */
    public Collection m36617const(Ccatch ccatch) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35173goto());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35180package());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.m35190this());
        Set setM36600case = m36600case(m36608if(ccatch, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), ccatch);
        if (setM36600case.size() == 0) {
            setM36600case.addAll(m36600case(m36608if(new Ccatch(), strArrM36605finally, strArrM36605finally2, strArrM36605finally3), ccatch));
        }
        return setM36600case;
    }

    /* renamed from: final, reason: not valid java name */
    public Collection m36618final(yg2 yg2Var) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35162break());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35181private());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.m35164catch());
        Set setM36603else = m36603else(m36606for(yg2Var, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), yg2Var);
        if (setM36603else.size() == 0) {
            setM36603else.addAll(m36603else(m36606for(new yg2(), strArrM36605finally, strArrM36605finally2, strArrM36605finally3), yg2Var));
        }
        return setM36603else;
    }

    /* renamed from: native, reason: not valid java name */
    public Collection m36619native(yg2 yg2Var) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35178native());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35195volatile());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.m35183public());
        Set setM36603else = m36603else(m36606for(yg2Var, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), yg2Var);
        if (setM36603else.size() == 0) {
            setM36603else.addAll(m36603else(m36606for(new yg2(), strArrM36605finally, strArrM36605finally2, strArrM36605finally3), yg2Var));
        }
        return setM36603else;
    }

    /* renamed from: public, reason: not valid java name */
    public Collection m36620public(zg2 zg2Var) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35184return());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35177interface());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.m35185static());
        Set setM36613this = m36613this(m36599break(zg2Var, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), zg2Var);
        if (setM36613this.size() == 0) {
            ah2 ah2Var = new ah2();
            zg2 zg2Var2 = new zg2();
            zg2Var2.m10200try(ah2Var);
            zg2Var2.m10195case(ah2Var);
            setM36613this.addAll(m36613this(m36599break(zg2Var2, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), zg2Var));
        }
        return setM36613this;
    }

    /* renamed from: return, reason: not valid java name */
    public Collection m36621return(yg2 yg2Var) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35188switch());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35182protected());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.m35192throws());
        Set setM36603else = m36603else(m36606for(yg2Var, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), yg2Var);
        if (setM36603else.size() == 0) {
            setM36603else.addAll(m36603else(m36606for(new yg2(), strArrM36605finally, strArrM36605finally2, strArrM36605finally3), yg2Var));
        }
        return setM36603else;
    }

    /* renamed from: super, reason: not valid java name */
    public Collection m36622super(Ccatch ccatch) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35165class());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35161abstract());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.m35166const());
        Set setM36600case = m36600case(m36608if(ccatch, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), ccatch);
        if (setM36600case.size() == 0) {
            setM36600case.addAll(m36600case(m36608if(new Ccatch(), strArrM36605finally, strArrM36605finally2, strArrM36605finally3), ccatch));
        }
        return setM36600case;
    }

    /* renamed from: throw, reason: not valid java name */
    public Collection m36623throw(yg2 yg2Var) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35170final());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35167continue());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.m35187super());
        Set setM36603else = m36603else(m36606for(yg2Var, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), yg2Var);
        if (setM36603else.size() == 0) {
            setM36603else.addAll(m36603else(m36606for(new yg2(), strArrM36605finally, strArrM36605finally2, strArrM36605finally3), yg2Var));
        }
        return setM36603else;
    }

    /* renamed from: throws, reason: not valid java name */
    public Collection m36624throws(ah2 ah2Var) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35189synchronized());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35174implements());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.a());
        Set setM36607goto = m36607goto(m36610new(ah2Var, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), ah2Var);
        if (setM36607goto.size() == 0) {
            setM36607goto.addAll(m36607goto(m36610new(new ah2(), strArrM36605finally, strArrM36605finally2, strArrM36605finally3), ah2Var));
        }
        return setM36607goto;
    }

    /* renamed from: while, reason: not valid java name */
    public Collection m36625while(ah2 ah2Var) throws r12 {
        String[] strArrM36605finally = m36605finally(this.f32775do.m35196while());
        String[] strArrM36605finally2 = m36605finally(this.f32775do.m35186strictfp());
        String[] strArrM36605finally3 = m36605finally(this.f32775do.m35175import());
        Set setM36607goto = m36607goto(m36610new(ah2Var, strArrM36605finally, strArrM36605finally2, strArrM36605finally3), ah2Var);
        if (setM36607goto.size() == 0) {
            setM36607goto.addAll(m36607goto(m36610new(new ah2(), strArrM36605finally, strArrM36605finally2, strArrM36605finally3), ah2Var));
        }
        return setM36607goto;
    }
}
