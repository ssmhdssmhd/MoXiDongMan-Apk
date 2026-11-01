package android.support.v4;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.PACKAGE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface gm1 {

    /* renamed from: android.support.v4.gm1$do, reason: invalid class name */
    public enum Cdo {
        NATIVE_ONLY,
        FULL
    }

    Cdo value();
}
