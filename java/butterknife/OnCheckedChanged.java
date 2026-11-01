package butterknife;

import androidx.annotation.IdRes;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import butterknife.internal.Cfor;
import butterknife.internal.Cif;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Cif(method = {@Cfor(name = "onCheckedChanged", parameters = {"android.widget.CompoundButton", TypedValues.Custom.S_BOOLEAN})}, setter = "setOnCheckedChangeListener", targetType = "android.widget.CompoundButton", type = "android.widget.CompoundButton.OnCheckedChangeListener")
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface OnCheckedChanged {
    @IdRes
    int[] value() default {-1};
}
