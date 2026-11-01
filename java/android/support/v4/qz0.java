package android.support.v4;

import android.support.v4.uf1;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.List;

/* loaded from: classes3.dex */
public class qz0 extends f4<File> {

    /* renamed from: for, reason: not valid java name */
    private rk2 f5553for;

    /* renamed from: new, reason: not valid java name */
    private jl1 f5554new;

    public qz0(uf1 uf1Var, boolean z, rk2 rk2Var) {
        super(uf1Var, z);
        this.f5554new = new jl1();
        this.f5553for = rk2Var;
    }

    /* renamed from: break, reason: not valid java name */
    private RandomAccessFile m6693break(rk2 rk2Var, int i) throws FileNotFoundException {
        return new RandomAccessFile(m6694class(rk2Var, i), el1.READ.getValue());
    }

    /* renamed from: class, reason: not valid java name */
    private File m6694class(rk2 rk2Var, int i) {
        if (i == rk2Var.m7051try().m9068new()) {
            return rk2Var.m7027catch();
        }
        return new File(rk2Var.m7027catch().getPath().substring(0, rk2Var.m7027catch().getPath().lastIndexOf(".")) + (i >= 9 ? ".z" : ".z0") + (i + 1));
    }

    /* renamed from: const, reason: not valid java name */
    private void m6695const(List<oa0> list, long j, int i, int i2) {
        for (oa0 oa0Var : list) {
            if (oa0Var.b() == i) {
                oa0Var.n((oa0Var.g() + j) - i2);
                oa0Var.i(0);
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m6696final(rk2 rk2Var, long j, OutputStream outputStream) throws IOException, CloneNotSupportedException {
        rk2 rk2Var2 = (rk2) rk2Var.clone();
        rk2Var2.m7051try().m9063const(j);
        m6697import(rk2Var2, j);
        new gj0().m2713for(rk2Var2, outputStream);
    }

    /* renamed from: import, reason: not valid java name */
    private void m6697import(rk2 rk2Var, long j) {
        rk2Var.m7045static(false);
        m6698super(rk2Var);
        if (rk2Var.m7034final()) {
            m6699throw(rk2Var, j);
            m6700while(rk2Var, j);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m6698super(rk2 rk2Var) {
        int size = rk2Var.m7038if().m9135if().size();
        w70 w70VarM7051try = rk2Var.m7051try();
        w70VarM7051try.m9061catch(0);
        w70VarM7051try.m9062class(0);
        w70VarM7051try.m9069super(size);
        w70VarM7051try.m9071throw(size);
    }

    /* renamed from: throw, reason: not valid java name */
    private void m6699throw(rk2 rk2Var, long j) {
        if (rk2Var.m7048this() == null) {
            return;
        }
        nj2 nj2VarM7048this = rk2Var.m7048this();
        nj2VarM7048this.m5261case(0);
        nj2VarM7048this.m5262else(nj2VarM7048this.m5265new() + j);
        nj2VarM7048this.m5264goto(1);
    }

    /* renamed from: while, reason: not valid java name */
    private void m6700while(rk2 rk2Var, long j) {
        if (rk2Var.m7025break() == null) {
            return;
        }
        oj2 oj2VarM7025break = rk2Var.m7025break();
        oj2VarM7025break.m5681final(0);
        oj2VarM7025break.m5690super(0);
        oj2VarM7025break.m5687public(rk2Var.m7051try().m9067goto());
        oj2VarM7025break.m5692throw(oj2VarM7025break.m5676case() + j);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0055 A[Catch: all -> 0x004b, TRY_LEAVE, TryCatch #5 {all -> 0x004b, blocks: (B:13:0x0033, B:21:0x0055, B:16:0x0047), top: B:76:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0082  */
    @Override // android.support.v4.f4
    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo494new(File file, uf1 uf1Var) throws IOException {
        RandomAccessFile randomAccessFile;
        Throwable th;
        int i;
        if (!this.f5553for.m7029const()) {
            rj2 rj2Var = new rj2("archive not a split zip file");
            uf1Var.m8416if(rj2Var);
            throw rj2Var;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                int iM9068new = this.f5553for.m7051try().m9068new();
                if (iM9068new <= 0) {
                    throw new rj2("zip archive not a split zip file");
                }
                long j = 0;
                long j2 = 0;
                int i2 = 0;
                int i3 = 0;
                while (i2 <= iM9068new) {
                    RandomAccessFile randomAccessFileM6693break = m6693break(this.f5553for, i2);
                    try {
                        long length = randomAccessFileM6693break.length();
                        int i4 = 4;
                        if (i2 == 0) {
                            try {
                                if (this.f5554new.m3922for(randomAccessFileM6693break) == ej0.SPLIT_ZIP.getValue()) {
                                    i = 4;
                                    if (i2 == iM9068new) {
                                        length = this.f5553for.m7051try().m9060case();
                                    }
                                    long j3 = length;
                                    long j4 = i4;
                                    randomAccessFile = randomAccessFileM6693break;
                                    try {
                                        db0.m1210try(randomAccessFileM6693break, fileOutputStream, j4, j3, uf1Var);
                                        long j5 = j2 + (j3 - j4);
                                        int i5 = i2;
                                        long j6 = j;
                                        m6695const(this.f5553for.m7038if().m9135if(), i2 == 0 ? j : j5, i5, i);
                                        m2136goto();
                                        randomAccessFile.close();
                                        i2 = i5 + 1;
                                        j2 = j5;
                                        j = j6;
                                        i3 = i;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        th = th;
                                        throw th;
                                    }
                                } else {
                                    randomAccessFileM6693break.seek(j);
                                    i = i3;
                                    i4 = 0;
                                    if (i2 == iM9068new) {
                                    }
                                    long j32 = length;
                                    long j42 = i4;
                                    randomAccessFile = randomAccessFileM6693break;
                                    db0.m1210try(randomAccessFileM6693break, fileOutputStream, j42, j32, uf1Var);
                                    long j52 = j2 + (j32 - j42);
                                    int i52 = i2;
                                    long j62 = j;
                                    m6695const(this.f5553for.m7038if().m9135if(), i2 == 0 ? j : j52, i52, i);
                                    m2136goto();
                                    randomAccessFile.close();
                                    i2 = i52 + 1;
                                    j2 = j52;
                                    j = j62;
                                    i3 = i;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                randomAccessFile = randomAccessFileM6693break;
                            }
                        } else {
                            i = i3;
                            i4 = 0;
                            if (i2 == iM9068new) {
                            }
                            long j322 = length;
                            long j422 = i4;
                            randomAccessFile = randomAccessFileM6693break;
                            db0.m1210try(randomAccessFileM6693break, fileOutputStream, j422, j322, uf1Var);
                            long j522 = j2 + (j322 - j422);
                            int i522 = i2;
                            long j622 = j;
                            m6695const(this.f5553for.m7038if().m9135if(), i2 == 0 ? j : j522, i522, i);
                            m2136goto();
                            randomAccessFile.close();
                            i2 = i522 + 1;
                            j2 = j522;
                            j = j622;
                            i3 = i;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        randomAccessFile = randomAccessFileM6693break;
                    }
                    try {
                        throw th;
                    } finally {
                    }
                }
                m6696final(this.f5553for, j2, fileOutputStream);
                uf1Var.m8412do();
                fileOutputStream.close();
            } finally {
            }
        } catch (CloneNotSupportedException e) {
            throw new rj2(e);
        }
    }

    @Override // android.support.v4.f4
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public long mo493if(File file) {
        long length = 0;
        if (!this.f5553for.m7029const()) {
            return 0L;
        }
        for (int i = 0; i <= this.f5553for.m7051try().m9068new(); i++) {
            length += m6694class(this.f5553for, i).length();
        }
        return length;
    }

    @Override // android.support.v4.f4
    /* renamed from: try */
    public uf1.Cfor mo173try() {
        return uf1.Cfor.MERGE_ZIP_FILES;
    }
}
