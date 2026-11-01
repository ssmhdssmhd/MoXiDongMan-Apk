package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import com.facebook.soloader.Cfinal;
import com.facebook.soloader.Cstatic;
import java.io.File;
import java.io.IOException;
import java.util.zip.ZipEntry;

/* renamed from: com.facebook.soloader.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif extends Cfinal {

    /* renamed from: abstract, reason: not valid java name */
    public static final int f10665abstract = 1;

    /* renamed from: continue, reason: not valid java name */
    private static final byte f10666continue = 2;

    /* renamed from: interface, reason: not valid java name */
    private static final byte f10667interface = 2;

    /* renamed from: private, reason: not valid java name */
    private static final String f10668private = "ApkSoSource";

    /* renamed from: strictfp, reason: not valid java name */
    private static final byte f10669strictfp = 0;

    /* renamed from: volatile, reason: not valid java name */
    private static final byte f10670volatile = 1;

    /* renamed from: package, reason: not valid java name */
    private final int f10671package;

    /* renamed from: com.facebook.soloader.if$do, reason: invalid class name */
    public class Cdo extends Cfinal.Cfor {

        /* renamed from: case, reason: not valid java name */
        private final int f10672case;

        /* renamed from: try, reason: not valid java name */
        private File f10674try;

        public Cdo(Cfinal cfinal) throws IOException {
            super(cfinal);
            this.f10674try = new File(Cif.this.f10732final.getApplicationInfo().nativeLibraryDir);
            this.f10672case = Cif.this.f10671package;
        }

        @Override // com.facebook.soloader.Cfinal.Cfor
        /* renamed from: case */
        public boolean mo12163case(ZipEntry zipEntry, String str) {
            String name = zipEntry.getName();
            if (str.equals(Cif.this.f10733super)) {
                Cif.this.f10733super = null;
                String.format("allowing consideration of corrupted lib %s", str);
            } else if ((this.f10672case & 1) == 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("allowing consideration of ");
                sb.append(name);
                sb.append(": self-extraction preferred");
            } else {
                File file = new File(this.f10674try, str);
                if (file.isFile()) {
                    long length = file.length();
                    long size = zipEntry.getSize();
                    if (length == size) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("not allowing consideration of ");
                        sb2.append(name);
                        sb2.append(": deferring to libdir");
                        return false;
                    }
                    String.format("allowing consideration of %s: sysdir file length is %s, but the file is %s bytes long in the APK", file, Long.valueOf(length), Long.valueOf(size));
                } else {
                    String.format("allowing considering of %s: %s not in system lib dir", name, str);
                }
            }
            return true;
        }
    }

    public Cif(Context context, String str, int i) {
        this(context, new File(context.getApplicationInfo().sourceDir), str, i);
    }

    @Override // com.facebook.soloader.Cstatic
    /* renamed from: const, reason: not valid java name */
    public byte[] mo12171const() throws IOException {
        File canonicalFile = this.f10642extends.getCanonicalFile();
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeByte((byte) 2);
            parcelObtain.writeString(canonicalFile.getPath());
            parcelObtain.writeLong(canonicalFile.lastModified());
            parcelObtain.writeInt(Creturn.m12212else(this.f10732final));
            if ((this.f10671package & 1) == 0) {
                parcelObtain.writeByte((byte) 0);
                return parcelObtain.marshall();
            }
            String str = this.f10732final.getApplicationInfo().nativeLibraryDir;
            if (str == null) {
                parcelObtain.writeByte((byte) 1);
                return parcelObtain.marshall();
            }
            File canonicalFile2 = new File(str).getCanonicalFile();
            if (!canonicalFile2.exists()) {
                parcelObtain.writeByte((byte) 1);
                return parcelObtain.marshall();
            }
            parcelObtain.writeByte((byte) 2);
            parcelObtain.writeString(canonicalFile2.getPath());
            parcelObtain.writeLong(canonicalFile2.lastModified());
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // com.facebook.soloader.Cfinal, com.facebook.soloader.Cstatic
    /* renamed from: throw */
    public Cstatic.Ccase mo12153throw() throws IOException {
        return new Cdo(this);
    }

    public Cif(Context context, File file, String str, int i) {
        super(context, str, file, "^lib/([^/]+)/([^/]+\\.so)$");
        this.f10671package = i;
    }
}
