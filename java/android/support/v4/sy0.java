package android.support.v4;

import android.support.v4.uh0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Cfor;

/* loaded from: classes3.dex */
public class sy0 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: goto, reason: not valid java name */
    public static final String f6332goto = "1.3.6.1.4.1.8301.3.1.3.4.2";

    /* renamed from: case, reason: not valid java name */
    private SecureRandom f6333case;

    /* renamed from: do, reason: not valid java name */
    private ry0 f6334do;

    /* renamed from: else, reason: not valid java name */
    private boolean f6335else = false;

    /* renamed from: for, reason: not valid java name */
    private int f6336for;

    /* renamed from: if, reason: not valid java name */
    private int f6337if;

    /* renamed from: new, reason: not valid java name */
    private int f6338new;

    /* renamed from: try, reason: not valid java name */
    private int f6339try;

    /* renamed from: do, reason: not valid java name */
    private void m7661do() {
        init(new ry0(Cfor.m33599case(), new uy0()));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        if (!this.f6335else) {
            m7661do();
        }
        se0 se0Var = new se0(this.f6337if, this.f6339try);
        pe1 pe1Var = new pe1(se0Var, this.f6338new, 'I', this.f6333case);
        uh0.Cdo cdoM8449do = uh0.m8449do(uh0.m8451if(se0Var, pe1Var), this.f6333case);
        qe0 qe0VarM8453for = cdoM8449do.m8453for();
        fd1 fd1VarM8454if = cdoM8449do.m8454if();
        qe0 qe0Var = (qe0) qe0VarM8453for.m6533throw();
        return new y3((a4) new zy0(this.f6336for, this.f6338new, qe0Var, this.f6334do.m7200for().m8699try()), (a4) new xy0(this.f6336for, qe0Var.m402new(), se0Var, pe1Var, fd1VarM8454if, this.f6334do.m7200for().m8699try()));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f6334do = (ry0) dr0Var;
        this.f6333case = Cfor.m33599case();
        this.f6337if = this.f6334do.m7200for().m2076if();
        this.f6336for = this.f6334do.m7200for().m2075for();
        this.f6338new = this.f6334do.m7200for().m2077new();
        this.f6339try = this.f6334do.m7200for().m2074do();
        this.f6335else = true;
    }
}
