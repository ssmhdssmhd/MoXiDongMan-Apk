package butterknife;

import androidx.annotation.IdRes;
import butterknife.internal.Cif;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Cif(callbacks = Callback.class, remover = "removeOnPageChangeListener", setter = "addOnPageChangeListener", targetType = "androidx.viewpager.widget.ViewPager", type = "androidx.viewpager.widget.ViewPager.OnPageChangeListener")
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface OnPageChange {

    public enum Callback {
        PAGE_SELECTED,
        PAGE_SCROLLED,
        PAGE_SCROLL_STATE_CHANGED
    }

    Callback callback() default Callback.PAGE_SELECTED;

    @IdRes
    int[] value() default {-1};
}
