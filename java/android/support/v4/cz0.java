package android.support.v4;

import android.support.v4.uh0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Cfor;

/* loaded from: classes3.dex */
public class cz0 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: goto, reason: not valid java name */
    private static final String f895goto = "1.3.6.1.4.1.8301.3.1.3.4.1";

    /* renamed from: case, reason: not valid java name */
    private SecureRandom f896case;

    /* renamed from: do, reason: not valid java name */
    private bz0 f897do;

    /* renamed from: else, reason: not valid java name */
    private boolean f898else = false;

    /* renamed from: for, reason: not valid java name */
    private int f899for;

    /* renamed from: if, reason: not valid java name */
    private int f900if;

    /* renamed from: new, reason: not valid java name */
    private int f901new;

    /* renamed from: try, reason: not valid java name */
    private int f902try;

    /* renamed from: do, reason: not valid java name */
    private y3 m1090do() {
        if (!this.f898else) {
            m1091for();
        }
        se0 se0Var = new se0(this.f900if, this.f902try);
        pe1 pe1Var = new pe1(se0Var, this.f901new, 'I', this.f896case);
        new re1(se0Var, pe1Var).m6951for();
        uh0.Cdo cdoM8449do = uh0.m8449do(uh0.m8451if(se0Var, pe1Var), this.f896case);
        qe0 qe0VarM8453for = cdoM8449do.m8453for();
        fd1 fd1VarM8454if = cdoM8449do.m8454if();
        qe0 qe0Var = (qe0) qe0VarM8453for.m6533throw();
        qe0 qe0VarM6526import = qe0Var.m6526import();
        int iM402new = qe0Var.m402new();
        qe0[] qe0VarArrM6522while = qe0.m6522while(iM402new, this.f896case);
        fd1 fd1Var = new fd1(this.f899for, this.f896case);
        return new y3((a4) new iz0(this.f899for, this.f901new, (qe0) ((qe0) qe0VarArrM6522while[0].mo398else(qe0VarM6526import)).mo400goto(fd1Var)), (a4) new gz0(this.f899for, iM402new, se0Var, pe1Var, fd1VarM8454if, fd1Var, qe0VarArrM6522while[1]));
    }

    /* renamed from: for, reason: not valid java name */
    private void m1091for() {
        m1092if(new bz0(Cfor.m33599case(), new ez0()));
    }

    /* renamed from: if, reason: not valid java name */
    private void m1092if(dr0 dr0Var) {
        this.f897do = (bz0) dr0Var;
        SecureRandom secureRandomM1497do = dr0Var.m1497do();
        this.f896case = secureRandomM1497do;
        if (secureRandomM1497do == null) {
            this.f896case = Cfor.m33599case();
        }
        this.f900if = this.f897do.m704for().m2076if();
        this.f899for = this.f897do.m704for().m2075for();
        this.f901new = this.f897do.m704for().m2077new();
        this.f902try = this.f897do.m704for().m2074do();
        this.f898else = true;
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        return m1090do();
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        m1092if(dr0Var);
    }
}
