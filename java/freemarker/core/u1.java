package freemarker.core;

import android.support.v4.az1;
import android.support.v4.k52;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import java.math.BigInteger;

/* loaded from: classes.dex */
final class u1 extends q3 implements TemplateCollectionModel {

    /* renamed from: freemarker.core.u1$do, reason: invalid class name */
    public class Cdo implements TemplateModelIterator {

        /* renamed from: do, reason: not valid java name */
        public boolean f24235do;

        /* renamed from: for, reason: not valid java name */
        public int f24236for;

        /* renamed from: if, reason: not valid java name */
        public int f24237if = 1;

        /* renamed from: new, reason: not valid java name */
        public long f24238new;

        /* renamed from: try, reason: not valid java name */
        public BigInteger f24239try;

        public Cdo() {
            this.f24236for = u1.this.getBegining();
        }

        @Override // freemarker.template.TemplateModelIterator
        public boolean hasNext() throws k52 {
            return true;
        }

        @Override // freemarker.template.TemplateModelIterator
        public TemplateModel next() throws k52 {
            if (this.f24235do) {
                int i = this.f24237if;
                if (i == 1) {
                    int i2 = this.f24236for;
                    if (i2 < Integer.MAX_VALUE) {
                        this.f24236for = i2 + 1;
                    } else {
                        this.f24237if = 2;
                        this.f24238new = i2 + 1;
                    }
                } else if (i != 2) {
                    this.f24239try = this.f24239try.add(BigInteger.ONE);
                } else {
                    long j = this.f24238new;
                    if (j < Long.MAX_VALUE) {
                        this.f24238new = j + 1;
                    } else {
                        this.f24237if = 3;
                        BigInteger bigIntegerValueOf = BigInteger.valueOf(j);
                        this.f24239try = bigIntegerValueOf;
                        this.f24239try = bigIntegerValueOf.add(BigInteger.ONE);
                    }
                }
            }
            this.f24235do = true;
            int i3 = this.f24237if;
            return i3 == 1 ? new az1(this.f24236for) : i3 == 2 ? new az1(this.f24238new) : new az1(this.f24239try);
        }
    }

    public u1(int i) {
        super(i);
    }

    @Override // freemarker.template.TemplateCollectionModel
    public TemplateModelIterator iterator() throws k52 {
        return new Cdo();
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() throws k52 {
        return Integer.MAX_VALUE;
    }
}
