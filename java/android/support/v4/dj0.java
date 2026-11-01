package android.support.v4;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class dj0 {

    /* renamed from: do, reason: not valid java name */
    private rk2 f1063do;

    /* renamed from: if, reason: not valid java name */
    private jl1 f1065if = new jl1();

    /* renamed from: for, reason: not valid java name */
    private byte[] f1064for = new byte[4];

    /* renamed from: break, reason: not valid java name */
    private w70 m1341break(RandomAccessFile randomAccessFile, jl1 jl1Var) throws IOException {
        long jM3922for;
        ej0 ej0Var;
        long length = randomAccessFile.length() - 22;
        w70 w70Var = new w70();
        int i = 0;
        while (true) {
            long j = length - 1;
            randomAccessFile.seek(length);
            i++;
            jM3922for = jl1Var.m3922for(randomAccessFile);
            ej0Var = ej0.END_OF_CENTRAL_DIRECTORY;
            if (jM3922for == ej0Var.getValue() || i > 3000) {
                break;
            }
            length = j;
        }
        if (jM3922for != ej0Var.getValue()) {
            throw new rj2("zip headers not found. probably not a zip file");
        }
        w70Var.m6616if(ej0Var);
        w70Var.m9061catch(jl1Var.m3919class(randomAccessFile));
        w70Var.m9062class(jl1Var.m3919class(randomAccessFile));
        w70Var.m9071throw(jl1Var.m3919class(randomAccessFile));
        w70Var.m9069super(jl1Var.m3919class(randomAccessFile));
        w70Var.m9065final(jl1Var.m3922for(randomAccessFile));
        randomAccessFile.readFully(this.f1064for);
        w70Var.m9063const(jl1Var.m3916break(this.f1064for, 0));
        int iM3919class = jl1Var.m3919class(randomAccessFile);
        if (iM3919class > 0) {
            byte[] bArr = new byte[iM3919class];
            randomAccessFile.readFully(bArr);
            w70Var.m9059break(new String(bArr, StandardCharsets.UTF_8));
        } else {
            w70Var.m9059break(null);
        }
        this.f1063do.m7045static(w70Var.m9068new() > 0);
        return w70Var;
    }

    /* renamed from: case, reason: not valid java name */
    private void m1342case(mu0 mu0Var, jl1 jl1Var) throws rj2 {
        Cgoto cgotoM1353new;
        if (mu0Var.m8096this() == null || mu0Var.m8096this().size() <= 0 || (cgotoM1353new = m1353new(mu0Var.m8096this(), jl1Var)) == null) {
            return;
        }
        mu0Var.m8091static(cgotoM1353new);
        mu0Var.m8066abstract(t70.AES);
    }

    /* renamed from: catch, reason: not valid java name */
    private List<aa0> m1343catch(InputStream inputStream, int i) throws IOException {
        if (i < 4) {
            if (i <= 0) {
                return null;
            }
            inputStream.skip(i);
            return null;
        }
        byte[] bArr = new byte[i];
        inputStream.read(bArr);
        try {
            return m1348for(bArr, i);
        } catch (Exception unused) {
            return Collections.emptyList();
        }
    }

    /* renamed from: class, reason: not valid java name */
    private List<aa0> m1344class(RandomAccessFile randomAccessFile, int i) throws IOException {
        if (i < 4) {
            if (i <= 0) {
                return null;
            }
            randomAccessFile.skipBytes(i);
            return null;
        }
        byte[] bArr = new byte[i];
        randomAccessFile.read(bArr);
        try {
            return m1348for(bArr, i);
        } catch (Exception unused) {
            return Collections.emptyList();
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m1345const(InputStream inputStream, mu0 mu0Var) throws IOException {
        int iM8067break = mu0Var.m8067break();
        if (iM8067break <= 0) {
            return;
        }
        mu0Var.m8072continue(m1343catch(inputStream, iM8067break));
    }

    /* renamed from: do, reason: not valid java name */
    private long m1346do(rk2 rk2Var) {
        return rk2Var.m7034final() ? rk2Var.m7025break().m5691this() : rk2Var.m7051try().m9067goto();
    }

    /* renamed from: final, reason: not valid java name */
    private void m1347final(RandomAccessFile randomAccessFile, oa0 oa0Var) throws IOException {
        int iM8067break = oa0Var.m8067break();
        if (iM8067break <= 0) {
            return;
        }
        oa0Var.m8072continue(m1344class(randomAccessFile, iM8067break));
    }

    /* renamed from: for, reason: not valid java name */
    private List<aa0> m1348for(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < i) {
            aa0 aa0Var = new aa0();
            aa0Var.m110else(this.f1065if.m3920const(bArr, i2));
            int i3 = i2 + 2;
            int iM3920const = this.f1065if.m3920const(bArr, i3);
            aa0Var.m112goto(iM3920const);
            int i4 = i3 + 2;
            if (iM3920const > 0) {
                byte[] bArr2 = new byte[iM3920const];
                System.arraycopy(bArr, i4, bArr2, 0, iM3920const);
                aa0Var.m109case(bArr2);
            }
            i2 = i4 + iM3920const;
            arrayList.add(aa0Var);
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    private wf m1349goto(RandomAccessFile randomAccessFile, jl1 jl1Var) throws IOException {
        wf wfVar = new wf();
        ArrayList arrayList = new ArrayList();
        long jM1350if = m1350if(this.f1063do);
        long jM1346do = m1346do(this.f1063do);
        if (this.f1063do.m7034final()) {
            jM1350if = this.f1063do.m7025break().m5676case();
            jM1346do = (int) this.f1063do.m7025break().m5691this();
        }
        randomAccessFile.seek(jM1350if);
        int i = 2;
        byte[] bArr = new byte[2];
        byte[] bArr2 = new byte[4];
        int i2 = 0;
        while (i2 < jM1346do) {
            oa0 oa0Var = new oa0();
            long jM3922for = jl1Var.m3922for(randomAccessFile);
            ej0 ej0Var = ej0.CENTRAL_DIRECTORY;
            if (jM3922for != ej0Var.getValue()) {
                throw new rj2("Expected central directory entry not found (#" + (i2 + 1) + ")");
            }
            oa0Var.m6616if(ej0Var);
            oa0Var.o(jl1Var.m3919class(randomAccessFile));
            oa0Var.m8095synchronized(jl1Var.m3919class(randomAccessFile));
            byte[] bArr3 = new byte[i];
            randomAccessFile.readFully(bArr3);
            oa0Var.m8087private(b9.m476do(bArr3[0], 0));
            oa0Var.m8077finally(b9.m476do(bArr3[0], 3));
            oa0Var.m8088protected(b9.m476do(bArr3[1], 3));
            oa0Var.m8099transient((byte[]) bArr3.clone());
            oa0Var.m8098throws(hq.getCompressionMethodFromCode(jl1Var.m3919class(randomAccessFile)));
            oa0Var.m8080implements(jl1Var.m3922for(randomAccessFile));
            randomAccessFile.readFully(bArr2);
            oa0Var.m8073default(jl1Var.m3916break(bArr2, 0));
            oa0Var.m8075extends(bArr2);
            oa0Var.m8094switch(jl1Var.m3930this(randomAccessFile, 4));
            oa0Var.m8082instanceof(jl1Var.m3930this(randomAccessFile, 4));
            int iM3919class = jl1Var.m3919class(randomAccessFile);
            oa0Var.m8083interface(iM3919class);
            oa0Var.m8092strictfp(jl1Var.m3919class(randomAccessFile));
            int iM3919class2 = jl1Var.m3919class(randomAccessFile);
            oa0Var.l(iM3919class2);
            oa0Var.i(jl1Var.m3919class(randomAccessFile));
            randomAccessFile.readFully(bArr);
            oa0Var.m((byte[]) bArr.clone());
            randomAccessFile.readFully(bArr2);
            oa0Var.j((byte[]) bArr2.clone());
            randomAccessFile.readFully(bArr2);
            byte[] bArr4 = bArr;
            oa0Var.n(jl1Var.m3916break(bArr2, 0));
            if (iM3919class > 0) {
                byte[] bArr5 = new byte[iM3919class];
                randomAccessFile.readFully(bArr5);
                String strM2314do = fj0.m2314do(bArr5, oa0Var.m8090return());
                if (strM2314do.contains(":\\")) {
                    strM2314do = strM2314do.substring(strM2314do.indexOf(":\\") + 2);
                }
                oa0Var.m8101volatile(strM2314do);
                oa0Var.m8086package(strM2314do.endsWith(on0.f4694final) || strM2314do.endsWith("\\"));
            } else {
                oa0Var.m8101volatile(null);
            }
            m1347final(randomAccessFile, oa0Var);
            m1352native(oa0Var, jl1Var);
            m1357try(oa0Var, jl1Var);
            if (iM3919class2 > 0) {
                byte[] bArr6 = new byte[iM3919class2];
                randomAccessFile.readFully(bArr6);
                oa0Var.k(fj0.m2314do(bArr6, oa0Var.m8090return()));
            }
            if (oa0Var.m8089public()) {
                if (oa0Var.m8078for() != null) {
                    oa0Var.m8066abstract(t70.AES);
                } else {
                    oa0Var.m8066abstract(t70.ZIP_STANDARD);
                }
            }
            arrayList.add(oa0Var);
            i2++;
            bArr = bArr4;
            i = 2;
        }
        wfVar.m9136new(arrayList);
        c10 c10Var = new c10();
        long jM3922for2 = jl1Var.m3922for(randomAccessFile);
        ej0 ej0Var2 = ej0.DIGITAL_SIGNATURE;
        if (jM3922for2 == ej0Var2.getValue()) {
            c10Var.m6616if(ej0Var2);
            c10Var.m712case(jl1Var.m3919class(randomAccessFile));
            if (c10Var.m714new() > 0) {
                byte[] bArr7 = new byte[c10Var.m714new()];
                randomAccessFile.readFully(bArr7);
                c10Var.m715try(new String(bArr7));
            }
        }
        return wfVar;
    }

    /* renamed from: if, reason: not valid java name */
    private long m1350if(rk2 rk2Var) {
        return rk2Var.m7034final() ? rk2Var.m7025break().m5676case() : rk2Var.m7051try().m9060case();
    }

    /* renamed from: import, reason: not valid java name */
    private pj2 m1351import(List<aa0> list, jl1 jl1Var) throws rj2 {
        for (aa0 aa0Var : list) {
            if (aa0Var != null && ej0.ZIP64_EXTRA_FIELD_SIGNATURE.getValue() == aa0Var.m113new()) {
                pj2 pj2Var = new pj2();
                byte[] bArrM111for = aa0Var.m111for();
                if (aa0Var.m114try() <= 0) {
                    throw new rj2("No data present for Zip64Extended info");
                }
                int i = 0;
                if (aa0Var.m114try() > 0) {
                    pj2Var.m6088class(jl1Var.m3916break(bArrM111for, 0));
                    i = 8;
                }
                if (i < aa0Var.m114try()) {
                    pj2Var.m6091goto(jl1Var.m3916break(bArrM111for, i));
                    i += 8;
                }
                if (i < aa0Var.m114try()) {
                    pj2Var.m6085break(jl1Var.m3916break(bArrM111for, i));
                    i += 8;
                }
                if (i < aa0Var.m114try()) {
                    pj2Var.m6093this(jl1Var.m3932try(bArrM111for, i));
                }
                return pj2Var;
            }
        }
        return null;
    }

    /* renamed from: native, reason: not valid java name */
    private void m1352native(oa0 oa0Var, jl1 jl1Var) throws rj2 {
        pj2 pj2VarM1351import;
        if (oa0Var.m8096this() == null || oa0Var.m8096this().size() <= 0 || (pj2VarM1351import = m1351import(oa0Var.m8096this(), jl1Var)) == null) {
            return;
        }
        oa0Var.a(pj2VarM1351import);
        oa0Var.m8082instanceof(pj2VarM1351import.m6089else());
        oa0Var.m8094switch(pj2VarM1351import.m6090for());
        oa0Var.n(pj2VarM1351import.m6094try());
        oa0Var.i(pj2VarM1351import.m6092new());
    }

    /* renamed from: new, reason: not valid java name */
    private Cgoto m1353new(List<aa0> list, jl1 jl1Var) throws rj2 {
        if (list == null) {
            return null;
        }
        for (aa0 aa0Var : list) {
            if (aa0Var != null) {
                long jM113new = aa0Var.m113new();
                ej0 ej0Var = ej0.AES_EXTRA_DATA_RECORD;
                if (jM113new == ej0Var.getValue()) {
                    if (aa0Var.m111for() == null) {
                        throw new rj2("corrupt AES extra data records");
                    }
                    Cgoto cgoto = new Cgoto();
                    cgoto.m6616if(ej0Var);
                    cgoto.m2755catch(aa0Var.m114try());
                    byte[] bArrM111for = aa0Var.m111for();
                    cgoto.m2761this(x0.getFromVersionNumber(jl1Var.m3920const(bArrM111for, 0)));
                    byte[] bArr = new byte[2];
                    System.arraycopy(bArrM111for, 2, bArr, 0, 2);
                    cgoto.m2756class(new String(bArr));
                    cgoto.m2759goto(w0.getAesKeyStrengthFromRawCode(bArrM111for[4] & 255));
                    cgoto.m2753break(hq.getCompressionMethodFromCode(jl1Var.m3920const(bArrM111for, 5)));
                    return cgoto;
                }
            }
        }
        return null;
    }

    /* renamed from: public, reason: not valid java name */
    private void m1354public(mu0 mu0Var, jl1 jl1Var) throws rj2 {
        pj2 pj2VarM1351import;
        if (mu0Var == null) {
            throw new rj2("file header is null in reading Zip64 Extended Info");
        }
        if (mu0Var.m8096this() == null || mu0Var.m8096this().size() <= 0 || (pj2VarM1351import = m1351import(mu0Var.m8096this(), jl1Var)) == null) {
            return;
        }
        mu0Var.a(pj2VarM1351import);
        mu0Var.m8082instanceof(pj2VarM1351import.m6089else());
        mu0Var.m8094switch(pj2VarM1351import.m6090for());
    }

    /* renamed from: return, reason: not valid java name */
    private void m1355return(RandomAccessFile randomAccessFile, jl1 jl1Var) throws IOException {
        long length = randomAccessFile.length() - 22;
        while (true) {
            long j = length - 1;
            randomAccessFile.seek(length);
            if (jl1Var.m3922for(randomAccessFile) == ej0.END_OF_CENTRAL_DIRECTORY.getValue()) {
                randomAccessFile.seek(((((randomAccessFile.getFilePointer() - 4) - 4) - 8) - 4) - 4);
                return;
            }
            length = j;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private oj2 m1356throw(RandomAccessFile randomAccessFile, jl1 jl1Var) throws IOException {
        if (this.f1063do.m7048this() == null) {
            throw new rj2("invalid zip64 end of central directory locator");
        }
        long jM5265new = this.f1063do.m7048this().m5265new();
        if (jM5265new < 0) {
            throw new rj2("invalid offset for start of end of central directory record");
        }
        randomAccessFile.seek(jM5265new);
        oj2 oj2Var = new oj2();
        long jM3922for = jl1Var.m3922for(randomAccessFile);
        ej0 ej0Var = ej0.ZIP64_END_CENTRAL_DIRECTORY_RECORD;
        if (jM3922for != ej0Var.getValue()) {
            throw new rj2("invalid signature for zip64 end of central directory record");
        }
        oj2Var.m6616if(ej0Var);
        oj2Var.m5684import(jl1Var.m3923goto(randomAccessFile));
        oj2Var.m5688return(jl1Var.m3919class(randomAccessFile));
        oj2Var.m5689static(jl1Var.m3919class(randomAccessFile));
        oj2Var.m5681final(jl1Var.m3922for(randomAccessFile));
        oj2Var.m5690super(jl1Var.m3922for(randomAccessFile));
        oj2Var.m5687public(jl1Var.m3923goto(randomAccessFile));
        oj2Var.m5685native(jl1Var.m3923goto(randomAccessFile));
        oj2Var.m5694while(jl1Var.m3923goto(randomAccessFile));
        oj2Var.m5692throw(jl1Var.m3923goto(randomAccessFile));
        long jM5683goto = oj2Var.m5683goto() - 44;
        if (jM5683goto > 0) {
            byte[] bArr = new byte[(int) jM5683goto];
            randomAccessFile.readFully(bArr);
            oj2Var.m5679const(bArr);
        }
        return oj2Var;
    }

    /* renamed from: try, reason: not valid java name */
    private void m1357try(oa0 oa0Var, jl1 jl1Var) throws rj2 {
        Cgoto cgotoM1353new;
        if (oa0Var.m8096this() == null || oa0Var.m8096this().size() <= 0 || (cgotoM1353new = m1353new(oa0Var.m8096this(), jl1Var)) == null) {
            return;
        }
        oa0Var.m8091static(cgotoM1353new);
        oa0Var.m8066abstract(t70.AES);
    }

    /* renamed from: while, reason: not valid java name */
    private nj2 m1358while(RandomAccessFile randomAccessFile, jl1 jl1Var) throws IOException {
        nj2 nj2Var = new nj2();
        m1355return(randomAccessFile, jl1Var);
        long jM3922for = jl1Var.m3922for(randomAccessFile);
        ej0 ej0Var = ej0.ZIP64_END_CENTRAL_DIRECTORY_LOCATOR;
        if (jM3922for != ej0Var.getValue()) {
            this.f1063do.m7035finally(false);
            return null;
        }
        this.f1063do.m7035finally(true);
        nj2Var.m6616if(ej0Var);
        nj2Var.m5261case(jl1Var.m3922for(randomAccessFile));
        nj2Var.m5262else(jl1Var.m3923goto(randomAccessFile));
        nj2Var.m5264goto(jl1Var.m3922for(randomAccessFile));
        return nj2Var;
    }

    /* renamed from: else, reason: not valid java name */
    public rk2 m1359else(RandomAccessFile randomAccessFile) throws IOException {
        rk2 rk2Var = new rk2();
        this.f1063do = rk2Var;
        try {
            rk2Var.m7040native(m1341break(randomAccessFile, this.f1065if));
            this.f1063do.m7030default(m1358while(randomAccessFile, this.f1065if));
            if (this.f1063do.m7034final()) {
                this.f1063do.m7033extends(m1356throw(randomAccessFile, this.f1065if));
                if (this.f1063do.m7025break() == null || this.f1063do.m7025break().m5686new() <= 0) {
                    this.f1063do.m7045static(false);
                } else {
                    this.f1063do.m7045static(true);
                }
            }
            this.f1063do.m7049throw(m1349goto(randomAccessFile, this.f1065if));
            return this.f1063do;
        } catch (IOException e) {
            throw new rj2("Zip headers not found. Probably not a zip file or a corrupted zip file", e);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public mu0 m1360super(InputStream inputStream) throws IOException {
        mu0 mu0Var = new mu0();
        byte[] bArr = new byte[4];
        long jM3924if = this.f1065if.m3924if(inputStream);
        ej0 ej0Var = ej0.LOCAL_FILE_HEADER;
        if (jM3924if != ej0Var.getValue()) {
            return null;
        }
        mu0Var.m6616if(ej0Var);
        mu0Var.m8095synchronized(this.f1065if.m3918catch(inputStream));
        byte[] bArr2 = new byte[2];
        if (inputStream.read(bArr2) != 2) {
            throw new rj2("Could not read enough bytes for generalPurposeFlags");
        }
        mu0Var.m8087private(b9.m476do(bArr2[0], 0));
        mu0Var.m8077finally(b9.m476do(bArr2[0], 3));
        boolean z = true;
        mu0Var.m8088protected(b9.m476do(bArr2[1], 3));
        mu0Var.m8099transient((byte[]) bArr2.clone());
        mu0Var.m8098throws(hq.getCompressionMethodFromCode(this.f1065if.m3918catch(inputStream)));
        mu0Var.m8080implements(this.f1065if.m3924if(inputStream));
        inputStream.read(bArr);
        mu0Var.m8073default(this.f1065if.m3916break(bArr, 0));
        mu0Var.m8075extends((byte[]) bArr.clone());
        mu0Var.m8094switch(this.f1065if.m3921else(inputStream, 4));
        mu0Var.m8082instanceof(this.f1065if.m3921else(inputStream, 4));
        int iM3918catch = this.f1065if.m3918catch(inputStream);
        mu0Var.m8083interface(iM3918catch);
        mu0Var.m8092strictfp(this.f1065if.m3918catch(inputStream));
        if (iM3918catch > 0) {
            byte[] bArr3 = new byte[iM3918catch];
            inputStream.read(bArr3);
            String strM2314do = fj0.m2314do(bArr3, mu0Var.m8090return());
            if (strM2314do == null) {
                throw new rj2("file name is null, cannot assign file name to local file header");
            }
            if (strM2314do.contains(":" + System.getProperty("file.separator"))) {
                strM2314do = strM2314do.substring(strM2314do.indexOf(":" + System.getProperty("file.separator")) + 2);
            }
            mu0Var.m8101volatile(strM2314do);
            if (!strM2314do.endsWith(on0.f4694final) && !strM2314do.endsWith("\\")) {
                z = false;
            }
            mu0Var.m8086package(z);
        } else {
            mu0Var.m8101volatile(null);
        }
        m1345const(inputStream, mu0Var);
        m1354public(mu0Var, this.f1065if);
        m1342case(mu0Var, this.f1065if);
        if (mu0Var.m8089public() && mu0Var.m8079goto() != t70.AES) {
            if (BigInteger.valueOf(mu0Var.m8071const()[0]).testBit(6)) {
                mu0Var.m8066abstract(t70.ZIP_STANDARD_VARIANT_STRONG);
            } else {
                mu0Var.m8066abstract(t70.ZIP_STANDARD);
            }
        }
        return mu0Var;
    }

    /* renamed from: this, reason: not valid java name */
    public rw m1361this(InputStream inputStream, boolean z) throws IOException {
        rw rwVar = new rw();
        byte[] bArr = new byte[4];
        inputStream.read(bArr);
        long jM3916break = this.f1065if.m3916break(bArr, 0);
        ej0 ej0Var = ej0.EXTRA_DATA_RECORD;
        if (jM3916break == ej0Var.getValue()) {
            rwVar.m6616if(ej0Var);
            inputStream.read(bArr);
            rwVar.m7180else(this.f1065if.m3916break(bArr, 0));
        } else {
            rwVar.m7180else(jM3916break);
        }
        if (z) {
            rwVar.m7179case(this.f1065if.m3917case(inputStream));
            rwVar.m7182goto(this.f1065if.m3917case(inputStream));
        } else {
            rwVar.m7179case(this.f1065if.m3924if(inputStream));
            rwVar.m7182goto(this.f1065if.m3924if(inputStream));
        }
        return rwVar;
    }
}
