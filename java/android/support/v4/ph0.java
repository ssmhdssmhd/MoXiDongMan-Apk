package android.support.v4;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.Cgoto;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.request.RequestListener;
import com.wsw.cospa.Cfor;
import com.wsw.cospa.Cif;
import java.io.File;
import java.net.URL;

/* loaded from: classes2.dex */
public class ph0 extends Cgoto {
    public ph0(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context) {
        super(glide, lifecycle, requestManagerTreeNode, context);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public <ResourceType> Cfor<ResourceType> mo6026for(@NonNull Class<ResourceType> cls) {
        return new Cfor<>(this.f9440do, this, cls, this.f9444if);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public Cfor<Bitmap> mo6031new() {
        return (Cfor) super.mo6031new();
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Cfor<Drawable> mo6039try() {
        return (Cfor) super.mo6039try();
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Cfor<File> mo6021case() {
        return (Cfor) super.mo6021case();
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public Cfor<GifDrawable> mo6025else() {
        return (Cfor) super.mo6025else();
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public Cfor<File> mo6020break(@Nullable Object obj) {
        return (Cfor) super.mo6020break(obj);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Cfor<File> mo6022catch() {
        return (Cfor) super.mo6022catch();
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public Cfor<Drawable> load(@Nullable Bitmap bitmap) {
        return (Cfor) super.load(bitmap);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Cfor<Drawable> load(@Nullable Drawable drawable) {
        return (Cfor) super.load(drawable);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    /* renamed from: instanceof, reason: not valid java name and merged with bridge method [inline-methods] */
    public ph0 mo6024do(RequestListener<Object> requestListener) {
        return (ph0) super.mo6024do(requestListener);
    }

    @Override // com.bumptech.glide.Cgoto, com.bumptech.glide.ModelTypes
    @NonNull
    @CheckResult
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Cfor<Drawable> load(@Nullable Uri uri) {
        return (Cfor) super.load(uri);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public Cfor<Drawable> load(@Nullable File file) {
        return (Cfor) super.load(file);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public Cfor<Drawable> load(@Nullable @DrawableRes @RawRes Integer num) {
        return (Cfor) super.load(num);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public Cfor<Drawable> load(@Nullable Object obj) {
        return (Cfor) super.load(obj);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public Cfor<Drawable> load(@Nullable String str) {
        return (Cfor) super.load(str);
    }

    @Override // com.bumptech.glide.Cgoto
    @CheckResult
    @Deprecated
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public Cfor<Drawable> load(@Nullable URL url) {
        return (Cfor) super.load(url);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    @CheckResult
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public Cfor<Drawable> load(@Nullable byte[] bArr) {
        return (Cfor) super.load(bArr);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public synchronized ph0 mo6023continue(@NonNull dn1 dn1Var) {
        return (ph0) super.mo6023continue(dn1Var);
    }

    @Override // com.bumptech.glide.Cgoto
    @NonNull
    /* renamed from: synchronized, reason: not valid java name and merged with bridge method [inline-methods] */
    public synchronized ph0 mo6027if(@NonNull dn1 dn1Var) {
        return (ph0) super.mo6027if(dn1Var);
    }

    @Override // com.bumptech.glide.Cgoto
    /* renamed from: volatile, reason: not valid java name */
    public void mo6040volatile(@NonNull dn1 dn1Var) {
        if (dn1Var instanceof Cif) {
            super.mo6040volatile(dn1Var);
        } else {
            super.mo6040volatile(new Cif().mo11166do(dn1Var));
        }
    }
}
