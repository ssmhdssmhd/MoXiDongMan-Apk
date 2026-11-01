package org.bouncycastle.util.io.pem;

import android.support.v4.ad1;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import org.bouncycastle.util.encoders.Cdo;

/* renamed from: org.bouncycastle.util.io.pem.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends BufferedWriter {

    /* renamed from: for, reason: not valid java name */
    private static final int f32664for = 64;

    /* renamed from: do, reason: not valid java name */
    private final int f32665do;

    /* renamed from: if, reason: not valid java name */
    private char[] f32666if;

    public Cfor(Writer writer) {
        super(writer);
        this.f32666if = new char[64];
        String strM36360new = org.bouncycastle.util.Cfor.m36360new();
        this.f32665do = strM36360new != null ? strM36360new.length() : 2;
    }

    /* renamed from: if, reason: not valid java name */
    private void m36374if(byte[] bArr) throws IOException {
        char[] cArr;
        int i;
        byte[] bArrM36320else = Cdo.m36320else(bArr);
        int length = 0;
        while (length < bArrM36320else.length) {
            int i2 = 0;
            while (true) {
                cArr = this.f32666if;
                if (i2 == cArr.length || (i = length + i2) >= bArrM36320else.length) {
                    break;
                }
                cArr[i2] = (char) bArrM36320else[i];
                i2++;
            }
            write(cArr, 0, i2);
            newLine();
            length += this.f32666if.length;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m36375new(String str) throws IOException {
        write("-----END " + str + "-----");
        newLine();
    }

    /* renamed from: try, reason: not valid java name */
    private void m36376try(String str) throws IOException {
        write("-----BEGIN " + str + "-----");
        newLine();
    }

    /* renamed from: do, reason: not valid java name */
    public int m36377do(Cdo cdo) {
        int length = ((cdo.m36372for().length() + 10 + this.f32665do) * 2) + 6 + 4;
        if (!cdo.m36373if().isEmpty()) {
            for (ad1 ad1Var : cdo.m36373if()) {
                length += ad1Var.m180if().length() + 2 + ad1Var.m179for().length() + this.f32665do;
            }
            length += this.f32665do;
        }
        return length + (((cdo.m36371do().length + 2) / 3) * 4) + ((((r5 + 64) - 1) / 64) * this.f32665do);
    }

    /* renamed from: for, reason: not valid java name */
    public void m36378for(PemObjectGenerator pemObjectGenerator) throws IOException {
        Cdo cdoGenerate = pemObjectGenerator.generate();
        m36376try(cdoGenerate.m36372for());
        if (!cdoGenerate.m36373if().isEmpty()) {
            for (ad1 ad1Var : cdoGenerate.m36373if()) {
                write(ad1Var.m180if());
                write(": ");
                write(ad1Var.m179for());
                newLine();
            }
            newLine();
        }
        m36374if(cdoGenerate.m36371do());
        m36375new(cdoGenerate.m36372for());
    }
}
