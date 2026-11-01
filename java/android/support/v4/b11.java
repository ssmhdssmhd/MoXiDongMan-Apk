package android.support.v4;

import java.io.Serializable;
import org.apache.commons.lang3.mutable.Mutable;

/* loaded from: classes3.dex */
public class b11 implements Mutable<Boolean>, Serializable, Comparable<b11> {
    private static final long serialVersionUID = -4830728138360036487L;
    private boolean value;

    public b11() {
    }

    public boolean booleanValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof b11) && this.value == ((b11) obj).booleanValue();
    }

    public int hashCode() {
        return (this.value ? Boolean.TRUE : Boolean.FALSE).hashCode();
    }

    public boolean isFalse() {
        return !this.value;
    }

    public boolean isTrue() {
        return this.value;
    }

    public void setFalse() {
        this.value = false;
    }

    public void setTrue() {
        this.value = true;
    }

    public Boolean toBoolean() {
        return Boolean.valueOf(booleanValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public b11(boolean z) {
        this.value = z;
    }

    @Override // java.lang.Comparable
    public int compareTo(b11 b11Var) {
        boolean z = b11Var.value;
        boolean z2 = this.value;
        if (z2 == z) {
            return 0;
        }
        return z2 ? 1 : -1;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.commons.lang3.mutable.Mutable
    public Boolean getValue() {
        return Boolean.valueOf(this.value);
    }

    public void setValue(boolean z) {
        this.value = z;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Boolean bool) {
        this.value = bool.booleanValue();
    }

    public b11(Boolean bool) {
        this.value = bool.booleanValue();
    }
}
