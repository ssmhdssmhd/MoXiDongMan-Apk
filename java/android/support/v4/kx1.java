package android.support.v4;

import android.support.v4.uf1;
import java.io.IOException;
import net.lingala.zip4j.io.outputstream.Celse;

/* loaded from: classes3.dex */
public class kx1 extends f4<String> {

    /* renamed from: for, reason: not valid java name */
    private rk2 f3500for;

    public kx1(uf1 uf1Var, boolean z, rk2 rk2Var) {
        super(uf1Var, z);
        this.f3500for = rk2Var;
    }

    @Override // android.support.v4.f4
    /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
    public void mo494new(String str, uf1 uf1Var) throws IOException {
        if (str == null) {
            throw new rj2("comment is null, cannot update Zip file with comment");
        }
        w70 w70VarM7051try = this.f3500for.m7051try();
        w70VarM7051try.m9059break(str);
        Celse celse = new Celse(this.f3500for.m7027catch());
        try {
            if (this.f3500for.m7034final()) {
                celse.m31522goto(this.f3500for.m7025break().m5676case());
            } else {
                celse.m31522goto(w70VarM7051try.m9060case());
            }
            new gj0().m2713for(this.f3500for, celse);
            celse.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    celse.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // android.support.v4.f4
    /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
    public long mo493if(String str) {
        return 0L;
    }

    @Override // android.support.v4.f4
    /* renamed from: try */
    public uf1.Cfor mo173try() {
        return uf1.Cfor.SET_COMMENT;
    }
}
