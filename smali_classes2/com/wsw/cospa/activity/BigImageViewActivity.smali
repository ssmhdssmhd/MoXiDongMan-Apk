.class public Lcom/wsw/cospa/activity/BigImageViewActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private goto:Lcom/wsw/cospa/bean/ComicContentImgBean;

.field public imageView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020f
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field private this:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/BigImageViewActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->this:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/BigImageViewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->this:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static public(Landroid/content/Context;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/BigImageViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IMAGE_URL"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0022

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->this:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public this()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IMAGE_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicContentImgBean;

    iput-object v0, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->goto:Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->imageView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->imageView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->imageView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->imageView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->goto:Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    const v1, 0x7f0800aa

    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/if;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/if;

    .line 10
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->public(Lcom/bumptech/glide/load/if;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 11
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 12
    new-instance v1, Lcom/wsw/cospa/utils/strictfp$if;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/strictfp$if;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->goto:Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v2}, Lcom/wsw/cospa/utils/strictfp$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/strictfp$if;

    .line 17
    invoke-static {p0}, Landroid/support/v4/jh0;->class(Landroidx/fragment/app/FragmentActivity;)Landroid/support/v4/ph0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/ph0;->d()Lcom/wsw/cospa/for;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/model/if;

    iget-object v4, p0, Lcom/wsw/cospa/activity/BigImageViewActivity;->goto:Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/wsw/cospa/utils/strictfp$if;->for()Lcom/wsw/cospa/utils/strictfp;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/for;->l1(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/activity/BigImageViewActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/BigImageViewActivity$do;-><init>(Lcom/wsw/cospa/activity/BigImageViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/else;->d0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
