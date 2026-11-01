package android.support.v4;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Cwhile;
import org.mozilla.javascript.ES6Iterator;

@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0002\u0018\u00002\u00020\u0001B\n\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002R\u0013\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroid/support/v4/co1;", "", "Landroid/support/v4/b2;", ES6Iterator.VALUE_PROPERTY, "()Landroid/support/v4/b2;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@t42(allowedTargets = {c2.ANNOTATION_CLASS})
/* loaded from: classes.dex */
public @interface co1 {
    b2 value() default b2.RUNTIME;
}
