package butterknife;

import androidx.annotation.IdRes;
import butterknife.internal.Cfor;
import butterknife.internal.Cif;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Cif(method = {@Cfor(name = "doClick", parameters = {"android.view.View"})}, setter = "setOnClickListener", targetType = "android.view.View", type = "butterknife.internal.DebouncingOnClickListener")
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface OnClick {
    @IdRes
    int[] value() default {-1};
}
