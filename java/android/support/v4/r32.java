package android.support.v4;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.Cdo;
import javax.annotation.meta.Cfor;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Cdo(applicableTo = CharSequence.class)
/* loaded from: classes.dex */
public @interface r32 {
    String value();

    Cfor when() default Cfor.ALWAYS;
}
