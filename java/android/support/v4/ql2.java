package android.support.v4;

import freemarker.core.Celse;
import freemarker.core.ParserConfiguration;

/* loaded from: classes.dex */
public final class ql2 implements ParserConfiguration {

    /* renamed from: do, reason: not valid java name */
    private final e91 f5484do;

    /* renamed from: for, reason: not valid java name */
    private final ParserConfiguration f5485for;

    /* renamed from: if, reason: not valid java name */
    private final Integer f5486if;

    public ql2(ParserConfiguration parserConfiguration, e91 e91Var, Integer num) {
        this.f5484do = e91Var;
        this.f5486if = num;
        this.f5485for = parserConfiguration;
    }

    @Override // freemarker.core.ParserConfiguration
    public Celse getArithmeticEngine() {
        return this.f5485for.getArithmeticEngine();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getAutoEscapingPolicy() {
        Integer num = this.f5486if;
        return num != null ? num.intValue() : this.f5485for.getAutoEscapingPolicy();
    }

    @Override // freemarker.core.ParserConfiguration
    public we2 getIncompatibleImprovements() {
        return this.f5485for.getIncompatibleImprovements();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getInterpolationSyntax() {
        return this.f5485for.getInterpolationSyntax();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getNamingConvention() {
        return this.f5485for.getNamingConvention();
    }

    @Override // freemarker.core.ParserConfiguration
    public e91 getOutputFormat() {
        e91 e91Var = this.f5484do;
        return e91Var != null ? e91Var : this.f5485for.getOutputFormat();
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getRecognizeStandardFileExtensions() {
        return false;
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getStrictSyntaxMode() {
        return this.f5485for.getStrictSyntaxMode();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getTabSize() {
        return this.f5485for.getTabSize();
    }

    @Override // freemarker.core.ParserConfiguration
    public int getTagSyntax() {
        return this.f5485for.getTagSyntax();
    }

    @Override // freemarker.core.ParserConfiguration
    public boolean getWhitespaceStripping() {
        return this.f5485for.getWhitespaceStripping();
    }
}
