package android.support.v4;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.List;
import net.lingala.zip4j.io.outputstream.Celse;
import net.lingala.zip4j.io.outputstream.Cnew;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes3.dex */
public class gj0 {

    /* renamed from: for, reason: not valid java name */
    private static final short f2150for = 28;

    /* renamed from: do, reason: not valid java name */
    private jl1 f2151do = new jl1();

    /* renamed from: if, reason: not valid java name */
    private byte[] f2152if = new byte[8];

    /* renamed from: break, reason: not valid java name */
    private void m2700break(rk2 rk2Var, int i, long j, ByteArrayOutputStream byteArrayOutputStream, jl1 jl1Var) throws IOException {
        byte[] bArr = new byte[8];
        jl1Var.m3929super(byteArrayOutputStream, (int) ej0.END_OF_CENTRAL_DIRECTORY.getValue());
        jl1Var.m3926native(byteArrayOutputStream, rk2Var.m7051try().m9068new());
        jl1Var.m3926native(byteArrayOutputStream, rk2Var.m7051try().m9072try());
        long size = rk2Var.m7038if().m9135if().size();
        long jM2703do = rk2Var.m7029const() ? m2703do(rk2Var.m7038if().m9135if(), rk2Var.m7051try().m9068new()) : size;
        if (jM2703do > WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            jM2703do = 65535;
        }
        jl1Var.m3926native(byteArrayOutputStream, (int) jM2703do);
        if (size > WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            size = 65535;
        }
        jl1Var.m3926native(byteArrayOutputStream, (int) size);
        jl1Var.m3929super(byteArrayOutputStream, i);
        if (j > 4294967295L) {
            jl1Var.m3925import(bArr, 0, 4294967295L);
            byteArrayOutputStream.write(bArr, 0, 4);
        } else {
            jl1Var.m3925import(bArr, 0, j);
            byteArrayOutputStream.write(bArr, 0, 4);
        }
        String strM9066for = rk2Var.m7051try().m9066for();
        if (!mj2.m4939try(strM9066for)) {
            jl1Var.m3926native(byteArrayOutputStream, 0);
            return;
        }
        byte[] bytes = strM9066for.getBytes(StandardCharsets.UTF_8);
        jl1Var.m3926native(byteArrayOutputStream, bytes.length);
        byteArrayOutputStream.write(bytes);
    }

    /* renamed from: case, reason: not valid java name */
    private void m2701case(rk2 rk2Var, OutputStream outputStream) throws IOException {
        int iM31535if;
        if (outputStream instanceof Cnew) {
            Cnew cnew = (Cnew) outputStream;
            rk2Var.m7051try().m9063const(cnew.m31534for());
            iM31535if = cnew.m31535if();
        } else {
            iM31535if = 0;
        }
        if (rk2Var.m7034final()) {
            if (rk2Var.m7025break() == null) {
                rk2Var.m7033extends(new oj2());
            }
            if (rk2Var.m7048this() == null) {
                rk2Var.m7030default(new nj2());
            }
            rk2Var.m7048this().m5261case(iM31535if);
            rk2Var.m7048this().m5264goto(iM31535if + 1);
        }
        rk2Var.m7051try().m9061catch(iM31535if);
        rk2Var.m7051try().m9062class(iM31535if);
    }

