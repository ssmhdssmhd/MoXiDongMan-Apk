package android.support.v4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.util.Ccase;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public class u01 {

    /* renamed from: do, reason: not valid java name */
    private Class<?> f6720do;

    /* renamed from: for, reason: not valid java name */
    private Class<?> f6721for;

    /* renamed from: if, reason: not valid java name */
    private Class<?> f6722if;

    public u01() {
    }

    /* renamed from: do, reason: not valid java name */
    public void m8180do(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        m8181if(cls, cls2, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        u01 u01Var = (u01) obj;
        return this.f6720do.equals(u01Var.f6720do) && this.f6722if.equals(u01Var.f6722if) && Ccase.m12051new(this.f6721for, u01Var.f6721for);
    }

    public int hashCode() {
        int iHashCode = ((this.f6720do.hashCode() * 31) + this.f6722if.hashCode()) * 31;
        Class<?> cls = this.f6721for;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    /* renamed from: if, reason: not valid java name */
    public void m8181if(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.f6720do = cls;
        this.f6722if = cls2;
        this.f6721for = cls3;
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f6720do + ", second=" + this.f6722if + MessageFormatter.DELIM_STOP;
    }

    public u01(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        m8180do(cls, cls2);
    }

    public u01(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        m8181if(cls, cls2, cls3);
    }
}
