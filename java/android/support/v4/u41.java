package android.support.v4;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes.dex */
public class u41 extends ht<Bitmap> {

    /* renamed from: case, reason: not valid java name */
    private final int f6750case;

    /* renamed from: else, reason: not valid java name */
    private final String f6751else;

    /* renamed from: goto, reason: not valid java name */
    private final Notification f6752goto;

    /* renamed from: new, reason: not valid java name */
    private final RemoteViews f6753new;

    /* renamed from: this, reason: not valid java name */
    private final int f6754this;

    /* renamed from: try, reason: not valid java name */
    private final Context f6755try;

    public u41(Context context, int i, RemoteViews remoteViews, Notification notification, int i2) {
        this(context, i, remoteViews, notification, i2, null);
    }

    /* renamed from: for, reason: not valid java name */
    private void m8234for() {
        ((NotificationManager) cf1.m900new((NotificationManager) this.f6755try.getSystemService("notification"))).notify(this.f6751else, this.f6750case, this.f6752goto);
    }

    /* renamed from: if, reason: not valid java name */
    private void m8235if(@Nullable Bitmap bitmap) {
        this.f6753new.setImageViewBitmap(this.f6754this, bitmap);
        m8234for();
    }

    @Override // com.bumptech.glide.request.target.Target
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
        m8235if(bitmap);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
        m8235if(null);
    }

    public u41(Context context, int i, RemoteViews remoteViews, Notification notification, int i2, String str) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i, remoteViews, notification, i2, str);
    }

    public u41(Context context, int i, int i2, int i3, RemoteViews remoteViews, Notification notification, int i4, String str) {
        super(i, i2);
        this.f6755try = (Context) cf1.m901try(context, "Context must not be null!");
        this.f6752goto = (Notification) cf1.m901try(notification, "Notification object can not be null!");
        this.f6753new = (RemoteViews) cf1.m901try(remoteViews, "RemoteViews object can not be null!");
        this.f6754this = i3;
        this.f6750case = i4;
        this.f6751else = str;
    }
}