    /* renamed from: class, reason: not valid java name */
    private void m2702class(rk2 rk2Var, oa0 oa0Var, ByteArrayOutputStream byteArrayOutputStream, jl1 jl1Var) throws rj2 {
        boolean z;
        if (oa0Var == null) {
            throw new rj2("input parameters is null, cannot write local file header");
        }
        try {
            byte[] bArr = {0, 0};
            jl1Var.m3929super(byteArrayOutputStream, (int) oa0Var.m6615do().getValue());
            jl1Var.m3926native(byteArrayOutputStream, oa0Var.h());
            jl1Var.m3926native(byteArrayOutputStream, oa0Var.m8097throw());
            byteArrayOutputStream.write(oa0Var.m8071const());
            jl1Var.m3926native(byteArrayOutputStream, oa0Var.m8100try().getCode());
            jl1Var.m3925import(this.f2152if, 0, oa0Var.m8076final());
            byteArrayOutputStream.write(this.f2152if, 0, 4);
            jl1Var.m3925import(this.f2152if, 0, oa0Var.m8068case());
            byteArrayOutputStream.write(this.f2152if, 0, 4);
            if (oa0Var.m8085new() >= 4294967295L || oa0Var.m8093super() >= 4294967295L) {
                jl1Var.m3925import(this.f2152if, 0, 4294967295L);
                byteArrayOutputStream.write(this.f2152if, 0, 4);
                byteArrayOutputStream.write(this.f2152if, 0, 4);
                z = true;
            } else {
                jl1Var.m3925import(this.f2152if, 0, oa0Var.m8085new());
                byteArrayOutputStream.write(this.f2152if, 0, 4);
                jl1Var.m3925import(this.f2152if, 0, oa0Var.m8093super());
                byteArrayOutputStream.write(this.f2152if, 0, 4);
                z = false;
            }
            byte[] bytes = new byte[0];
            if (mj2.m4939try(oa0Var.m8069catch())) {
                Charset charsetForName = Charset.forName(on0.f4690class);
                if (b9.m476do(oa0Var.m8071const()[1], 3)) {
                    charsetForName = StandardCharsets.UTF_8;
                }
                bytes = oa0Var.m8069catch().getBytes(charsetForName);
            }
            jl1Var.m3926native(byteArrayOutputStream, bytes.length);
            byte[] bArr2 = new byte[4];
            if (oa0Var.g() > 4294967295L) {
                jl1Var.m3925import(this.f2152if, 0, 4294967295L);
                System.arraycopy(this.f2152if, 0, bArr2, 0, 4);
                z = true;
            } else {
                jl1Var.m3925import(this.f2152if, 0, oa0Var.g());
                System.arraycopy(this.f2152if, 0, bArr2, 0, 4);
            }
            int i = z ? 32 : 0;
            if (oa0Var.m8078for() != null) {
                i += 11;
            }
            jl1Var.m3926native(byteArrayOutputStream, i);
            String strD = oa0Var.d();
            byte[] bytes2 = new byte[0];
            if (mj2.m4939try(strD)) {
                Charset charsetForName2 = Charset.forName(on0.f4690class);
                if (b9.m476do(oa0Var.m8071const()[1], 3)) {
                    charsetForName2 = StandardCharsets.UTF_8;
                }
                bytes2 = strD.getBytes(charsetForName2);
            }
            jl1Var.m3926native(byteArrayOutputStream, bytes2.length);
            jl1Var.m3926native(byteArrayOutputStream, oa0Var.b());
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(oa0Var.c());
            byteArrayOutputStream.write(bArr2);
            if (bytes.length > 0) {
                byteArrayOutputStream.write(bytes);
            }
            if (z) {
                rk2Var.m7035finally(true);
                jl1Var.m3926native(byteArrayOutputStream, (int) ej0.ZIP64_EXTRA_FIELD_SIGNATURE.getValue());
                jl1Var.m3926native(byteArrayOutputStream, 28);
                jl1Var.m3933while(byteArrayOutputStream, oa0Var.m8093super());
                jl1Var.m3933while(byteArrayOutputStream, oa0Var.m8085new());
                jl1Var.m3933while(byteArrayOutputStream, oa0Var.g());
                jl1Var.m3929super(byteArrayOutputStream, oa0Var.b());
            }
            if (oa0Var.m8078for() != null) {
                Cgoto cgotoM8078for = oa0Var.m8078for();
                jl1Var.m3926native(byteArrayOutputStream, (int) cgotoM8078for.m6615do().getValue());
                jl1Var.m3926native(byteArrayOutputStream, cgotoM8078for.m2754case());
                jl1Var.m3926native(byteArrayOutputStream, cgotoM8078for.m2760new().getVersionNumber());
                byteArrayOutputStream.write(cgotoM8078for.m2757else().getBytes());
                byteArrayOutputStream.write(new byte[]{(byte) cgotoM8078for.m2758for().getRawCode()});
                jl1Var.m3926native(byteArrayOutputStream, cgotoM8078for.m2762try().getCode());
            }
            if (bytes2.length > 0) {
                byteArrayOutputStream.write(bytes2);
            }
        } catch (Exception e) {
            throw new rj2(e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private long m2703do(List<oa0> list, int i) throws rj2 {
        if (list == null) {
            throw new rj2("file headers are null, cannot calculate number of entries on this disk");
        }
        int i2 = 0;
        Iterator<oa0> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().b() == i) {
                i2++;
            }
        }
        return i2;
    }

    /* renamed from: else, reason: not valid java name */
    private void m2704else(Celse celse, oa0 oa0Var) throws IOException {
        if (oa0Var.m8093super() < 4294967295L) {
            this.f2151do.m3925import(this.f2152if, 0, oa0Var.m8085new());
            celse.write(this.f2152if, 0, 4);
            this.f2151do.m3925import(this.f2152if, 0, oa0Var.m8093super());
            celse.write(this.f2152if, 0, 4);
            return;
        }
        this.f2151do.m3925import(this.f2152if, 0, 4294967295L);
        celse.write(this.f2152if, 0, 4);
        celse.write(this.f2152if, 0, 4);
        int iM8070class = oa0Var.m8070class() + 4 + 2 + 2 + 2;
        if (celse.m31525this(iM8070class) == iM8070class) {
            this.f2151do.m3933while(celse, oa0Var.m8093super());
            this.f2151do.m3933while(celse, oa0Var.m8085new());
        } else {
            throw new rj2("Unable to skip " + iM8070class + " bytes to update LFH");
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m2705final(rk2 rk2Var, ByteArrayOutputStream byteArrayOutputStream, jl1 jl1Var) throws IOException {
        jl1Var.m3929super(byteArrayOutputStream, (int) ej0.ZIP64_END_CENTRAL_DIRECTORY_LOCATOR.getValue());
        jl1Var.m3929super(byteArrayOutputStream, rk2Var.m7048this().m5263for());
        jl1Var.m3933while(byteArrayOutputStream, rk2Var.m7048this().m5265new());
        jl1Var.m3929super(byteArrayOutputStream, rk2Var.m7048this().m5266try());
    }

    /* renamed from: new, reason: not valid java name */
    private int m2706new(OutputStream outputStream) {
        return outputStream instanceof Celse ? ((Celse) outputStream).m31523if() : ((Cnew) outputStream).m31535if();
    }

    /* renamed from: super, reason: not valid java name */
    private void m2707super(rk2 rk2Var, int i, long j, ByteArrayOutputStream byteArrayOutputStream, jl1 jl1Var) throws IOException {
        byte[] bArr = {0, 0};
        jl1Var.m3929super(byteArrayOutputStream, (int) ej0.ZIP64_END_CENTRAL_DIRECTORY_RECORD.getValue());
        jl1Var.m3933while(byteArrayOutputStream, 44L);
        if (rk2Var.m7038if() == null || rk2Var.m7038if().m9135if() == null || rk2Var.m7038if().m9135if().size() <= 0) {
            byteArrayOutputStream.write(bArr);
            byteArrayOutputStream.write(bArr);
        } else {
            jl1Var.m3926native(byteArrayOutputStream, rk2Var.m7038if().m9135if().get(0).h());
            jl1Var.m3926native(byteArrayOutputStream, rk2Var.m7038if().m9135if().get(0).m8097throw());
        }
        jl1Var.m3929super(byteArrayOutputStream, rk2Var.m7051try().m9068new());
        jl1Var.m3929super(byteArrayOutputStream, rk2Var.m7051try().m9072try());
        long size = rk2Var.m7038if().m9135if().size();
        jl1Var.m3933while(byteArrayOutputStream, rk2Var.m7029const() ? m2703do(rk2Var.m7038if().m9135if(), rk2Var.m7051try().m9068new()) : size);
        jl1Var.m3933while(byteArrayOutputStream, size);
        jl1Var.m3933while(byteArrayOutputStream, i);
        jl1Var.m3933while(byteArrayOutputStream, j);
    }

    /* renamed from: this, reason: not valid java name */
    private void m2708this(rk2 rk2Var, ByteArrayOutputStream byteArrayOutputStream, jl1 jl1Var) throws rj2 {
        if (rk2Var.m7038if() == null || rk2Var.m7038if().m9135if() == null || rk2Var.m7038if().m9135if().size() <= 0) {
            return;
        }
        Iterator<oa0> it = rk2Var.m7038if().m9135if().iterator();
        while (it.hasNext()) {
            m2702class(rk2Var, it.next(), byteArrayOutputStream, jl1Var);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private void m2709throw(rk2 rk2Var, OutputStream outputStream, byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new rj2("invalid buff to write as zip headers");
        }
        if ((outputStream instanceof Cnew) && ((Cnew) outputStream).m31532do(bArr.length)) {
            m2715if(rk2Var, outputStream);
        } else {
            outputStream.write(bArr);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m2710try(OutputStream outputStream) {
        if (outputStream instanceof Celse) {
            return ((Celse) outputStream).m31520else();
        }
        if (outputStream instanceof Cnew) {
            return ((Cnew) outputStream).m31533else();
        }
        return false;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m2711catch(mu0 mu0Var, OutputStream outputStream) throws IOException {
        if (mu0Var == null || outputStream == null) {
            throw new rj2("input parameters is null, cannot write extended local header");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.f2151do.m3929super(byteArrayOutputStream, (int) ej0.EXTRA_DATA_RECORD.getValue());
            this.f2151do.m3925import(this.f2152if, 0, mu0Var.m8068case());
            byteArrayOutputStream.write(this.f2152if, 0, 4);
            if (mu0Var.d()) {
                this.f2151do.m3933while(byteArrayOutputStream, mu0Var.m8085new());
                this.f2151do.m3933while(byteArrayOutputStream, mu0Var.m8093super());
            } else {
                this.f2151do.m3925import(this.f2152if, 0, mu0Var.m8085new());
                byteArrayOutputStream.write(this.f2152if, 0, 4);
                this.f2151do.m3925import(this.f2152if, 0, mu0Var.m8093super());
                byteArrayOutputStream.write(this.f2152if, 0, 4);
            }
            outputStream.write(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m2712const(rk2 rk2Var, mu0 mu0Var, OutputStream outputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.f2151do.m3929super(byteArrayOutputStream, (int) mu0Var.m6615do().getValue());
            this.f2151do.m3926native(byteArrayOutputStream, mu0Var.m8097throw());
            byteArrayOutputStream.write(mu0Var.m8071const());
            this.f2151do.m3926native(byteArrayOutputStream, mu0Var.m8100try().getCode());
            this.f2151do.m3925import(this.f2152if, 0, mu0Var.m8076final());
            byteArrayOutputStream.write(this.f2152if, 0, 4);
            this.f2151do.m3925import(this.f2152if, 0, mu0Var.m8068case());
            byteArrayOutputStream.write(this.f2152if, 0, 4);
            if (mu0Var.m8093super() >= 4294967295L) {
                this.f2151do.m3925import(this.f2152if, 0, 4294967295L);
                byteArrayOutputStream.write(this.f2152if, 0, 4);
                byteArrayOutputStream.write(this.f2152if, 0, 4);
                rk2Var.m7035finally(true);
                mu0Var.g(true);
            } else {
                this.f2151do.m3925import(this.f2152if, 0, mu0Var.m8085new());
                byteArrayOutputStream.write(this.f2152if, 0, 4);
                this.f2151do.m3925import(this.f2152if, 0, mu0Var.m8093super());
                byteArrayOutputStream.write(this.f2152if, 0, 4);
                rk2Var.m7035finally(false);
                mu0Var.g(false);
            }
            byte[] bytes = new byte[0];
            if (mj2.m4939try(mu0Var.m8069catch())) {
                Charset charsetForName = Charset.forName(on0.f4690class);
                if (b9.m476do(mu0Var.m8071const()[1], 3)) {
                    charsetForName = StandardCharsets.UTF_8;
                }
                bytes = mu0Var.m8069catch().getBytes(charsetForName);
            }
            this.f2151do.m3926native(byteArrayOutputStream, bytes.length);
            int i = rk2Var.m7034final() ? 32 : 0;
            if (mu0Var.m8078for() != null) {
                i += 11;
            }
            this.f2151do.m3926native(byteArrayOutputStream, i);
            if (bytes.length > 0) {
                byteArrayOutputStream.write(bytes);
            }
            if (rk2Var.m7034final()) {
                this.f2151do.m3926native(byteArrayOutputStream, (int) ej0.ZIP64_EXTRA_FIELD_SIGNATURE.getValue());
                this.f2151do.m3926native(byteArrayOutputStream, 28);
                this.f2151do.m3933while(byteArrayOutputStream, mu0Var.m8093super());
                this.f2151do.m3933while(byteArrayOutputStream, mu0Var.m8085new());
                this.f2151do.m3933while(byteArrayOutputStream, 0L);
                this.f2151do.m3929super(byteArrayOutputStream, 0);
            }
            if (mu0Var.m8078for() != null) {
                Cgoto cgotoM8078for = mu0Var.m8078for();
                this.f2151do.m3926native(byteArrayOutputStream, (int) cgotoM8078for.m6615do().getValue());
                this.f2151do.m3926native(byteArrayOutputStream, cgotoM8078for.m2754case());
                this.f2151do.m3926native(byteArrayOutputStream, cgotoM8078for.m2760new().getVersionNumber());
                byteArrayOutputStream.write(cgotoM8078for.m2757else().getBytes());
                byteArrayOutputStream.write(new byte[]{(byte) cgotoM8078for.m2758for().getRawCode()});
                this.f2151do.m3926native(byteArrayOutputStream, cgotoM8078for.m2762try().getCode());
            }
            outputStream.write(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m2713for(rk2 rk2Var, OutputStream outputStream) throws IOException {
        if (rk2Var == null || outputStream == null) {
            throw new rj2("input parameters is null, cannot finalize zip file without validations");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            long jM9060case = rk2Var.m7051try().m9060case();
            m2708this(rk2Var, byteArrayOutputStream, this.f2151do);
            int size = byteArrayOutputStream.size();
            if (rk2Var.m7034final() || jM9060case >= 4294967295L || rk2Var.m7038if().m9135if().size() >= 65535) {
                if (rk2Var.m7025break() == null) {
                    rk2Var.m7033extends(new oj2());
                }
                if (rk2Var.m7048this() == null) {
                    rk2Var.m7030default(new nj2());
                }
                rk2Var.m7048this().m5262else(size + jM9060case);
                m2707super(rk2Var, size, jM9060case, byteArrayOutputStream, this.f2151do);
                m2705final(rk2Var, byteArrayOutputStream, this.f2151do);
            }
            m2700break(rk2Var, size, jM9060case, byteArrayOutputStream, this.f2151do);
            m2709throw(rk2Var, outputStream, byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public void m2714goto(oa0 oa0Var, rk2 rk2Var, Celse celse) throws IOException {
        Celse celse2;
        String str;
        if (oa0Var == null || rk2Var == null) {
            throw new rj2("invalid input parameters, cannot update local file header");
        }
        boolean z = true;
        if (oa0Var.b() != celse.m31523if()) {
            String parent = rk2Var.m7027catch().getParent();
            String strM1195class = db0.m1195class(rk2Var.m7027catch().getName());
            String str2 = parent + System.getProperty("file.separator");
            if (oa0Var.b() < 9) {
                str = str2 + strM1195class + ".z0" + (oa0Var.b() + 1);
            } else {
                str = str2 + strM1195class + ".z" + (oa0Var.b() + 1);
            }
            celse2 = new Celse(new File(str));
        } else {
            celse2 = celse;
            z = false;
        }
        long jM31521for = celse2.m31521for();
        celse2.m31522goto(oa0Var.g() + 14);
        this.f2151do.m3925import(this.f2152if, 0, oa0Var.m8068case());
        celse2.write(this.f2152if, 0, 4);
        m2704else(celse2, oa0Var);
        if (z) {
            celse2.close();
        } else {
            celse.m31522goto(jM31521for);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m2715if(rk2 rk2Var, OutputStream outputStream) throws IOException {
        if (rk2Var == null || outputStream == null) {
            throw new rj2("input parameters is null, cannot finalize zip file");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            m2701case(rk2Var, outputStream);
            long jM9060case = rk2Var.m7051try().m9060case();
            m2708this(rk2Var, byteArrayOutputStream, this.f2151do);
            int size = byteArrayOutputStream.size();
            if (rk2Var.m7034final() || jM9060case >= 4294967295L || rk2Var.m7038if().m9135if().size() >= 65535) {
                if (rk2Var.m7025break() == null) {
                    rk2Var.m7033extends(new oj2());
                }
                if (rk2Var.m7048this() == null) {
                    rk2Var.m7030default(new nj2());
                }
                rk2Var.m7048this().m5262else(size + jM9060case);
                if (m2710try(outputStream)) {
                    int iM2706new = m2706new(outputStream);
                    rk2Var.m7048this().m5261case(iM2706new);
                    rk2Var.m7048this().m5264goto(iM2706new + 1);
                } else {
                    rk2Var.m7048this().m5261case(0);
                    rk2Var.m7048this().m5264goto(1);
                }
                m2707super(rk2Var, size, jM9060case, byteArrayOutputStream, this.f2151do);
                m2705final(rk2Var, byteArrayOutputStream, this.f2151do);
            }
            m2700break(rk2Var, size, jM9060case, byteArrayOutputStream, this.f2151do);
            m2709throw(rk2Var, outputStream, byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
