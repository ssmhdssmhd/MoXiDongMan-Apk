.class public Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/PictureExternalPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleFragmentAdapter"
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/PictureExternalPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->do:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

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
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->do:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->finally(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->do:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->private(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->picture_image_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/luck/picture/lib/R$id;->preview_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/photoview/PhotoView;

    .line 3
    sget v3, Lcom/luck/picture/lib/R$id;->longImg:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    .line 4
    iget-object v3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->do:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v3}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->finally(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz p2, :cond_7

    .line 5
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->catch()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->break()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->if()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->break()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->catch()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->break()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->do()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v11, v4

    .line 11
    invoke-static {v11}, Landroid/support/v4/rd1;->goto(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    iget-object v4, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->do:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {v4}, Lcom/luck/picture/lib/PictureBaseActivity;->static()V

    .line 13
    :cond_3
    invoke-static {v3}, Landroid/support/v4/rd1;->else(Ljava/lang/String;)Z

    move-result v3

    .line 14
    invoke-static {p2}, Landroid/support/v4/rd1;->break(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v7

    const/16 v4, 0x8

    if-eqz v7, :cond_4

    if-nez v3, :cond_4

    const/16 v5, 0x8

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 15
    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v7, :cond_5

    if-nez v3, :cond_5

    const/4 v4, 0x0

    .line 16
    :cond_5
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_6

    .line 17
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->break()Z

    move-result p2

    if-nez p2, :cond_6

    .line 18
    new-instance p2, Landroid/support/v4/dn1;

    invoke-direct {p2}, Landroid/support/v4/dn1;-><init>()V

    const/16 v3, 0x1e0

    const/16 v4, 0x320

    .line 19
    invoke-virtual {p2, v3, v4}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    move-result-object p2

    check-cast p2, Landroid/support/v4/dn1;

    sget-object v3, Lcom/bumptech/glide/try;->HIGH:Lcom/bumptech/glide/try;

    .line 20
    invoke-virtual {p2, v3}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object p2

    check-cast p2, Landroid/support/v4/dn1;

    sget-object v3, Lcom/bumptech/glide/load/engine/case;->if:Lcom/bumptech/glide/load/engine/case;

    .line 21
    invoke-virtual {p2, v3}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p2

    check-cast p2, Landroid/support/v4/dn1;

    .line 22
    iget-object v3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->do:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->volatile(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/goto;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/bumptech/glide/goto;->else()Lcom/bumptech/glide/else;

    move-result-object v3

    .line 24
    invoke-virtual {v3, p2}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p2

    .line 25
    invoke-virtual {p2, v11}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p2

    new-instance v3, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$do;

    invoke-direct {v3, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$do;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;)V

    .line 26
    invoke-virtual {p2, v3}, Lcom/bumptech/glide/else;->o0(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/else;

    move-result-object p2

    .line 27
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    goto :goto_3

    .line 28
    :cond_6
    new-instance p2, Landroid/support/v4/dn1;

    invoke-direct {p2}, Landroid/support/v4/dn1;-><init>()V

    sget-object v3, Lcom/bumptech/glide/load/engine/case;->do:Lcom/bumptech/glide/load/engine/case;

    .line 29
    invoke-virtual {p2, v3}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p2

    check-cast p2, Landroid/support/v4/dn1;

    .line 30
    iget-object v3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->do:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->volatile(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/goto;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/bumptech/glide/goto;->new()Lcom/bumptech/glide/else;

    move-result-object v3

    .line 32
    invoke-virtual {v3, v11}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object v3

    .line 33
    invoke-virtual {v3, p2}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p2

    new-instance v12, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$if;

    const/16 v5, 0x1e0

    const/16 v6, 0x320

    move-object v3, v12

    move-object v4, p0

    move-object v8, v10

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$if;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;IIZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/photoview/PhotoView;)V

    .line 34
    invoke-virtual {p2, v12}, Lcom/bumptech/glide/else;->j0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 35
    :goto_3
    new-instance p2, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$for;

    invoke-direct {p2, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$for;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;)V

    invoke-virtual {v1, p2}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V

    .line 36
    new-instance p2, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$new;

    invoke-direct {p2, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$new;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;)V

    invoke-virtual {v10, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    new-instance p2, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$try;

    invoke-direct {p2, p0, v11}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$try;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 38
    :cond_7
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
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
