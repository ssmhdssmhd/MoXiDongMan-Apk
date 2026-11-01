package org.bouncycastle.jce;

import android.support.v4.b1;
import android.support.v4.er;
import android.support.v4.id1;
import android.support.v4.v00;
import android.support.v4.yw0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.l;

/* renamed from: org.bouncycastle.jce.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {
    /* renamed from: do, reason: not valid java name */
    private static byte[] m34933do(Ccatch ccatch, byte[] bArr, int i, char[] cArr, byte[] bArr2, String str) throws Exception {
        SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(ccatch.m32795super(), str);
        PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, i);
        SecretKey secretKeyGenerateSecret = secretKeyFactory.generateSecret(new PBEKeySpec(cArr));
        Mac mac = Mac.getInstance(ccatch.m32795super(), str);
        mac.init(secretKeyGenerateSecret, pBEParameterSpec);
        mac.update(bArr2);
        return mac.doFinal();
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m34934for(byte[] bArr, char[] cArr, String str) throws IOException {
        id1 id1VarM3381try = id1.m3381try(bArr);
        er erVarM3383new = id1VarM3381try.m3383new();
        Cclass cclassM32796catch = Cclass.m32796catch(erVarM3383new.m1997new());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        l lVar = new l(byteArrayOutputStream);
        lVar.mo32770const(new Celse(cclassM32796catch.mo5490const()).m33002break());
        er erVar = new er(erVarM3383new.m1998try(), new j(byteArrayOutputStream.toByteArray()));
        yw0 yw0VarM3382case = id1VarM3381try.m3382case();
        try {
            int iIntValue = yw0VarM3382case.m9977try().intValue();
            id1 id1Var = new id1(erVar, new yw0(new v00(new b1(yw0VarM3382case.m9975case().m8709new().m420new(), h.f29080do), m34933do(yw0VarM3382case.m9975case().m8709new().m420new(), yw0VarM3382case.m9976else(), iIntValue, cArr, Cclass.m32796catch(erVar.m1997new()).mo5490const(), str)), yw0VarM3382case.m9976else(), iIntValue));
            byteArrayOutputStream.reset();
            lVar.mo32770const(id1Var);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new IOException("error constructing MAC: " + e.toString());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m34935if(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        l lVar = new l(byteArrayOutputStream);
        id1 id1VarM3381try = id1.m3381try(bArr);
        byteArrayOutputStream.reset();
        lVar.mo32770const(id1VarM3381try);
        return byteArrayOutputStream.toByteArray();
    }
}
