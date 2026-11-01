.class public Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;
    }
.end annotation


# instance fields
.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private for:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;

.field private if:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->do:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->if:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->for:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;

    return-void
.end method

.method public static synthetic do(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->new(Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V

    return-void
.end method

.method public static synthetic for(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->if:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->for:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;

    return-object p0
.end method

.method private new(Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    .line 2
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 3
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setPanEnabled(Z)V

    const/16 v0, 0x64

    .line 4
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDuration(I)V

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 6
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    .line 7
    invoke-static {p1}, Landroid/support/v4/vl0;->for(Landroid/graphics/Bitmap;)Landroid/support/v4/vl0;

    move-result-object p1

    new-instance v0, Landroid/support/v4/yl0;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/support/v4/yl0;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {p2, p1, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->b0(Landroid/support/v4/vl0;Landroid/support/v4/yl0;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->do:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->picture_image_preview:I

    const/4 v9, 0x0

    .line 2
    invoke-virtual {v0, v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 3
    sget v0, Lcom/luck/picture/lib/R$id;->preview_image:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/luck/picture/lib/photoview/PhotoView;

    .line 4
    sget v0, Lcom/luck/picture/lib/R$id;->longImg:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    .line 5
    sget v0, Lcom/luck/picture/lib/R$id;->iv_play:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageView;

    .line 6
    iget-object v0, v7, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->do:Ljava/util/List;

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 9
    :goto_0
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->catch()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->break()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->if()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->break()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->catch()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->break()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 14
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->do()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v14, v2

    .line 15
    invoke-static {v1}, Landroid/support/v4/rd1;->else(Ljava/lang/String;)Z

    move-result v1

    .line 16
    invoke-static {v0}, Landroid/support/v4/rd1;->break(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    const/16 v2, 0x8

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 17
    :goto_3
    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    const/4 v3, 0x0

    .line 18
    :cond_5
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->break()Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    const/16 v1, 0x1e0

    const/16 v2, 0x320

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 22
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->if:Lcom/bumptech/glide/load/engine/case;

    .line 23
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 24
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/bumptech/glide/goto;->else()Lcom/bumptech/glide/else;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v14}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v11}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    goto :goto_4

    .line 29
    :cond_6
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->do:Lcom/bumptech/glide/load/engine/case;

    .line 30
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 31
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/bumptech/glide/goto;->new()Lcom/bumptech/glide/else;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v14}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object v15

    new-instance v6, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;

    const/16 v2, 0x1e0

    const/16 v3, 0x320

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v5, v12

    move-object v9, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$do;-><init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;IIZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/photoview/PhotoView;)V

    .line 35
    invoke-virtual {v15, v9}, Lcom/bumptech/glide/else;->j0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 36
    :goto_4
    new-instance v0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$if;

    invoke-direct {v0, v7}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$if;-><init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)V

    invoke-virtual {v11, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V

    .line 37
    new-instance v0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$for;

    invoke-direct {v0, v7}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$for;-><init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$new;

    invoke-direct {v0, v7, v14}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$new;-><init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const/4 v0, 0x0

    .line 39
    invoke-virtual {v8, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v10
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
