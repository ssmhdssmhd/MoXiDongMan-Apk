package freemarker.core;

/* loaded from: classes.dex */
abstract class q3 extends l3 {
    public q3(int i) {
        super(i);
    }

    @Override // freemarker.core.l3
    final int getStep() {
        return 1;
    }

    @Override // freemarker.core.l3
    public final boolean isAffectedByStringSlicingBug() {
        return false;
    }

    @Override // freemarker.core.l3
    public final boolean isRightAdaptive() {
        return true;
    }

    @Override // freemarker.core.l3
    public final boolean isRightUnbounded() {
        return true;
    }
}
