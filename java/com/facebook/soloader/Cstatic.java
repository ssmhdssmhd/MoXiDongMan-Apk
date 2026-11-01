package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import android.os.StrictMode;
import android.support.v4.on0;
import android.support.v4.y41;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.soloader.static, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cstatic extends com.facebook.soloader.Cnew {

    /* renamed from: default, reason: not valid java name */
    private static final byte f10724default = 1;

    /* renamed from: import, reason: not valid java name */
    private static final String f10725import = "fb-UnpackingSoSource";

    /* renamed from: native, reason: not valid java name */
    private static final String f10726native = "dso_state";

    /* renamed from: public, reason: not valid java name */
    private static final String f10727public = "dso_lock";

    /* renamed from: return, reason: not valid java name */
    private static final String f10728return = "dso_deps";

    /* renamed from: static, reason: not valid java name */
    private static final String f10729static = "dso_manifest";

    /* renamed from: switch, reason: not valid java name */
    private static final byte f10730switch = 0;

    /* renamed from: throws, reason: not valid java name */
    private static final byte f10731throws = 1;

    /* renamed from: final, reason: not valid java name */
    public final Context f10732final;

    /* renamed from: super, reason: not valid java name */
    @y41
    public String f10733super;

    /* renamed from: throw, reason: not valid java name */
    @y41
    private String[] f10734throw;

    /* renamed from: while, reason: not valid java name */
    private final Map<String, Object> f10735while;

    /* renamed from: com.facebook.soloader.static$case, reason: invalid class name */
    public static abstract class Ccase implements Closeable {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        /* renamed from: do */
        public abstract Cfor mo12155do() throws IOException;

        /* renamed from: if */
        public abstract Ctry mo12156if() throws IOException;
    }

    /* renamed from: com.facebook.soloader.static$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ File f10737do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Cfor f10738for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ byte[] f10739if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ File f10740new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ Csuper f10741try;

        public Cdo(File file, byte[] bArr, Cfor cfor, File file2, Csuper csuper) {
            this.f10737do = file;
            this.f10739if = bArr;
            this.f10738for = cfor;
            this.f10740new = file2;
            this.f10741try = csuper;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(this.f10737do, "rw");
                    try {
                        randomAccessFile.write(this.f10739if);
                        randomAccessFile.setLength(randomAccessFile.getFilePointer());
                        randomAccessFile.close();
                        randomAccessFile = new RandomAccessFile(new File(Cstatic.this.f10710break, Cstatic.f10729static), "rw");
                        try {
                            this.f10738for.m12233if(randomAccessFile);
                            randomAccessFile.close();
                            Creturn.m12210case(Cstatic.this.f10710break);
                            Cstatic.m12228return(this.f10740new, (byte) 1);
                        } finally {
                        }
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                } finally {
                    StringBuilder sb = new StringBuilder();
                    sb.append("releasing dso store lock for ");
                    sb.append(Cstatic.this.f10710break);
                    sb.append(" (from syncer thread)");
                    this.f10741try.close();
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: com.facebook.soloader.static$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final Cif[] f10742do;

        public Cfor(Cif[] cifArr) {
            this.f10742do = cifArr;
        }

        /* renamed from: do, reason: not valid java name */
        public static final Cfor m12232do(DataInput dataInput) throws IOException {
            if (dataInput.readByte() != 1) {
                throw new RuntimeException("wrong dso manifest version");
            }
            int i = dataInput.readInt();
            if (i < 0) {
                throw new RuntimeException("illegal number of shared libraries");
            }
            Cif[] cifArr = new Cif[i];
            for (int i2 = 0; i2 < i; i2++) {
                cifArr[i2] = new Cif(dataInput.readUTF(), dataInput.readUTF());
            }
            return new Cfor(cifArr);
        }

        /* renamed from: if, reason: not valid java name */
        public final void m12233if(DataOutput dataOutput) throws IOException {
            dataOutput.writeByte(1);
            dataOutput.writeInt(this.f10742do.length);
            int i = 0;
            while (true) {
                Cif[] cifArr = this.f10742do;
                if (i >= cifArr.length) {
                    return;
                }
                dataOutput.writeUTF(cifArr[i].f10743do);
                dataOutput.writeUTF(this.f10742do[i].f10744if);
                i++;
            }
        }
    }

    /* renamed from: com.facebook.soloader.static$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final String f10743do;

        /* renamed from: if, reason: not valid java name */
        public final String f10744if;

        public Cif(String str, String str2) {
            this.f10743do = str;
            this.f10744if = str2;
        }
    }

    /* renamed from: com.facebook.soloader.static$new, reason: invalid class name */
    public static final class Cnew implements Closeable {

        /* renamed from: do, reason: not valid java name */
        public final Cif f10745do;

        /* renamed from: if, reason: not valid java name */
        public final InputStream f10746if;

        public Cnew(Cif cif, InputStream inputStream) {
            this.f10745do = cif;
            this.f10746if = inputStream;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f10746if.close();
        }
    }

    /* renamed from: com.facebook.soloader.static$try, reason: invalid class name */
    public static abstract class Ctry implements Closeable {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        /* renamed from: do */
        public abstract boolean mo12157do();

        /* renamed from: if */
        public abstract Cnew mo12158if() throws IOException;
    }

    public Cstatic(Context context, String str) {
        super(m12229super(context, str), 1);
        this.f10735while = new HashMap();
        this.f10732final = context;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m12223catch(Cif[] cifArr) throws IOException {
        String[] list = this.f10710break.list();
        if (list == null) {
            throw new IOException("unable to list directory " + this.f10710break);
        }
        for (String str : list) {
            if (!str.equals(f10726native) && !str.equals(f10727public) && !str.equals(f10728return) && !str.equals(f10729static)) {
                boolean z = false;
                for (int i = 0; !z && i < cifArr.length; i++) {
                    if (cifArr[i].f10743do.equals(str)) {
                        z = true;
                    }
                }
                if (!z) {
                    File file = new File(this.f10710break, str);
                    StringBuilder sb = new StringBuilder();
                    sb.append("deleting unaccounted-for file ");
                    sb.append(file);
                    Creturn.m12213for(file);
                }
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    private void m12224class(Cnew cnew, byte[] bArr) throws IOException {
        RandomAccessFile randomAccessFile;
        StringBuilder sb = new StringBuilder();
        sb.append("extracting DSO ");
        sb.append(cnew.f10745do.f10743do);
        if (!this.f10710break.setWritable(true, true)) {
            throw new IOException("cannot make directory writable for us: " + this.f10710break);
        }
        File file = new File(this.f10710break, cnew.f10745do.f10743do);
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
        } catch (IOException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("error overwriting ");
            sb2.append(file);
            sb2.append(" trying to delete and start over");
            Creturn.m12213for(file);
            randomAccessFile = new RandomAccessFile(file, "rw");
        }
        try {
            try {
                int iAvailable = cnew.f10746if.available();
                if (iAvailable > 1) {
                    Creturn.m12216new(randomAccessFile.getFD(), iAvailable);
                }
                Creturn.m12211do(randomAccessFile, cnew.f10746if, Integer.MAX_VALUE, bArr);
                randomAccessFile.setLength(randomAccessFile.getFilePointer());
                if (file.setExecutable(true, false)) {
                    return;
                }
                throw new IOException("cannot make file executable: " + file);
            } catch (IOException e) {
                Creturn.m12213for(file);
                throw e;
            }
        } finally {
            randomAccessFile.close();
        }
    }

    /* renamed from: final, reason: not valid java name */
    private Object m12225final(String str) {
        Object obj;
        synchronized (this.f10735while) {
            obj = this.f10735while.get(str);
            if (obj == null) {
                obj = new Object();
                this.f10735while.put(str, obj);
            }
        }
        return obj;
    }

    /* renamed from: import, reason: not valid java name */
    private boolean m12226import(Csuper csuper, int i, byte[] bArr) throws IOException {
        byte b;
        Cfor cfor;
        File file = new File(this.f10710break, f10726native);
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            b = randomAccessFile.readByte();
        } catch (EOFException unused) {
        } catch (Throwable th) {
            try {
                throw th;
            } finally {
            }
        }
        if (b != 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("dso store ");
            sb.append(this.f10710break);
            sb.append(" regeneration interrupted: wiping clean");
            b = 0;
        }
        randomAccessFile.close();
        File file2 = new File(this.f10710break, f10728return);
        randomAccessFile = new RandomAccessFile(file2, "rw");
        try {
            int length = (int) randomAccessFile.length();
            byte[] bArr2 = new byte[length];
            if (randomAccessFile.read(bArr2) != length) {
                b = 0;
            }
            if (!Arrays.equals(bArr2, bArr)) {
                b = 0;
            }
            if (b == 0 || (i & 2) != 0) {
                m12228return(file, (byte) 0);
                Ccase ccaseMo12153throw = mo12153throw();
                try {
                    Cfor cforMo12155do = ccaseMo12153throw.mo12155do();
                    Ctry ctryMo12156if = ccaseMo12153throw.mo12156if();
                    try {
                        m12227native(b, cforMo12155do, ctryMo12156if);
                        if (ctryMo12156if != null) {
                            ctryMo12156if.close();
                        }
                        ccaseMo12153throw.close();
                        cfor = cforMo12155do;
                    } finally {
                    }
                } finally {
                }
            } else {
                cfor = null;
            }
            randomAccessFile.close();
            if (cfor == null) {
                return false;
            }
            Cdo cdo = new Cdo(file2, bArr, cfor, file, csuper);
            if ((i & 1) != 0) {
                new Thread(cdo, "SoSync:" + this.f10710break.getName()).start();
            } else {
                cdo.run();
            }
            return true;
        } catch (Throwable th2) {
            try {
                throw th2;
            } finally {
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m12227native(byte b, Cfor cfor, Ctry ctry) throws IOException {
        Cfor cforM12232do;
        StringBuilder sb = new StringBuilder();
        sb.append("regenerating DSO store ");
        sb.append(getClass().getName());
        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(this.f10710break, f10729static), "rw");
        if (b == 1) {
            try {
                try {
                    cforM12232do = Cfor.m12232do(randomAccessFile);
                } catch (Exception unused) {
                }
            } finally {
            }
        } else {
            cforM12232do = null;
        }
        if (cforM12232do == null) {
            cforM12232do = new Cfor(new Cif[0]);
        }
        m12223catch(cfor.f10742do);
        byte[] bArr = new byte[32768];
        while (ctry.mo12157do()) {
            Cnew cnewMo12158if = ctry.mo12158if();
            boolean z = true;
            int i = 0;
            while (z) {
                try {
                    Cif[] cifArr = cforM12232do.f10742do;
                    if (i >= cifArr.length) {
                        break;
                    }
                    if (cifArr[i].f10743do.equals(cnewMo12158if.f10745do.f10743do) && cforM12232do.f10742do[i].f10744if.equals(cnewMo12158if.f10745do.f10744if)) {
                        z = false;
                    }
                    i++;
                } finally {
                }
            }
            if (z) {
                m12224class(cnewMo12158if, bArr);
            }
            if (cnewMo12158if != null) {
                cnewMo12158if.close();
            }
        }
        randomAccessFile.close();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Finished regenerating DSO store ");
        sb2.append(getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public static void m12228return(File file, byte b) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.write(b);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            randomAccessFile.getFD().sync();
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static File m12229super(Context context, String str) {
        return new File(context.getApplicationInfo().dataDir + on0.f4694final + str);
    }

    /* renamed from: const */
    public byte[] mo12171const() throws IOException {
        Parcel parcelObtain = Parcel.obtain();
        Ccase ccaseMo12153throw = mo12153throw();
        try {
            Cif[] cifArr = ccaseMo12153throw.mo12155do().f10742do;
            parcelObtain.writeByte((byte) 1);
            parcelObtain.writeInt(cifArr.length);
            for (int i = 0; i < cifArr.length; i++) {
                parcelObtain.writeString(cifArr[i].f10743do);
                parcelObtain.writeString(cifArr[i].f10744if);
            }
            ccaseMo12153throw.close();
            byte[] bArrMarshall = parcelObtain.marshall();
            parcelObtain.recycle();
            return bArrMarshall;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (ccaseMo12153throw != null) {
                    try {
                        ccaseMo12153throw.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // com.facebook.soloader.Cpublic
    /* renamed from: for */
    public String[] mo12208for() {
        String[] strArr = this.f10734throw;
        return strArr == null ? super.mo12208for() : strArr;
    }

    @Override // com.facebook.soloader.Cnew, com.facebook.soloader.Cpublic
    /* renamed from: new */
    public int mo2944new(String str, int i, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        int iM12207this;
        synchronized (m12225final(str)) {
            iM12207this = m12207this(str, i, this.f10710break, threadPolicy);
        }
        return iM12207this;
    }

    /* renamed from: public, reason: not valid java name */
    public void m12230public(String[] strArr) {
        this.f10734throw = strArr;
    }

    /* renamed from: throw */
    public abstract Ccase mo12153throw() throws IOException;

    @Override // com.facebook.soloader.Cpublic
    /* renamed from: try */
    public void mo12169try(int i) throws IOException {
        Creturn.m12209break(this.f10710break);
        Csuper csuperM12234do = Csuper.m12234do(new File(this.f10710break, f10727public));
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("locked dso store ");
            sb.append(this.f10710break);
            if (m12226import(csuperM12234do, i, mo12171const())) {
                csuperM12234do = null;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("dso store is up-to-date: ");
                sb2.append(this.f10710break);
            }
        } finally {
            if (csuperM12234do != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("releasing dso store lock for ");
                sb3.append(this.f10710break);
                csuperM12234do.close();
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("not releasing dso store lock for ");
                sb4.append(this.f10710break);
                sb4.append(" (syncer thread started)");
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    public synchronized void m12231while(String str) throws IOException {
        synchronized (m12225final(str)) {
            this.f10733super = str;
            mo12169try(2);
        }
    }

    public Cstatic(Context context, File file) {
        super(file, 1);
        this.f10735while = new HashMap();
        this.f10732final = context;
    }
}
