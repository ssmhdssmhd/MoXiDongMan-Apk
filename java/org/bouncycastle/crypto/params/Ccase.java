package org.bouncycastle.crypto.params;

import android.support.v4.hn0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.params.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase implements CipherParameters {

    /* renamed from: case, reason: not valid java name */
    public static final int f30202case = 16;

    /* renamed from: else, reason: not valid java name */
    public static final int f30203else = 20;

    /* renamed from: for, reason: not valid java name */
    public static final int f30204for = 4;

    /* renamed from: goto, reason: not valid java name */
    public static final int f30205goto = 48;

    /* renamed from: if, reason: not valid java name */
    public static final int f30206if = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f30207new = 8;

    /* renamed from: this, reason: not valid java name */
    public static final int f30208this = 63;

    /* renamed from: try, reason: not valid java name */
    public static final int f30209try = 12;

    /* renamed from: do, reason: not valid java name */
    private Hashtable f30210do;

    /* renamed from: org.bouncycastle.crypto.params.case$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private Hashtable f30211do = new Hashtable();

        public Cif() {
        }

        public Cif(Hashtable hashtable) {
            Enumeration enumerationKeys = hashtable.keys();
            while (enumerationKeys.hasMoreElements()) {
                Integer num = (Integer) enumerationKeys.nextElement();
                this.f30211do.put(num, hashtable.get(num));
            }
        }

        public Cif(Ccase ccase) {
            Enumeration enumerationKeys = ccase.f30210do.keys();
            while (enumerationKeys.hasMoreElements()) {
                Integer num = (Integer) enumerationKeys.nextElement();
                this.f30211do.put(num, ccase.f30210do.get(num));
            }
        }

        /* renamed from: case, reason: not valid java name */
        public Cif m33811case(Date date, String str, String str2) throws IOException {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, "UTF-8");
                outputStreamWriter.write(new SimpleDateFormat("YYYYMMDD").format(date));
                outputStreamWriter.write(Cclass.f28652do);
                outputStreamWriter.write(str);
                outputStreamWriter.write(Cclass.f28652do);
                outputStreamWriter.write(str2);
                outputStreamWriter.close();
                return m33816if(8, byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException("Byte I/O failed: " + e);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public Ccase m33812do() {
            return new Ccase(this.f30211do);
        }

        /* renamed from: else, reason: not valid java name */
        public Cif m33813else(Date date, Locale locale, String str, String str2) throws IOException {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, "UTF-8");
                outputStreamWriter.write(new SimpleDateFormat("YYYYMMDD", locale).format(date));
                outputStreamWriter.write(Cclass.f28652do);
                outputStreamWriter.write(str);
                outputStreamWriter.write(Cclass.f28652do);
                outputStreamWriter.write(str2);
                outputStreamWriter.close();
                return m33816if(8, byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException("Byte I/O failed: " + e);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public Cif m33814for(byte[] bArr) {
            return m33816if(0, bArr);
        }

        /* renamed from: goto, reason: not valid java name */
        public Cif m33815goto(byte[] bArr) {
            return m33816if(8, bArr);
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m33816if(int i, byte[] bArr) {
            if (bArr == null) {
                throw new IllegalArgumentException("Parameter value must not be null.");
            }
            if (i != 0 && (i < 4 || i >= 63 || i == 48)) {
                throw new IllegalArgumentException("Parameter types must be in the range 0,5..47,49..62.");
            }
            if (i == 4) {
                throw new IllegalArgumentException("Parameter type 4 is reserved for internal use.");
            }
            this.f30211do.put(hn0.m3072for(i), bArr);
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cif m33817new(byte[] bArr) {
            return m33816if(16, bArr);
        }

        /* renamed from: this, reason: not valid java name */
        public Cif m33818this(byte[] bArr) {
            return m33816if(12, bArr);
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m33819try(byte[] bArr) {
            return m33816if(20, bArr);
        }
    }

    public Ccase() {
        this(new Hashtable());
    }

    private Ccase(Hashtable hashtable) {
        this.f30210do = hashtable;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m33805case() {
        return (byte[]) this.f30210do.get(hn0.m3072for(8));
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m33806else() {
        return (byte[]) this.f30210do.get(hn0.m3072for(12));
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m33807for() {
        return (byte[]) this.f30210do.get(hn0.m3072for(16));
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m33808if() {
        return (byte[]) this.f30210do.get(hn0.m3072for(0));
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m33809new() {
        return (byte[]) this.f30210do.get(hn0.m3072for(20));
    }

    /* renamed from: try, reason: not valid java name */
    public Hashtable m33810try() {
        return this.f30210do;
    }
}
