package android.support.v4;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.CONSTRUCTOR, ElementType.METHOD, ElementType.TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface cs1 {
    public static final String E5 = "none";
    public static final String F5 = "custom";
    public static final String G5 = "io.reactivex:computation";
    public static final String H5 = "io.reactivex:io";
    public static final String I5 = "io.reactivex:new-thread";
    public static final String J5 = "io.reactivex:trampoline";
    public static final String K5 = "io.reactivex:single";

    String value();
}
