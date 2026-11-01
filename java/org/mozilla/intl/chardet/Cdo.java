package org.mozilla.intl.chardet;

import android.support.v4.dm2;
import java.io.BufferedInputStream;
import java.net.URL;

/* renamed from: org.mozilla.intl.chardet.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static boolean f33933do;

    /* renamed from: org.mozilla.intl.chardet.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0486do implements nsICharsetDetectionObserver {
        @Override // org.mozilla.intl.chardet.nsICharsetDetectionObserver
        public void Notify(String str) {
            Cdo.f33933do = true;
            System.out.println("CHARSET = " + str);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m37929do(String[] strArr) throws Exception {
        if (strArr.length != 1 && strArr.length != 2) {
            System.out.println("Usage: HtmlCharsetDetector <url> [<languageHint>]");
            System.out.println("");
            System.out.println("Where <url> is http://...");
            System.out.println("For optional <languageHint>. Use following...");
            System.out.println("\t\t1 => Japanese");
            System.out.println("\t\t2 => Chinese");
            System.out.println("\t\t3 => Simplified Chinese");
            System.out.println("\t\t4 => Traditional Chinese");
            System.out.println("\t\t5 => Korean");
            System.out.println("\t\t6 => Dont know (default)");
            return;
        }
        dm2 dm2Var = new dm2(strArr.length == 2 ? Integer.parseInt(strArr[1]) : 0);
        dm2Var.Init(new C0486do());
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new URL(strArr[0]).openStream());
        byte[] bArr = new byte[1024];
        boolean zM1440this = true;
        boolean zDoIt = false;
        while (true) {
            int i = bufferedInputStream.read(bArr, 0, 1024);
            if (i == -1) {
                break;
            }
            if (zM1440this) {
                zM1440this = dm2Var.m1440this(bArr, i);
            }
            if (!zM1440this && !zDoIt) {
                zDoIt = dm2Var.DoIt(bArr, i, false);
            }
        }
        dm2Var.m6122do();
        if (zM1440this) {
            System.out.println("CHARSET = ASCII");
            f33933do = true;
        }
        if (f33933do) {
            return;
        }
        for (String str : dm2Var.m6123else()) {
            System.out.println("Probable Charset = " + str);
        }
    }
}
