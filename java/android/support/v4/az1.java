package android.support.v4;

import freemarker.template.TemplateNumberModel;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class az1 implements TemplateNumberModel, Serializable {
    private final Number value;

    public az1(Number number) {
        this.value = number;
    }

    @Override // freemarker.template.TemplateNumberModel
    public Number getAsNumber() {
        return this.value;
    }

    public String toString() {
        return this.value.toString();
    }

    public az1(byte b) {
        this.value = Byte.valueOf(b);
    }

    public az1(short s) {
        this.value = Short.valueOf(s);
    }

    public az1(int i) {
        this.value = Integer.valueOf(i);
    }

    public az1(long j) {
        this.value = Long.valueOf(j);
    }

    public az1(float f) {
        this.value = Float.valueOf(f);
    }

    public az1(double d) {
        this.value = Double.valueOf(d);
    }
}
