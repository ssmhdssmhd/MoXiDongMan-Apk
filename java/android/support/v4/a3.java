package android.support.v4;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes.dex */
public class a3 extends ht<Bitmap> {

    /* renamed from: case, reason: not valid java name */
    private final RemoteViews f17case;

    /* renamed from: else, reason: not valid java name */
    private final Context f18else;

    /* renamed from: goto, reason: not valid java name */
    private final int f19goto;

    /* renamed from: new, reason: not valid java name */
    private final int[] f20new;

    /* renamed from: try, reason: not valid java name */
    private final ComponentName f21try;

    public a3(Context context, int i, int i2, int i3, RemoteViews remoteViews, int... iArr) {
        super(i, i2);
        if (iArr.length == 0) {
            throw new IllegalArgumentException("WidgetIds must have length > 0");
        }
        this.f18else = (Context) cf1.m901try(context, "Context can not be null!");
        this.f17case = (RemoteViews) cf1.m901try(remoteViews, "RemoteViews object can not be null!");
        this.f20new = (int[]) cf1.m901try(iArr, "WidgetIds can not be null!");
        this.f19goto = i3;
        this.f21try = null;
    }

    /* renamed from: for, reason: not valid java name */
    private void m25for() {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.f18else);
        ComponentName componentName = this.f21try;
        if (componentName != null) {
            appWidgetManager.updateAppWidget(componentName, this.f17case);
        } else {
            appWidgetManager.updateAppWidget(this.f20new, this.f17case);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m26if(@Nullable Bitmap bitmap) {
        this.f17case.setImageViewBitmap(this.f19goto, bitmap);
        m25for();
    }

    @Override // com.bumptech.glide.request.target.Target
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
        m26if(bitmap);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
        m26if(null);
    }

    public a3(Context context, int i, RemoteViews remoteViews, int... iArr) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i, remoteViews, iArr);
    }

    public a3(Context context, int i, int i2, int i3, RemoteViews remoteViews, ComponentName componentName) {
        super(i, i2);
        this.f18else = (Context) cf1.m901try(context, "Context can not be null!");
        this.f17case = (RemoteViews) cf1.m901try(remoteViews, "RemoteViews object can not be null!");
        this.f21try = (ComponentName) cf1.m901try(componentName, "ComponentName can not be null!");
        this.f19goto = i3;
        this.f20new = null;
    }

    public a3(Context context, int i, RemoteViews remoteViews, ComponentName componentName) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i, remoteViews, componentName);
    }
}
