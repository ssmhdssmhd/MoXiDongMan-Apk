.class public Landroid/support/v4/mh0;
.super Lcom/youth/banner/loader/ImageLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/loader/ImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createImageView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/mh0;->createImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method public createImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2

    .line 2
    new-instance v0, Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-direct {v0, p1}, Lcom/wsw/cospa/widget/view/RoundImageView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    invoke-static {p1, v1}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/RoundImageView;->setBorderRadius(I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/RoundImageView;->setType(I)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 6
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public bridge synthetic displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/mh0;->displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/widget/ImageView;)V

    return-void
.end method

.method public displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 2

    .line 2
    check-cast p2, Lcom/wsw/cospa/bean/BannerInfo$BannerBean;

    .line 3
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    const v1, 0x7f0801bb

    .line 5
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 7
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 8
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 9
    invoke-static {p1}, Landroid/support/v4/jh0;->this(Landroid/content/Context;)Landroid/support/v4/ph0;

    move-result-object p1

    iget-object p2, p2, Lcom/wsw/cospa/bean/BannerInfo$BannerBean;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v4/ph0;->n(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method
