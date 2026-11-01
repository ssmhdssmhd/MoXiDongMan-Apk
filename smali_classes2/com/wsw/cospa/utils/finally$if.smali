.class Lcom/wsw/cospa/utils/finally$if;
.super Landroid/support/v4/ht;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/finally;->const(Landroid/content/Context;Ljava/lang/String;Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ht<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;


# direct methods
.method public constructor <init>(IILcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/wsw/cospa/utils/finally$if;->new:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/ht;-><init>(II)V

    return-void
.end method


# virtual methods
.method public do(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
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
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/finally$if;->new:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 4
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/utils/finally$if;->new:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/finally$if;->new:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object p1

    new-instance v1, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v3}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v0, p1, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/utils/finally$if;->new:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/ht;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

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
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/finally$if;->do(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
