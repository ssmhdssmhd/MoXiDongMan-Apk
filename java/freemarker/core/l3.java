package freemarker.core;

import android.support.v4.az1;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;
import java.io.Serializable;

/* loaded from: classes.dex */
abstract class l3 implements TemplateSequenceModel, Serializable {
    private final int begin;

    public l3(int i) {
        this.begin = i;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public final TemplateModel get(int i) throws k52 {
        if (i < 0 || i >= size()) {
            throw new vl2("Range item index ", Integer.valueOf(i), " is out of bounds.");
        }
        long step = this.begin + (getStep() * i);
        return step <= 2147483647L ? new az1((int) step) : new az1(step);
    }

    public final int getBegining() {
        return this.begin;
    }

    abstract int getStep();

    public abstract boolean isAffectedByStringSlicingBug();

    public abstract boolean isRightAdaptive();

    public abstract boolean isRightUnbounded();
}
