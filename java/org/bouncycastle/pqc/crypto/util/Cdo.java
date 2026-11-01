package org.bouncycastle.pqc.crypto.util;

import android.support.v4.a4;
import android.support.v4.ar1;
import android.support.v4.gi2;
import android.support.v4.ib1;
import android.support.v4.ji2;
import android.support.v4.oi2;
import android.support.v4.pi1;
import android.support.v4.r11;
import android.support.v4.yq1;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.bc.BCObjectIdentifiers;
import org.bouncycastle.pqc.asn1.PQCObjectIdentifiers;
import org.bouncycastle.pqc.crypto.xmss.Cfinally;
import org.bouncycastle.pqc.crypto.xmss.Cif;
import org.bouncycastle.pqc.crypto.xmss.Cpackage;
import org.bouncycastle.pqc.crypto.xmss.Cpublic;
import org.bouncycastle.pqc.crypto.xmss.Creturn;
import org.bouncycastle.pqc.crypto.xmss.Cvolatile;

/* renamed from: org.bouncycastle.pqc.crypto.util.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {
    /* renamed from: do, reason: not valid java name */
    private static short[] m35803do(byte[] bArr) {
        int length = bArr.length / 2;
        short[] sArr = new short[length];
        for (int i = 0; i != length; i++) {
            sArr[i] = ib1.m3368return(bArr, i * 2);
        }
        return sArr;
    }

    /* renamed from: for, reason: not valid java name */
    public static a4 m35804for(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        Ccatch ccatchM420new = cdo.m33104else().m420new();
        if (ccatchM420new.m32794return(BCObjectIdentifiers.qTESLA)) {
            return new pi1(Ctry.m35819for(cdo.m33104else()), Cclass.m32796catch(cdo.m33102catch()).mo5490const());
        }
        if (ccatchM420new.equals(BCObjectIdentifiers.sphincs256)) {
            return new ar1(Cclass.m32796catch(cdo.m33102catch()).mo5490const(), Ctry.m35822try(yq1.m9929new(cdo.m33104else().m419else())));
        }
        if (ccatchM420new.equals(BCObjectIdentifiers.newHope)) {
            return new r11(m35803do(Cclass.m32796catch(cdo.m33102catch()).mo5490const()));
        }
        if (ccatchM420new.equals(BCObjectIdentifiers.xmss)) {
            gi2 gi2VarM2697try = gi2.m2697try(cdo.m33104else().m419else());
            Ccatch ccatchM420new2 = gi2VarM2697try.m2698case().m420new();
            oi2 oi2VarM5664case = oi2.m5664case(cdo.m33102catch());
            try {
                Cpackage.Cif cifM35937super = new Cpackage.Cif(new Cfinally(gi2VarM2697try.m2699new(), Ctry.m35818do(ccatchM420new2))).m35934class(oi2VarM5664case.m5670try()).m35939while(oi2VarM5664case.m5665break()).m35938throw(oi2VarM5664case.m5669this()).m35936final(oi2VarM5664case.m5666else()).m35937super(oi2VarM5664case.m5667goto());
                if (oi2VarM5664case.m5668new() != null) {
                    cifM35937super.m35933catch(((org.bouncycastle.pqc.crypto.xmss.Cdo) Cvolatile.m36070else(oi2VarM5664case.m5668new(), org.bouncycastle.pqc.crypto.xmss.Cdo.class)).withWOTSDigest(ccatchM420new2));
                }
                return cifM35937super.m35932break();
            } catch (ClassNotFoundException e) {
                throw new IOException("ClassNotFoundException processing BDS state: " + e.getMessage());
            }
        }
        if (!ccatchM420new.equals(PQCObjectIdentifiers.xmss_mt)) {
            throw new RuntimeException("algorithm identifier in private key not recognised");
        }
        ji2 ji2VarM3903try = ji2.m3903try(cdo.m33104else().m419else());
        Ccatch ccatchM420new3 = ji2VarM3903try.m3905else().m420new();
        try {
            oi2 oi2VarM5664case2 = oi2.m5664case(cdo.m33102catch());
            Creturn.Cif cifM35983super = new Creturn.Cif(new Cpublic(ji2VarM3903try.m3906new(), ji2VarM3903try.m3904case(), Ctry.m35818do(ccatchM420new3))).m35980class(oi2VarM5664case2.m5670try()).m35985while(oi2VarM5664case2.m5665break()).m35984throw(oi2VarM5664case2.m5669this()).m35982final(oi2VarM5664case2.m5666else()).m35983super(oi2VarM5664case2.m5667goto());
            if (oi2VarM5664case2.m5668new() != null) {
                cifM35983super.m35979catch(((Cif) Cvolatile.m36070else(oi2VarM5664case2.m5668new(), Cif.class)).withWOTSDigest(ccatchM420new3));
            }
            return cifM35983super.m35978break();
        } catch (ClassNotFoundException e2) {
            throw new IOException("ClassNotFoundException processing BDS state: " + e2.getMessage());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m35805if(InputStream inputStream) throws IOException {
        return m35804for(org.bouncycastle.asn1.pkcs.Cdo.m33100try(new Celse(inputStream).m33002break()));
    }

    /* renamed from: new, reason: not valid java name */
    public static a4 m35806new(byte[] bArr) throws IOException {
        return m35804for(org.bouncycastle.asn1.pkcs.Cdo.m33100try(Cfinal.m33015else(bArr)));
    }
}
