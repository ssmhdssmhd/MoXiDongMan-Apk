package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.Cstatic;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* renamed from: com.facebook.soloader.const, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cconst extends Cstatic {

    /* renamed from: com.facebook.soloader.const$for, reason: invalid class name */
    public static final class Cfor extends Cstatic.Cif {

        /* renamed from: for, reason: not valid java name */
        public final File f10628for;

        public Cfor(String str, String str2, File file) {
            super(str, str2);
            this.f10628for = file;
        }
    }

    /* renamed from: com.facebook.soloader.const$if, reason: invalid class name */
    public final class Cif extends Cstatic.Ccase {

        /* renamed from: do, reason: not valid java name */
        private final Cfor[] f10629do;

        /* renamed from: com.facebook.soloader.const$if$do, reason: invalid class name */
        public final class Cdo extends Cstatic.Ctry {

            /* renamed from: do, reason: not valid java name */
            private int f10631do;

            private Cdo() {
            }

            @Override // com.facebook.soloader.Cstatic.Ctry
            /* renamed from: do, reason: not valid java name */
            public boolean mo12157do() {
                return this.f10631do < Cif.this.f10629do.length;
            }

            @Override // com.facebook.soloader.Cstatic.Ctry
            /* renamed from: if, reason: not valid java name */
            public Cstatic.Cnew mo12158if() throws IOException {
                Cfor[] cforArr = Cif.this.f10629do;
                int i = this.f10631do;
                this.f10631do = i + 1;
                Cfor cfor = cforArr[i];
                FileInputStream fileInputStream = new FileInputStream(cfor.f10628for);
                try {
                    return new Cstatic.Cnew(cfor, fileInputStream);
                } catch (Throwable th) {
                    fileInputStream.close();
                    throw th;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00e4, code lost:
        
            throw new java.lang.RuntimeException("illegal line in exopackage metadata: [" + r11 + "]");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Cif(Cstatic cstatic) throws IOException {
            boolean z;
            File file = new File("/data/local/tmp/exopackage/" + Cconst.this.f10732final.getPackageName() + "/native-libs/");
            ArrayList arrayList = new ArrayList();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            String[] strArrM12214goto = Creturn.m12214goto();
            int length = strArrM12214goto.length;
            int i = 0;
            int i2 = 0;
            loop0: while (i2 < length) {
                String str = strArrM12214goto[i2];
                File file2 = new File(file, str);
                if (file2.isDirectory()) {
                    linkedHashSet.add(str);
                    File file3 = new File(file2, "metadata.txt");
                    if (file3.isFile()) {
                        FileReader fileReader = new FileReader(file3);
                        try {
                            BufferedReader bufferedReader = new BufferedReader(fileReader);
                            while (true) {
                                try {
                                    String line = bufferedReader.readLine();
                                    if (line == null) {
                                        bufferedReader.close();
                                        fileReader.close();
                                        break;
                                    }
                                    if (line.length() != 0) {
                                        int iIndexOf = line.indexOf(32);
                                        if (iIndexOf == -1) {
                                            break loop0;
                                        }
                                        String str2 = line.substring(i, iIndexOf) + ".so";
                                        int size = arrayList.size();
                                        int i3 = 0;
                                        while (true) {
                                            if (i3 >= size) {
                                                z = false;
                                                break;
                                            } else {
                                                if (((Cfor) arrayList.get(i3)).f10743do.equals(str2)) {
                                                    z = true;
                                                    break;
                                                }
                                                i3++;
                                            }
                                        }
                                        if (!z) {
                                            String strSubstring = line.substring(iIndexOf + 1);
                                            arrayList.add(new Cfor(str2, strSubstring, new File(file2, strSubstring)));
                                        }
                                        i = 0;
                                    }
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        try {
                                            bufferedReader.close();
                                            throw th2;
                                        } catch (Throwable th3) {
                                            th.addSuppressed(th3);
                                            throw th2;
                                        }
                                    }
                                }
                            }
                        } finally {
                        }
                    } else {
                        continue;
                    }
                }
                i2++;
                i = 0;
            }
            cstatic.m12230public((String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]));
            this.f10629do = (Cfor[]) arrayList.toArray(new Cfor[arrayList.size()]);
        }

        @Override // com.facebook.soloader.Cstatic.Ccase
        /* renamed from: do, reason: not valid java name */
        public Cstatic.Cfor mo12155do() throws IOException {
            return new Cstatic.Cfor(this.f10629do);
        }

        @Override // com.facebook.soloader.Cstatic.Ccase
        /* renamed from: if, reason: not valid java name */
        public Cstatic.Ctry mo12156if() throws IOException {
            return new Cdo();
        }
    }

    public Cconst(Context context, String str) {
        super(context, str);
    }

    @Override // com.facebook.soloader.Cstatic
    /* renamed from: throw, reason: not valid java name */
    public Cstatic.Ccase mo12153throw() throws IOException {
        return new Cif(this);
    }
}
