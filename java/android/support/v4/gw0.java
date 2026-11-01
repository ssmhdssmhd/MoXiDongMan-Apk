package android.support.v4;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.LOCAL_VARIABLE})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes.dex */
public @interface gw0 {

    /* renamed from: android.support.v4.gw0$do, reason: invalid class name */
    public enum Cdo {
        JAVA_ITERATOR,
        FAST_ENUMERATION
    }

    Cdo value();
}
