package org.bouncycastle.jcajce.spec;

import android.support.v4.hn0;
import android.support.v4.q3;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.security.spec.AlgorithmParameterSpec;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.lang3.Cclass;

/* renamed from: org.bouncycastle.jcajce.spec.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements AlgorithmParameterSpec {

    /* renamed from: case, reason: not valid java name */
    public static final int f31543case = 16;

    /* renamed from: else, reason: not valid java name */
    public static final int f31544else = 20;

    /* renamed from: for, reason: not valid java name */
    public static final int f31545for = 4;

    /* renamed from: goto, reason: not valid java name */
    public static final int f31546goto = 48;

    /* renamed from: if, reason: not valid java name */
    public static final int f31547if = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f31548new = 8;

    /* renamed from: this, reason: not valid java name */
    public static final int f31549this = 63;

    /* renamed from: try, reason: not valid java name */
    public static final int f31550try = 12;

    /* renamed from: do, reason: not valid java name */
    private Map f31551do;

    /* renamed from: org.bouncycastle.jcajce.spec.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0453if {

        /* renamed from: do, reason: not valid java name */
        private Map f31552do = new HashMap();

        public C0453if() {
        }

        public C0453if(Cif cif) {
            for (Integer num : cif.f31551do.keySet()) {
                this.f31552do.put(num, cif.f31551do.get(num));
            }
        }

        /* renamed from: case, reason: not valid java name */
        public C0453if m34914case(Date date, String str, String str2) throws IOException {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, "UTF-8");
                outputStreamWriter.write(new SimpleDateFormat("YYYYMMDD").format(date));
                outputStreamWriter.write(Cclass.f28652do);
                outputStreamWriter.write(str);
                outputStreamWriter.write(Cclass.f28652do);
                outputStreamWriter.write(str2);
                outputStreamWriter.close();
                return m34919if(8, byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException("Byte I/O failed: " + e);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public Cif m34915do() {
            return new Cif(this.f31552do);
        }

        /* renamed from: else, reason: not valid java name */
        public C0453if m34916else(Date date, Locale locale, String str, String str2) throws IOException {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, "UTF-8");
                outputStreamWriter.write(new SimpleDateFormat("YYYYMMDD", locale).format(date));
                outputStreamWriter.write(Cclass.f28652do);
                outputStreamWriter.write(str);
                outputStreamWriter.write(Cclass.f28652do);
                outputStreamWriter.write(str2);
                outputStreamWriter.close();
                return m34919if(8, byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException("Byte I/O failed: " + e);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public C0453if m34917for(byte[] bArr) {
            return m34919if(0, bArr);
        }

        /* renamed from: goto, reason: not valid java name */
        public C0453if m34918goto(byte[] bArr) {
            return m34919if(8, bArr);
        }

        /* renamed from: if, reason: not valid java name */
        public C0453if m34919if(int i, byte[] bArr) {
            if (bArr == null) {
                throw new IllegalArgumentException("Parameter value must not be null.");
            }
            if (i != 0 && (i <= 4 || i >= 63 || i == 48)) {
                throw new IllegalArgumentException("Parameter types must be in the range 0,5..47,49..62.");
            }
            if (i == 4) {
                throw new IllegalArgumentException("Parameter type 4 is reserved for internal use.");
            }
            this.f31552do.put(hn0.m3072for(i), bArr);
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public C0453if m34920new(byte[] bArr) {
            return m34919if(16, bArr);
        }

        /* renamed from: this, reason: not valid java name */
        public C0453if m34921this(byte[] bArr) {
            return m34919if(12, bArr);
        }

        /* renamed from: try, reason: not valid java name */
        public C0453if m34922try(byte[] bArr) {
            return m34919if(20, bArr);
        }
    }

    public Cif() {
        this(new HashMap());
    }

    private Cif(Map map) {
        this.f31551do = Collections.unmodifiableMap(map);
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m34908case() {
        return q3.m6371final((byte[]) this.f31551do.get(hn0.m3072for(8)));
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m34909else() {
        return q3.m6371final((byte[]) this.f31551do.get(hn0.m3072for(12)));
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m34910for() {
        return q3.m6371final((byte[]) this.f31551do.get(hn0.m3072for(16)));
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m34911if() {
        return q3.m6371final((byte[]) this.f31551do.get(hn0.m3072for(0)));
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m34912new() {
        return q3.m6371final((byte[]) this.f31551do.get(hn0.m3072for(20)));
    }

    /* renamed from: try, reason: not valid java name */
    public Map m34913try() {
        return this.f31551do;
    }
}
