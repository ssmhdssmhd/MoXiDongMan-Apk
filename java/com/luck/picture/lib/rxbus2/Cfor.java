package com.luck.picture.lib.rxbus2;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.luck.picture.lib.rxbus2.for, reason: invalid class name */
/* loaded from: classes.dex */
public @interface Cfor {
    int code() default -1;

    Cnew threadMode() default Cnew.CURRENT_THREAD;
}
