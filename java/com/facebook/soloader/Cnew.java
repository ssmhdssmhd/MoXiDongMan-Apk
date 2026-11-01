package com.facebook.soloader;

import android.os.StrictMode;
import android.support.v4.on0;
import android.support.v4.y41;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;

/* renamed from: com.facebook.soloader.new, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnew extends Cpublic {

    /* renamed from: class, reason: not valid java name */
    public static final int f10708class = 1;

    /* renamed from: const, reason: not valid java name */
    public static final int f10709const = 2;

    /* renamed from: break, reason: not valid java name */
    public final File f10710break;

    /* renamed from: catch, reason: not valid java name */
    public final int f10711catch;

    public Cnew(File file, int i) {
        this.f10710break = file;
        this.f10711catch = i;
    }

    /* renamed from: else, reason: not valid java name */
    private static String[] m12205else(File file) throws IOException {
        boolean z = Cnative.f10689for;
        if (z) {
            Cdo.m12159do("SoLoader.getElfDependencies[", file.getName(), "]");
        }
        try {
            String[] strArrM12238do = Cwhile.m12238do(file);
            if (z) {
                Cdo.m12160if();
            }
            return strArrM12238do;
        } catch (Throwable th) {
            if (Cnative.f10689for) {
                Cdo.m12160if();
            }
            throw th;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m12206goto(File file, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        String[] strArrM12205else = m12205else(file);
        StringBuilder sb = new StringBuilder();
        sb.append("Loading lib dependencies: ");
        sb.append(Arrays.toString(strArrM12205else));
        for (String str : strArrM12205else) {
            if (!str.startsWith(on0.f4694final)) {
                Cnative.m12196super(str, (i | 1) & (-3), threadPolicy);
            }
        }
    }

    @Override // com.facebook.soloader.Cpublic
    @y41
    /* renamed from: case */
    public File mo2943case(String str) throws IOException {
        File file = new File(this.f10710break, str);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    @Override // com.facebook.soloader.Cpublic
    /* renamed from: do */
    public void mo12166do(Collection<String> collection) {
        collection.add(this.f10710break.getAbsolutePath());
    }

    @Override // com.facebook.soloader.Cpublic
    @y41
    /* renamed from: if */
    public String mo12168if(String str) throws IOException {
        File file = new File(this.f10710break, str);
        if (file.exists()) {
            return file.getCanonicalPath();
        }
        return null;
    }

    @Override // com.facebook.soloader.Cpublic
    /* renamed from: new */
    public int mo2944new(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return m12207this(str, i, this.f10710break, threadPolicy);
    }

    /* renamed from: this, reason: not valid java name */
    public int m12207this(String str, int i, File file, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" not found on ");
            sb.append(file.getCanonicalPath());
            return 0;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" found on ");
        sb2.append(file.getCanonicalPath());
        if ((i & 1) != 0 && (this.f10711catch & 2) != 0) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append(" loaded implicitly");
            return 2;
        }
        if ((this.f10711catch & 1) != 0) {
            m12206goto(file2, i, threadPolicy);
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Not resolving dependencies for ");
            sb4.append(str);
        }
        try {
            Cnative.f10694new.load(file2.getAbsolutePath(), i);
            return 1;
        } catch (UnsatisfiedLinkError e) {
            if (e.getMessage().contains("bad ELF magic")) {
                return 3;
            }
            throw e;
        }
    }

    @Override // com.facebook.soloader.Cpublic
    public String toString() {
        String name;
        try {
            name = String.valueOf(this.f10710break.getCanonicalPath());
        } catch (IOException unused) {
            name = this.f10710break.getName();
        }
        return getClass().getName() + "[root = " + name + " flags = " + this.f10711catch + ']';
    }
}
