package com.bumptech.glide.annotation.compiler;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
/* renamed from: com.bumptech.glide.annotation.compiler.for, reason: invalid class name */
/* loaded from: classes.dex */
@interface Cfor {
    String[] extensions() default {};

    String[] modules() default {};
}
