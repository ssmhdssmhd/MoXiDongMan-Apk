.class Lcom/wsw/cospa/activity/BigImageViewActivity$do;
.super Landroid/support/v4/fz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/BigImageViewActivity;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/fz1<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/wsw/cospa/activity/BigImageViewActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/BigImageViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/BigImageViewActivity$do;->new:Lcom/wsw/cospa/activity/BigImageViewActivity;

    invoke-direct {p0}, Landroid/support/v4/fz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/wsw/cospa/activity/BigImageViewActivity$do;->new:Lcom/wsw/cospa/activity/BigImageViewActivity;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/wsw/cospa/activity/BigImageViewActivity;->native(Lcom/wsw/cospa/activity/BigImageViewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/wsw/cospa/activity/BigImageViewActivity$do;->new:Lcom/wsw/cospa/activity/BigImageViewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/BigImageViewActivity;->import(Lcom/wsw/cospa/activity/BigImageViewActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/BigImageViewActivity$do;->new:Lcom/wsw/cospa/activity/BigImageViewActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/BigImageViewActivity;->imageView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->uri(Landroid/net/Uri;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object p1

    new-instance v1, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v3}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v0, p1, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/activity/BigImageViewActivity$do;->do(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
