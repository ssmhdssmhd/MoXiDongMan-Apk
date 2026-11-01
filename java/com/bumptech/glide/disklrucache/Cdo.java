package com.bumptech.glide.disklrucache;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.Cclass;

/* renamed from: com.bumptech.glide.disklrucache.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo implements Closeable {

    /* renamed from: import, reason: not valid java name */
    public static final String f9286import = "libcore.io.DiskLruCache";

    /* renamed from: native, reason: not valid java name */
    public static final String f9287native = "1";

    /* renamed from: public, reason: not valid java name */
    public static final long f9288public = -1;

    /* renamed from: return, reason: not valid java name */
    private static final String f9289return = "CLEAN";

    /* renamed from: static, reason: not valid java name */
    private static final String f9290static = "DIRTY";

    /* renamed from: super, reason: not valid java name */
    public static final String f9291super = "journal";

    /* renamed from: switch, reason: not valid java name */
    private static final String f9292switch = "REMOVE";

    /* renamed from: throw, reason: not valid java name */
    public static final String f9293throw = "journal.tmp";

    /* renamed from: throws, reason: not valid java name */
    private static final String f9294throws = "READ";

    /* renamed from: while, reason: not valid java name */
    public static final String f9295while = "journal.bkp";

    /* renamed from: case, reason: not valid java name */
    private long f9297case;

    /* renamed from: catch, reason: not valid java name */
    private int f9298catch;

    /* renamed from: do, reason: not valid java name */
    private final File f9301do;

    /* renamed from: else, reason: not valid java name */
    private final int f9302else;

    /* renamed from: for, reason: not valid java name */
    private final File f9304for;

    /* renamed from: if, reason: not valid java name */
    private final File f9306if;

    /* renamed from: new, reason: not valid java name */
    private final File f9307new;

    /* renamed from: this, reason: not valid java name */
    private Writer f9308this;

    /* renamed from: try, reason: not valid java name */
    private final int f9309try;

    /* renamed from: goto, reason: not valid java name */
    private long f9305goto = 0;

    /* renamed from: break, reason: not valid java name */
    private final LinkedHashMap<String, Cnew> f9296break = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: class, reason: not valid java name */
    private long f9299class = 0;

    /* renamed from: const, reason: not valid java name */
    public final ThreadPoolExecutor f9300const = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new Cif(null));

    /* renamed from: final, reason: not valid java name */
    private final Callable<Void> f9303final = new CallableC0022do();

    /* renamed from: com.bumptech.glide.disklrucache.do$do, reason: invalid class name and collision with other inner class name */
    public class CallableC0022do implements Callable<Void> {
        public CallableC0022do() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (Cdo.this) {
                if (Cdo.this.f9308this == null) {
                    return null;
                }
                Cdo.this.m11120volatile();
                if (Cdo.this.m11116switch()) {
                    Cdo.this.m11113package();
                    Cdo.this.f9298catch = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: com.bumptech.glide.disklrucache.do$for, reason: invalid class name */
    public final class Cfor {

        /* renamed from: do, reason: not valid java name */
        private final Cnew f9311do;

        /* renamed from: for, reason: not valid java name */
        private boolean f9312for;

        /* renamed from: if, reason: not valid java name */
        private final boolean[] f9313if;

        public /* synthetic */ Cfor(Cdo cdo, Cnew cnew, CallableC0022do callableC0022do) {
            this(cnew);
        }

        /* renamed from: goto, reason: not valid java name */
        private InputStream m11132goto(int i) throws IOException {
            synchronized (Cdo.this) {
                if (this.f9311do.f9315case != this) {
                    throw new IllegalStateException();
                }
                if (!this.f9311do.f9322try) {
                    return null;
                }
                try {
                    return new FileInputStream(this.f9311do.m11151break(i));
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        /* renamed from: case, reason: not valid java name */
        public File m11134case(int i) throws IOException {
            File fileM11152catch;
            synchronized (Cdo.this) {
                if (this.f9311do.f9315case != this) {
                    throw new IllegalStateException();
                }
                if (!this.f9311do.f9322try) {
                    this.f9313if[i] = true;
                }
                fileM11152catch = this.f9311do.m11152catch(i);
                if (!Cdo.this.f9301do.exists()) {
                    Cdo.this.f9301do.mkdirs();
                }
            }
            return fileM11152catch;
        }

        /* renamed from: do, reason: not valid java name */
        public void m11135do() throws IOException {
            Cdo.this.m11102const(this, false);
        }

        /* renamed from: else, reason: not valid java name */
        public String m11136else(int i) throws IOException {
            InputStream inputStreamM11132goto = m11132goto(i);
            if (inputStreamM11132goto != null) {
                return Cdo.m11114static(inputStreamM11132goto);
            }
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        public void m11137if() {
            if (this.f9312for) {
                return;
            }
            try {
                m11135do();
            } catch (IOException unused) {
            }
        }

        /* renamed from: this, reason: not valid java name */
        public void m11138this(int i, String str) throws Throwable {
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(new FileOutputStream(m11134case(i)), com.bumptech.glide.disklrucache.Cfor.f9329if);
                try {
                    outputStreamWriter2.write(str);
                    com.bumptech.glide.disklrucache.Cfor.m11158do(outputStreamWriter2);
                } catch (Throwable th) {
                    th = th;
                    outputStreamWriter = outputStreamWriter2;
                    com.bumptech.glide.disklrucache.Cfor.m11158do(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        /* renamed from: try, reason: not valid java name */
        public void m11139try() throws IOException {
            Cdo.this.m11102const(this, true);
            this.f9312for = true;
        }

        private Cfor(Cnew cnew) {
            this.f9311do = cnew;
            this.f9313if = cnew.f9322try ? null : new boolean[Cdo.this.f9302else];
        }
    }

    /* renamed from: com.bumptech.glide.disklrucache.do$if, reason: invalid class name */
    public static final class Cif implements ThreadFactory {
        private Cif() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }

        public /* synthetic */ Cif(CallableC0022do callableC0022do) {
            this();
        }
    }

    /* renamed from: com.bumptech.glide.disklrucache.do$new, reason: invalid class name */
    public final class Cnew {

        /* renamed from: case, reason: not valid java name */
        private Cfor f9315case;

        /* renamed from: do, reason: not valid java name */
        private final String f9316do;

        /* renamed from: else, reason: not valid java name */
        private long f9317else;

        /* renamed from: for, reason: not valid java name */
        public File[] f9318for;

        /* renamed from: if, reason: not valid java name */
        private final long[] f9320if;

        /* renamed from: new, reason: not valid java name */
        public File[] f9321new;

        /* renamed from: try, reason: not valid java name */
        private boolean f9322try;

        public /* synthetic */ Cnew(Cdo cdo, String str, CallableC0022do callableC0022do) {
            this(str);
        }

        /* renamed from: const, reason: not valid java name */
        private IOException m11141const(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: final, reason: not valid java name */
        public void m11144final(String[] strArr) throws IOException {
            if (strArr.length != Cdo.this.f9302else) {
                throw m11141const(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f9320if[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw m11141const(strArr);
                }
            }
        }

        /* renamed from: break, reason: not valid java name */
        public File m11151break(int i) {
            return this.f9318for[i];
        }

        /* renamed from: catch, reason: not valid java name */
        public File m11152catch(int i) {
            return this.f9321new[i];
        }

        /* renamed from: class, reason: not valid java name */
        public String m11153class() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.f9320if) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        private Cnew(String str) {
            this.f9316do = str;
            this.f9320if = new long[Cdo.this.f9302else];
            this.f9318for = new File[Cdo.this.f9302else];
            this.f9321new = new File[Cdo.this.f9302else];
            StringBuilder sb = new StringBuilder(str);
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            int length = sb.length();
            for (int i = 0; i < Cdo.this.f9302else; i++) {
                sb.append(i);
                this.f9318for[i] = new File(Cdo.this.f9301do, sb.toString());
                sb.append(".tmp");
                this.f9321new[i] = new File(Cdo.this.f9301do, sb.toString());
                sb.setLength(length);
            }
        }
    }

    /* renamed from: com.bumptech.glide.disklrucache.do$try, reason: invalid class name */
    public final class Ctry {

        /* renamed from: do, reason: not valid java name */
        private final String f9323do;

        /* renamed from: for, reason: not valid java name */
        private final long[] f9324for;

        /* renamed from: if, reason: not valid java name */
        private final long f9325if;

        /* renamed from: new, reason: not valid java name */
        private final File[] f9326new;

        public /* synthetic */ Ctry(Cdo cdo, String str, long j, File[] fileArr, long[] jArr, CallableC0022do callableC0022do) {
            this(str, j, fileArr, jArr);
        }

        /* renamed from: do, reason: not valid java name */
        public Cfor m11154do() throws IOException {
            return Cdo.this.m11121while(this.f9323do, this.f9325if);
        }

        /* renamed from: for, reason: not valid java name */
        public long m11155for(int i) {
            return this.f9324for[i];
        }

        /* renamed from: if, reason: not valid java name */
        public File m11156if(int i) {
            return this.f9326new[i];
        }

        /* renamed from: new, reason: not valid java name */
        public String m11157new(int i) throws IOException {
            return Cdo.m11114static(new FileInputStream(this.f9326new[i]));
        }

        private Ctry(String str, long j, File[] fileArr, long[] jArr) {
            this.f9323do = str;
            this.f9325if = j;
            this.f9326new = fileArr;
            this.f9324for = jArr;
        }
    }

    private Cdo(File file, int i, int i2, long j) {
        this.f9301do = file;
        this.f9309try = i;
        this.f9306if = new File(file, f9291super);
        this.f9304for = new File(file, f9293throw);
        this.f9307new = new File(file, f9295while);
        this.f9302else = i2;
        this.f9297case = j;
    }

    /* renamed from: abstract, reason: not valid java name */
    private static void m11097abstract(File file, File file2, boolean z) throws IOException {
        if (z) {
            m11115super(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m11100catch() {
        if (this.f9308this == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @TargetApi(26)
    /* renamed from: class, reason: not valid java name */
    private static void m11101class(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public synchronized void m11102const(Cfor cfor, boolean z) throws IOException {
        Cnew cnew = cfor.f9311do;
        if (cnew.f9315case != cfor) {
            throw new IllegalStateException();
        }
        if (z && !cnew.f9322try) {
            for (int i = 0; i < this.f9302else; i++) {
                if (!cfor.f9313if[i]) {
                    cfor.m11135do();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!cnew.m11152catch(i).exists()) {
                    cfor.m11135do();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.f9302else; i2++) {
            File fileM11152catch = cnew.m11152catch(i2);
            if (!z) {
                m11115super(fileM11152catch);
            } else if (fileM11152catch.exists()) {
                File fileM11151break = cnew.m11151break(i2);
                fileM11152catch.renameTo(fileM11151break);
                long j = cnew.f9320if[i2];
                long length = fileM11151break.length();
                cnew.f9320if[i2] = length;
                this.f9305goto = (this.f9305goto - j) + length;
            }
        }
        this.f9298catch++;
        cnew.f9315case = null;
        if (cnew.f9322try || z) {
            cnew.f9322try = true;
            this.f9308this.append((CharSequence) f9289return);
            this.f9308this.append(' ');
            this.f9308this.append((CharSequence) cnew.f9316do);
            this.f9308this.append((CharSequence) cnew.m11153class());
            this.f9308this.append('\n');
            if (z) {
                long j2 = this.f9299class;
                this.f9299class = 1 + j2;
                cnew.f9317else = j2;
            }
        } else {
            this.f9296break.remove(cnew.f9316do);
            this.f9308this.append((CharSequence) f9292switch);
            this.f9308this.append(' ');
            this.f9308this.append((CharSequence) cnew.f9316do);
            this.f9308this.append('\n');
        }
        m11111import(this.f9308this);
        if (this.f9305goto > this.f9297case || m11116switch()) {
            this.f9300const.submit(this.f9303final);
        }
    }

    /* renamed from: default, reason: not valid java name */
    private void m11103default() throws IOException {
        m11115super(this.f9304for);
        Iterator<Cnew> it = this.f9296break.values().iterator();
        while (it.hasNext()) {
            Cnew next = it.next();
            int i = 0;
            if (next.f9315case == null) {
                while (i < this.f9302else) {
                    this.f9305goto += next.f9320if[i];
                    i++;
                }
            } else {
                next.f9315case = null;
                while (i < this.f9302else) {
                    m11115super(next.m11151break(i));
                    m11115super(next.m11152catch(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    /* renamed from: extends, reason: not valid java name */
    private void m11106extends() throws IOException {
        com.bumptech.glide.disklrucache.Cif cif = new com.bumptech.glide.disklrucache.Cif(new FileInputStream(this.f9306if), com.bumptech.glide.disklrucache.Cfor.f9328do);
        try {
            String strM11164new = cif.m11164new();
            String strM11164new2 = cif.m11164new();
            String strM11164new3 = cif.m11164new();
            String strM11164new4 = cif.m11164new();
            String strM11164new5 = cif.m11164new();
            if (!f9286import.equals(strM11164new) || !"1".equals(strM11164new2) || !Integer.toString(this.f9309try).equals(strM11164new3) || !Integer.toString(this.f9302else).equals(strM11164new4) || !"".equals(strM11164new5)) {
                throw new IOException("unexpected journal header: [" + strM11164new + ", " + strM11164new2 + ", " + strM11164new4 + ", " + strM11164new5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m11107finally(cif.m11164new());
                    i++;
                } catch (EOFException unused) {
                    this.f9298catch = i - this.f9296break.size();
                    if (cif.m11163for()) {
                        m11113package();
                    } else {
                        this.f9308this = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f9306if, true), com.bumptech.glide.disklrucache.Cfor.f9328do));
                    }
                    com.bumptech.glide.disklrucache.Cfor.m11158do(cif);
                    return;
                }
            }
        } catch (Throwable th) {
            com.bumptech.glide.disklrucache.Cfor.m11158do(cif);
            throw th;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private void m11107finally(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith(f9292switch)) {
                this.f9296break.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        Cnew cnew = this.f9296break.get(strSubstring);
        CallableC0022do callableC0022do = null;
        if (cnew == null) {
            cnew = new Cnew(this, strSubstring, callableC0022do);
            this.f9296break.put(strSubstring, cnew);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith(f9289return)) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(Cclass.f28652do);
            cnew.f9322try = true;
            cnew.f9315case = null;
            cnew.m11144final(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith(f9290static)) {
            cnew.f9315case = new Cfor(this, cnew, callableC0022do);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith(f9294throws)) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    @TargetApi(26)
    /* renamed from: import, reason: not valid java name */
    private static void m11111import(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public synchronized void m11113package() throws IOException {
        Writer writer = this.f9308this;
        if (writer != null) {
            m11101class(writer);
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f9304for), com.bumptech.glide.disklrucache.Cfor.f9328do));
        try {
            bufferedWriter.write(f9286import);
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f9309try));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f9302else));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (Cnew cnew : this.f9296break.values()) {
                if (cnew.f9315case != null) {
                    bufferedWriter.write("DIRTY " + cnew.f9316do + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + cnew.f9316do + cnew.m11153class() + '\n');
                }
            }
            m11101class(bufferedWriter);
            if (this.f9306if.exists()) {
                m11097abstract(this.f9306if, this.f9307new, true);
            }
            m11097abstract(this.f9304for, this.f9306if, false);
            this.f9307new.delete();
            this.f9308this = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f9306if, true), com.bumptech.glide.disklrucache.Cfor.f9328do));
        } catch (Throwable th) {
            m11101class(bufferedWriter);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public static String m11114static(InputStream inputStream) throws IOException {
        return com.bumptech.glide.disklrucache.Cfor.m11159for(new InputStreamReader(inputStream, com.bumptech.glide.disklrucache.Cfor.f9329if));
    }

    /* renamed from: super, reason: not valid java name */
    private static void m11115super(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public boolean m11116switch() {
        int i = this.f9298catch;
        return i >= 2000 && i >= this.f9296break.size();
    }

    /* renamed from: throws, reason: not valid java name */
    public static Cdo m11118throws(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, f9295while);
        if (file2.exists()) {
            File file3 = new File(file, f9291super);
            if (file3.exists()) {
                file2.delete();
            } else {
                m11097abstract(file2, file3, false);
            }
        }
        Cdo cdo = new Cdo(file, i, i2, j);
        if (cdo.f9306if.exists()) {
            try {
                cdo.m11106extends();
                cdo.m11103default();
                return cdo;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                cdo.m11123final();
            }
        }
        file.mkdirs();
        Cdo cdo2 = new Cdo(file, i, i2, j);
        cdo2.m11113package();
        return cdo2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: volatile, reason: not valid java name */
    public void m11120volatile() throws IOException {
        while (this.f9305goto > this.f9297case) {
            m11125private(this.f9296break.entrySet().iterator().next().getKey());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public synchronized Cfor m11121while(String str, long j) throws IOException {
        m11100catch();
        Cnew cnew = this.f9296break.get(str);
        CallableC0022do callableC0022do = null;
        if (j != -1 && (cnew == null || cnew.f9317else != j)) {
            return null;
        }
        if (cnew == null) {
            cnew = new Cnew(this, str, callableC0022do);
            this.f9296break.put(str, cnew);
        } else if (cnew.f9315case != null) {
            return null;
        }
        Cfor cfor = new Cfor(this, cnew, callableC0022do);
        cnew.f9315case = cfor;
        this.f9308this.append((CharSequence) f9290static);
        this.f9308this.append(' ');
        this.f9308this.append((CharSequence) str);
        this.f9308this.append('\n');
        m11111import(this.f9308this);
        return cfor;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f9308this == null) {
            return;
        }
        Iterator it = new ArrayList(this.f9296break.values()).iterator();
        while (it.hasNext()) {
            Cnew cnew = (Cnew) it.next();
            if (cnew.f9315case != null) {
                cnew.f9315case.m11135do();
            }
        }
        m11120volatile();
        m11101class(this.f9308this);
        this.f9308this = null;
    }

    /* renamed from: continue, reason: not valid java name */
    public synchronized void m11122continue(long j) {
        this.f9297case = j;
        this.f9300const.submit(this.f9303final);
    }

    /* renamed from: final, reason: not valid java name */
    public void m11123final() throws IOException {
        close();
        com.bumptech.glide.disklrucache.Cfor.m11160if(this.f9301do);
    }

    public synchronized void flush() throws IOException {
        m11100catch();
        m11120volatile();
        m11111import(this.f9308this);
    }

    public synchronized boolean isClosed() {
        return this.f9308this == null;
    }

    /* renamed from: native, reason: not valid java name */
    public synchronized Ctry m11124native(String str) throws IOException {
        m11100catch();
        Cnew cnew = this.f9296break.get(str);
        if (cnew == null) {
            return null;
        }
        if (!cnew.f9322try) {
            return null;
        }
        for (File file : cnew.f9318for) {
            if (!file.exists()) {
                return null;
            }
        }
        this.f9298catch++;
        this.f9308this.append((CharSequence) f9294throws);
        this.f9308this.append(' ');
        this.f9308this.append((CharSequence) str);
        this.f9308this.append('\n');
        if (m11116switch()) {
            this.f9300const.submit(this.f9303final);
        }
        return new Ctry(this, str, cnew.f9317else, cnew.f9318for, cnew.f9320if, null);
    }

    /* renamed from: private, reason: not valid java name */
    public synchronized boolean m11125private(String str) throws IOException {
        m11100catch();
        Cnew cnew = this.f9296break.get(str);
        if (cnew != null && cnew.f9315case == null) {
            for (int i = 0; i < this.f9302else; i++) {
                File fileM11151break = cnew.m11151break(i);
                if (fileM11151break.exists() && !fileM11151break.delete()) {
                    throw new IOException("failed to delete " + fileM11151break);
                }
                this.f9305goto -= cnew.f9320if[i];
                cnew.f9320if[i] = 0;
            }
            this.f9298catch++;
            this.f9308this.append((CharSequence) f9292switch);
            this.f9308this.append(' ');
            this.f9308this.append((CharSequence) str);
            this.f9308this.append('\n');
            this.f9296break.remove(str);
            if (m11116switch()) {
                this.f9300const.submit(this.f9303final);
            }
            return true;
        }
        return false;
    }

    /* renamed from: public, reason: not valid java name */
    public File m11126public() {
        return this.f9301do;
    }

    /* renamed from: return, reason: not valid java name */
    public synchronized long m11127return() {
        return this.f9297case;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public synchronized long m11128strictfp() {
        return this.f9305goto;
    }

    /* renamed from: throw, reason: not valid java name */
    public Cfor m11129throw(String str) throws IOException {
        return m11121while(str, -1L);
    }
}
