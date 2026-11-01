package freemarker.core;

import android.support.v4.e91;
import android.support.v4.we2;

/* loaded from: classes.dex */
class q1 implements ParserConfiguration {

    /* renamed from: break, reason: not valid java name */
    private Integer f24077break;

    /* renamed from: case, reason: not valid java name */
    private Celse f24078case;

    /* renamed from: catch, reason: not valid java name */
    private final we2 f24079catch;

    /* renamed from: do, reason: not valid java name */
    private final int f24080do;

    /* renamed from: else, reason: not valid java name */
    private Integer f24081else;

    /* renamed from: for, reason: not valid java name */
    private final int f24082for;

    /* renamed from: goto, reason: not valid java name */
    private e91 f24083goto;

    /* renamed from: if, reason: not valid java name */
    private final int f24084if;

    /* renamed from: new, reason: not valid java name */
    private final boolean f24085new;

    /* renamed from: this, reason: not valid java name */
    private Boolean f24086this;

    /* renamed from: try, reason: not valid java name */
    private final boolean f24087try;

    public q1(boolean z, boolean z2, int i, int i2, int i3, Integer num, e91 e91Var, Boolean bool, Integer num2, we2 we2Var, Celse celse) {
        this.f24080do = i;
        this.f24084if = i2;
        this.f24082for = i3;
        this.f24085new = z2;
        this.f24087try = z;
        this.f24081else = num;
        this.f24083goto = e91Var;
        this.f24086this = bool;
        this.f24077break = num2;
        this.f24079catch = we2Var;
        this.f24078case = celse;
    }

    /* renamed from: do, reason: not valid java name */
    public void m28219do(Celse celse) {
        if (this.f24078case == null) {
            this.f24078case = celse;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m28220for(e91 e91Var) {
        if (this.f24083goto == null) {
            this.f24083goto = e91Var;
        }
    }

    @Override // freemarker.core.ParserConfiguration
    public Celse getArithmeticEngine() {
        Celse celse = this.f24078case;
        if (celse != null) {
            return celse;
        }
        throw new IllegalStateException();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getAutoEscapingPolicy() {
        Integer num = this.f24081else;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException();
    }

    @Override // freemarker.core.ParserConfiguration
    public we2 getIncompatibleImprovements() {
        return this.f24079catch;
    }

    @Override // freemarker.core.ParserConfiguration
    public int getInterpolationSyntax() {
        return this.f24084if;
    }

    @Override // freemarker.core.ParserConfiguration
    public int getNamingConvention() {
        return this.f24082for;
    }

    @Override // freemarker.core.ParserConfiguration
    public e91 getOutputFormat() {
        e91 e91Var = this.f24083goto;
        if (e91Var != null) {
            return e91Var;
        }
        throw new IllegalStateException();
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getRecognizeStandardFileExtensions() {
        Boolean bool = this.f24086this;
        if (bool != null) {
            return bool.booleanValue();
        }
        throw new IllegalStateException();
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getStrictSyntaxMode() {
        return this.f24087try;
    }

    @Override // freemarker.core.ParserConfiguration
    public int getTabSize() {
        Integer num = this.f24077break;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getTagSyntax() {
        return this.f24080do;
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getWhitespaceStripping() {
        return this.f24085new;
    }

    /* renamed from: if, reason: not valid java name */
    public void m28221if(int i) {
        if (this.f24081else == null) {
            this.f24081else = Integer.valueOf(i);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m28222new(boolean z) {
        if (this.f24086this == null) {
            this.f24086this = Boolean.valueOf(z);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m28223try(int i) {
        if (this.f24077break == null) {
            this.f24077break = Integer.valueOf(i);
        }
    }
}
