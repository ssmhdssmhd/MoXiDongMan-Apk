package butterknife;

import androidx.annotation.IdRes;
import butterknife.internal.Cfor;
import butterknife.internal.Cif;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Cif(method = {@Cfor(name = "onItemClick", parameters = {"android.widget.AdapterView<?>", "android.view.View", "int", "long"})}, setter = "setOnItemClickListener", targetType = "android.widget.AdapterView<?>", type = "android.widget.AdapterView.OnItemClickListener")
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface OnItemClick {
    @IdRes
    int[] value() default {-1};
}
