.class Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;
.super Landroid/support/v4/fz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/fz1<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lcom/luck/picture/lib/photoview/PhotoView;

.field public final synthetic else:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

.field public final synthetic new:Z

.field public final synthetic try:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;IIZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/photoview/PhotoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;->else:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    iput-boolean p4, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;->new:Z

    iput-object p5, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;->try:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    iput-object p6, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;->case:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/fz1;-><init>(II)V

    return-void
.end method


# virtual methods
.method public do(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
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
    iget-boolean p2, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;->new:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;->else:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;->try:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    invoke-static {p2, p1, v0}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->do(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;->case:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;->do(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
