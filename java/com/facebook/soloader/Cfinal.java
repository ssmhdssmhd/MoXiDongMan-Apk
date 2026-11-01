package com.facebook.soloader;

import android.content.Context;
import android.support.v4.y41;
import com.facebook.soloader.Cstatic;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* renamed from: com.facebook.soloader.final, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfinal extends Cstatic {

    /* renamed from: extends, reason: not valid java name */
    public final File f10642extends;

    /* renamed from: finally, reason: not valid java name */
    public final String f10643finally;

    /* renamed from: com.facebook.soloader.final$for, reason: invalid class name */
    public class Cfor extends Cstatic.Ccase {

        /* renamed from: do, reason: not valid java name */
        @y41
        private Cif[] f10644do;

        /* renamed from: for, reason: not valid java name */
        private final Cstatic f10645for;

        /* renamed from: if, reason: not valid java name */
        private final ZipFile f10646if;

        /* renamed from: com.facebook.soloader.final$for$do, reason: invalid class name */
        public final class Cdo extends Cstatic.Ctry {

            /* renamed from: do, reason: not valid java name */
            private int f10648do;

            private Cdo() {
            }

            @Override // com.facebook.soloader.Cstatic.Ctry
            /* renamed from: do */
            public boolean mo12157do() {
                Cfor.this.m12164try();
                return this.f10648do < Cfor.this.f10644do.length;
            }

            @Override // com.facebook.soloader.Cstatic.Ctry
            /* renamed from: if */
            public Cstatic.Cnew mo12158if() throws IOException {
                Cfor.this.m12164try();
                Cif[] cifArr = Cfor.this.f10644do;
                int i = this.f10648do;
                this.f10648do = i + 1;
                Cif cif = cifArr[i];
                InputStream inputStream = Cfor.this.f10646if.getInputStream(cif.f10650for);
                try {
                    return new Cstatic.Cnew(cif, inputStream);
                } catch (Throwable th) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            }
        }

        public Cfor(Cstatic cstatic) throws IOException {
            this.f10646if = new ZipFile(Cfinal.this.f10642extends);
            this.f10645for = cstatic;
        }

        /* renamed from: case, reason: not valid java name */
        public boolean mo12163case(ZipEntry zipEntry, String str) {
            return true;
        }

        @Override // com.facebook.soloader.Cstatic.Ccase, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f10646if.close();
        }

        @Override // com.facebook.soloader.Cstatic.Ccase
        /* renamed from: do */
        public final Cstatic.Cfor mo12155do() throws IOException {
            return new Cstatic.Cfor(m12164try());
        }

        @Override // com.facebook.soloader.Cstatic.Ccase
        /* renamed from: if */
        public final Cstatic.Ctry mo12156if() throws IOException {
            return new Cdo();
        }

        /* renamed from: try, reason: not valid java name */
        public final Cif[] m12164try() {
            if (this.f10644do == null) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                HashMap map = new HashMap();
                Pattern patternCompile = Pattern.compile(Cfinal.this.f10643finally);
                String[] strArrM12214goto = Creturn.m12214goto();
                Enumeration<? extends ZipEntry> enumerationEntries = this.f10646if.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    Matcher matcher = patternCompile.matcher(zipEntryNextElement.getName());
                    if (matcher.matches()) {
                        String strGroup = matcher.group(1);
                        String strGroup2 = matcher.group(2);
                        int iM12218try = Creturn.m12218try(strArrM12214goto, strGroup);
                        if (iM12218try >= 0) {
                            linkedHashSet.add(strGroup);
                            Cif cif = (Cif) map.get(strGroup2);
                            if (cif == null || iM12218try < cif.f10651new) {
                                map.put(strGroup2, new Cif(strGroup2, zipEntryNextElement, iM12218try));
                            }
                        }
                    }
                }
                this.f10645for.m12230public((String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]));
                Cif[] cifArr = (Cif[]) map.values().toArray(new Cif[map.size()]);
                Arrays.sort(cifArr);
                int i = 0;
                for (int i2 = 0; i2 < cifArr.length; i2++) {
                    Cif cif2 = cifArr[i2];
                    if (mo12163case(cif2.f10650for, cif2.f10743do)) {
                        i++;
                    } else {
                        cifArr[i2] = null;
                    }
                }
                Cif[] cifArr2 = new Cif[i];
                int i3 = 0;
                for (Cif cif3 : cifArr) {
                    if (cif3 != null) {
                        cifArr2[i3] = cif3;
                        i3++;
                    }
                }
                this.f10644do = cifArr2;
            }
            return this.f10644do;
        }
    }

    /* renamed from: com.facebook.soloader.final$if, reason: invalid class name */
    public static final class Cif extends Cstatic.Cif implements Comparable {

        /* renamed from: for, reason: not valid java name */
        public final ZipEntry f10650for;

        /* renamed from: new, reason: not valid java name */
        public final int f10651new;

        public Cif(String str, ZipEntry zipEntry, int i) {
            super(str, m12165do(zipEntry));
            this.f10650for = zipEntry;
            this.f10651new = i;
        }

        /* renamed from: do, reason: not valid java name */
        private static String m12165do(ZipEntry zipEntry) {
            return String.format("pseudo-zip-hash-1-%s-%s-%s-%s", zipEntry.getName(), Long.valueOf(zipEntry.getSize()), Long.valueOf(zipEntry.getCompressedSize()), Long.valueOf(zipEntry.getCrc()));
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f10743do.compareTo(((Cif) obj).f10743do);
        }
    }

    public Cfinal(Context context, String str, File file, String str2) {
        super(context, str);
        this.f10642extends = file;
        this.f10643finally = str2;
    }

    @Override // com.facebook.soloader.Cstatic
    /* renamed from: throw */
    public Cstatic.Ccase mo12153throw() throws IOException {
        return new Cfor(this);
    }
}
