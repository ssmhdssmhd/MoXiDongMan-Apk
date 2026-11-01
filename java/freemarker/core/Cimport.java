package freemarker.core;

/* renamed from: freemarker.core.import, reason: invalid class name */
/* loaded from: classes.dex */
final class Cimport extends l3 {
    private final boolean affectedByStringSlicingBug;
    private final boolean rightAdaptive;
    private final int size;
    private final int step;

    public Cimport(int i, int i2, boolean z, boolean z2) {
        super(i);
        this.step = i <= i2 ? 1 : -1;
        this.size = Math.abs(i2 - i) + (z ? 1 : 0);
        this.rightAdaptive = z2;
        this.affectedByStringSlicingBug = z;
    }

    @Override // freemarker.core.l3
    public int getStep() {
        return this.step;
    }

    @Override // freemarker.core.l3
    public boolean isAffectedByStringSlicingBug() {
        return this.affectedByStringSlicingBug;
    }

    @Override // freemarker.core.l3
    public boolean isRightAdaptive() {
        return this.rightAdaptive;
    }

    @Override // freemarker.core.l3
    public boolean isRightUnbounded() {
        return false;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() {
        return this.size;
    }
}
