package android.support.v4;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;

/* loaded from: classes.dex */
public final class c30 {

    /* renamed from: do, reason: not valid java name */
    private static volatile boolean f586do = true;

    private c30() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Drawable m725do(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return m726for(context, context, i, theme);
    }

    /* renamed from: for, reason: not valid java name */
    private static Drawable m726for(Context context, Context context2, @DrawableRes int i, @Nullable Resources.Theme theme) {
        try {
            if (f586do) {
                return m729try(context2, i, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e;
            }
            return ContextCompat.getDrawable(context2, i);
        } catch (NoClassDefFoundError unused2) {
            f586do = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return m728new(context2, i, theme);
    }

    /* renamed from: if, reason: not valid java name */
    public static Drawable m727if(Context context, Context context2, @DrawableRes int i) {
        return m726for(context, context2, i, null);
    }

    /* renamed from: new, reason: not valid java name */
    private static Drawable m728new(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        return ResourcesCompat.getDrawable(context.getResources(), i, theme);
    }

    /* renamed from: try, reason: not valid java name */
    private static Drawable m729try(Context context, @DrawableRes int i, @Nullable Resources.Theme theme) {
        if (theme != null) {
            context = new ContextThemeWrapper(context, theme);
        }
        return AppCompatResources.getDrawable(context, i);
    }
}
