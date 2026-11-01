.class public Lcc/shinichi/library/view/ImagePreviewAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# static fields
.field private static final case:Ljava/lang/String; = "ImagePreview"


# instance fields
.field private do:Landroid/app/Activity;

.field private for:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;",
            ">;"
        }
    .end annotation
.end field

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/tl0;",
            ">;"
        }
    .end annotation
.end field

.field private new:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcc/shinichi/library/view/photoview/PhotoView;",
            ">;"
        }
    .end annotation
.end field

.field private try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Landroid/support/v4/tl0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->try:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->if:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    return-void
.end method

.method private break(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcc/shinichi/library/tool/image/if;->throw(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p2, v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumScaleType(I)V

    .line 3
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcc/shinichi/library/tool/image/if;->else(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    .line 4
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcc/shinichi/library/tool/image/if;->case(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    .line 5
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcc/shinichi/library/tool/image/if;->case(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcc/shinichi/library/tool/image/if;->import(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 7
    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcc/shinichi/library/tool/image/if;->while(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2, v2}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumScaleType(I)V

    .line 9
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->final()F

    move-result v0

    invoke-virtual {p2, v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    .line 10
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->class()F

    move-result v0

    invoke-virtual {p2, v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    .line 11
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcc/shinichi/library/tool/image/if;->catch(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x3

    .line 12
    invoke-virtual {p2, v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumScaleType(I)V

    .line 13
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcc/shinichi/library/tool/image/if;->break(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    .line 14
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcc/shinichi/library/tool/image/if;->this(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    .line 15
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcc/shinichi/library/tool/image/if;->this(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p2, v2}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumScaleType(I)V

    .line 17
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->final()F

    move-result p1

    invoke-virtual {p2, p1}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    .line 18
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->class()F

    move-result p1

    invoke-virtual {p2, p1}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    .line 19
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->const()F

    move-result p1

    invoke-virtual {p2, p1}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    :goto_0
    return-void
.end method

.method private case(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->package(Landroid/app/Activity;)Lcom/bumptech/glide/goto;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/goto;->else()Lcom/bumptech/glide/else;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p1

    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 7
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v1

    invoke-virtual {v1}, Lcc/shinichi/library/do;->case()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p1

    new-instance v0, Lcc/shinichi/library/view/ImagePreviewAdapter$this;

    invoke-direct {v0, p0, p3, p2, p4}, Lcc/shinichi/library/view/ImagePreviewAdapter$this;-><init>(Lcc/shinichi/library/view/ImagePreviewAdapter;Landroid/widget/ImageView;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ProgressBar;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/else;->o0(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/else;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public static synthetic do(Lcc/shinichi/library/view/ImagePreviewAdapter;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    return-object p0
.end method

.method private else(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcc/shinichi/library/view/ImagePreviewAdapter;->break(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;)V

    const/4 p3, -0x1

    .line 4
    invoke-virtual {p2, p3}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setOrientation(I)V

    .line 5
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Landroid/support/v4/wl0;->native(Landroid/net/Uri;)Landroid/support/v4/wl0;

    move-result-object p3

    .line 6
    invoke-static {p1}, Lcc/shinichi/library/tool/image/if;->const(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p3}, Landroid/support/v4/wl0;->while()Landroid/support/v4/wl0;

    .line 8
    :cond_0
    invoke-virtual {p2, p3}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Landroid/support/v4/wl0;)V

    .line 9
    new-instance p1, Lcc/shinichi/library/view/ImagePreviewAdapter$goto;

    invoke-direct {p1, p0, p4}, Lcc/shinichi/library/view/ImagePreviewAdapter$goto;-><init>(Lcc/shinichi/library/view/ImagePreviewAdapter;Landroid/widget/ProgressBar;)V

    invoke-virtual {p2, p1}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setOnImageEventListener(Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;)V

    return-void
.end method

.method public static synthetic for(Lcc/shinichi/library/view/ImagePreviewAdapter;Ljava/io/File;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcc/shinichi/library/view/ImagePreviewAdapter;->this(Ljava/io/File;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method public static synthetic if(Lcc/shinichi/library/view/ImagePreviewAdapter;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/bumptech/glide/load/engine/catch;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcc/shinichi/library/view/ImagePreviewAdapter;->try(Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/bumptech/glide/load/engine/catch;)V

    return-void
.end method

.method private this(Ljava/io/File;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcc/shinichi/library/tool/image/if;->final(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcc/shinichi/library/view/ImagePreviewAdapter;->case(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcc/shinichi/library/view/ImagePreviewAdapter;->else(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    :goto_0
    return-void
.end method

.method private try(Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/bumptech/glide/load/engine/catch;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p1, p2}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setZoomEnabled(Z)V

    .line 5
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p3

    invoke-virtual {p3}, Lcc/shinichi/library/do;->case()I

    move-result p3

    invoke-static {p3}, Landroid/support/v4/wl0;->final(I)Landroid/support/v4/wl0;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Landroid/support/v4/wl0;)V

    const-string p1, "\u52a0\u8f7d\u5931\u8d25"

    if-eqz p4, :cond_0

    const-string p3, ":\n"

    .line 6
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/bumptech/glide/load/engine/catch;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/16 p4, 0xc8

    if-le p3, p4, :cond_1

    const/16 p3, 0xc7

    .line 8
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_1
    invoke-static {}, Lcc/shinichi/library/tool/ui/do;->for()Lcc/shinichi/library/tool/ui/do;

    move-result-object p2

    iget-object p3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcc/shinichi/library/tool/ui/do;->if(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->if:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/tl0;

    invoke-virtual {p3}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    iget-object p3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->if:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/tl0;

    invoke-virtual {p3}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 3
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    iget-object p3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->if:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/tl0;

    invoke-virtual {p3}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {p1}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->T()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->if:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/tl0;

    invoke-virtual {p3}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    iget-object p3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->if:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/tl0;

    invoke-virtual {p3}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcc/shinichi/library/view/photoview/PhotoView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 7
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    iget-object p3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->if:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/tl0;

    invoke-virtual {p2}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcc/shinichi/library/view/photoview/PhotoView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {p1}, Lcc/shinichi/library/glide/do;->if(Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public goto(Landroid/support/v4/tl0;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    .line 5
    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/shinichi/library/view/photoview/PhotoView;

    .line 6
    iget-object v2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcc/shinichi/library/glide/do;->for(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcc/shinichi/library/tool/image/if;->final(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->package(Landroid/app/Activity;)Lcom/bumptech/glide/goto;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/bumptech/glide/goto;->else()Lcom/bumptech/glide/else;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/else;->s0(Ljava/io/File;)Lcom/bumptech/glide/else;

    move-result-object p1

    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/engine/case;->new:Lcom/bumptech/glide/load/engine/case;

    .line 14
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    .line 15
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v2

    invoke-virtual {v2}, Lcc/shinichi/library/do;->case()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    goto/16 :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {p1}, Landroid/support/v4/tl0;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcc/shinichi/library/glide/do;->for(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lcc/shinichi/library/tool/image/if;->do(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Lcc/shinichi/library/tool/image/if;->new(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/support/v4/wl0;->if(Landroid/graphics/Bitmap;)Landroid/support/v4/wl0;

    move-result-object v1

    .line 26
    invoke-static {p1}, Lcc/shinichi/library/tool/image/if;->class(Ljava/lang/String;)[I

    move-result-object v4

    aget v4, v4, v5

    .line 27
    invoke-static {p1}, Lcc/shinichi/library/tool/image/if;->class(Ljava/lang/String;)[I

    move-result-object p1

    aget p1, p1, v3

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcc/shinichi/library/tool/image/if;->const(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 29
    invoke-virtual {v1}, Landroid/support/v4/wl0;->while()Landroid/support/v4/wl0;

    .line 30
    :cond_2
    invoke-virtual {v1, v4, p1}, Landroid/support/v4/wl0;->new(II)Landroid/support/v4/wl0;

    .line 31
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/support/v4/wl0;->public(Ljava/lang/String;)Landroid/support/v4/wl0;

    move-result-object v4

    .line 33
    invoke-static {p1}, Lcc/shinichi/library/tool/image/if;->class(Ljava/lang/String;)[I

    move-result-object v6

    aget v5, v6, v5

    .line 34
    invoke-static {p1}, Lcc/shinichi/library/tool/image/if;->class(Ljava/lang/String;)[I

    move-result-object v6

    aget v3, v6, v3

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcc/shinichi/library/tool/image/if;->const(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    invoke-virtual {v4}, Landroid/support/v4/wl0;->while()Landroid/support/v4/wl0;

    .line 37
    :cond_4
    invoke-virtual {v4, v5, v3}, Landroid/support/v4/wl0;->new(II)Landroid/support/v4/wl0;

    .line 38
    invoke-direct {p0, p1, v0}, Lcc/shinichi/library/view/ImagePreviewAdapter;->break(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;)V

    const/4 p1, -0x1

    .line 39
    invoke-virtual {v0, p1}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setOrientation(I)V

    .line 40
    invoke-virtual {v0, v4, v1}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->c0(Landroid/support/v4/wl0;Landroid/support/v4/wl0;)V

    goto :goto_0

    .line 41
    :cond_5
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 42
    :cond_6
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    .line 43
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget v1, Lcc/shinichi/library/R$layout;->sh_item_photoview:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcc/shinichi/library/R$id;->progress_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    .line 4
    sget v1, Lcc/shinichi/library/R$id;->fingerDragHelper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcc/shinichi/library/view/helper/FingerDragHelper;

    .line 5
    sget v2, Lcc/shinichi/library/R$id;->photo_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    .line 6
    sget v2, Lcc/shinichi/library/R$id;->gif_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcc/shinichi/library/view/photoview/PhotoView;

    .line 7
    iget-object v2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->if:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/tl0;

    .line 8
    invoke-virtual {v2}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Landroid/support/v4/tl0;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v2}, Landroid/support/v4/tl0;->getHeaderMap()Ljava/util/Map;

    move-result-object v2

    const/4 v8, 0x1

    .line 11
    invoke-virtual {v5, v8}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumScaleType(I)V

    const/4 v8, 0x2

    .line 12
    invoke-virtual {v5, v8}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomStyle(I)V

    .line 13
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v8

    invoke-virtual {v8}, Lcc/shinichi/library/do;->while()I

    move-result v8

    invoke-virtual {v5, v8}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomDuration(I)V

    .line 14
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v8

    invoke-virtual {v8}, Lcc/shinichi/library/do;->final()F

    move-result v8

    invoke-virtual {v5, v8}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    .line 15
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v8

    invoke-virtual {v8}, Lcc/shinichi/library/do;->class()F

    move-result v8

    invoke-virtual {v5, v8}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    .line 16
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v8

    invoke-virtual {v8}, Lcc/shinichi/library/do;->const()F

    move-result v8

    invoke-virtual {v5, v8}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    .line 17
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v8

    invoke-virtual {v8}, Lcc/shinichi/library/do;->while()I

    move-result v8

    invoke-virtual {v6, v8}, Lcc/shinichi/library/view/photoview/PhotoView;->setZoomTransitionDuration(I)V

    .line 18
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v8

    invoke-virtual {v8}, Lcc/shinichi/library/do;->final()F

    move-result v8

    invoke-virtual {v6, v8}, Lcc/shinichi/library/view/photoview/PhotoView;->setMinimumScale(F)V

    .line 19
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v8

    invoke-virtual {v8}, Lcc/shinichi/library/do;->class()F

    move-result v8

    invoke-virtual {v6, v8}, Lcc/shinichi/library/view/photoview/PhotoView;->setMaximumScale(F)V

    .line 20
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Lcc/shinichi/library/view/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 21
    new-instance v8, Lcc/shinichi/library/view/ImagePreviewAdapter$do;

    invoke-direct {v8, p0, p2}, Lcc/shinichi/library/view/ImagePreviewAdapter$do;-><init>(Lcc/shinichi/library/view/ImagePreviewAdapter;I)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance v8, Lcc/shinichi/library/view/ImagePreviewAdapter$if;

    invoke-direct {v8, p0, p2}, Lcc/shinichi/library/view/ImagePreviewAdapter$if;-><init>(Lcc/shinichi/library/view/ImagePreviewAdapter;I)V

    invoke-virtual {v6, v8}, Lcc/shinichi/library/view/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance v8, Lcc/shinichi/library/view/ImagePreviewAdapter$for;

    invoke-direct {v8, p0, p2}, Lcc/shinichi/library/view/ImagePreviewAdapter$for;-><init>(Lcc/shinichi/library/view/ImagePreviewAdapter;I)V

    invoke-virtual {v5, v8}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 24
    new-instance v8, Lcc/shinichi/library/view/ImagePreviewAdapter$new;

    invoke-direct {v8, p0, p2}, Lcc/shinichi/library/view/ImagePreviewAdapter$new;-><init>(Lcc/shinichi/library/view/ImagePreviewAdapter;I)V

    invoke-virtual {v6, v8}, Lcc/shinichi/library/view/photoview/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 25
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p2

    invoke-virtual {p2}, Lcc/shinichi/library/do;->native()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 26
    new-instance p2, Lcc/shinichi/library/view/ImagePreviewAdapter$try;

    invoke-direct {p2, p0, v6, v5}, Lcc/shinichi/library/view/ImagePreviewAdapter$try;-><init>(Lcc/shinichi/library/view/ImagePreviewAdapter;Lcc/shinichi/library/view/photoview/PhotoView;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;)V

    invoke-virtual {v1, p2}, Lcc/shinichi/library/view/helper/FingerDragHelper;->setOnAlphaChangeListener(Lcc/shinichi/library/view/helper/FingerDragHelper$onAlphaChangedListener;)V

    .line 27
    :cond_1
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    invoke-virtual {p2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    invoke-virtual {p2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p2

    invoke-virtual {p2}, Lcc/shinichi/library/do;->catch()Lcc/shinichi/library/do$if;

    move-result-object p2

    .line 32
    sget-object v1, Lcc/shinichi/library/do$if;->Default:Lcc/shinichi/library/do$if;

    if-ne p2, v1, :cond_2

    .line 33
    iput-object v4, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->try:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_2
    sget-object v1, Lcc/shinichi/library/do$if;->AlwaysOrigin:Lcc/shinichi/library/do$if;

    if-ne p2, v1, :cond_3

    .line 35
    iput-object v3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->try:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_3
    sget-object v1, Lcc/shinichi/library/do$if;->AlwaysThumb:Lcc/shinichi/library/do$if;

    if-ne p2, v1, :cond_4

    .line 37
    iput-object v4, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->try:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_4
    sget-object v1, Lcc/shinichi/library/do$if;->NetworkAuto:Lcc/shinichi/library/do$if;

    if-ne p2, v1, :cond_6

    .line 39
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {p2}, Landroid/support/v4/h31;->if(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 40
    iput-object v3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->try:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_5
    iput-object v4, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->try:Ljava/lang/String;

    .line 42
    :cond_6
    :goto_0
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->try:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->try:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v7, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 44
    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcc/shinichi/library/glide/do;->for(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcc/shinichi/library/tool/image/if;->final(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-direct {p0, p2, v5, v6, v7}, Lcc/shinichi/library/view/ImagePreviewAdapter;->case(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 49
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-direct {p0, p2, v5, v6, v7}, Lcc/shinichi/library/view/ImagePreviewAdapter;->else(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 51
    :cond_8
    new-instance v1, Lcc/shinichi/library/view/do$if;

    invoke-direct {v1}, Lcc/shinichi/library/view/do$if;-><init>()V

    if-eqz v2, :cond_9

    .line 52
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v8, v4}, Lcc/shinichi/library/view/do$if;->if(Ljava/lang/String;Ljava/lang/String;)Lcc/shinichi/library/view/do$if;

    goto :goto_1

    .line 54
    :cond_9
    new-instance v4, Lcom/bumptech/glide/load/model/if;

    invoke-virtual {v1}, Lcc/shinichi/library/view/do$if;->for()Lcc/shinichi/library/view/do;

    move-result-object v1

    invoke-direct {v4, p2, v1}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 55
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->do:Landroid/app/Activity;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->package(Landroid/app/Activity;)Lcom/bumptech/glide/goto;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/goto;->catch()Lcom/bumptech/glide/else;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/bumptech/glide/else;->u0(Ljava/lang/Object;)Lcom/bumptech/glide/else;

    move-result-object p2

    new-instance v1, Lcc/shinichi/library/view/ImagePreviewAdapter$else;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcc/shinichi/library/view/ImagePreviewAdapter$else;-><init>(Lcc/shinichi/library/view/ImagePreviewAdapter;Lcom/bumptech/glide/load/model/if;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Lcc/shinichi/library/view/photoview/PhotoView;Landroid/widget/ProgressBar;)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/else;->W(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/else;

    move-result-object p2

    new-instance v1, Lcc/shinichi/library/view/ImagePreviewAdapter$case;

    invoke-direct {v1, p0}, Lcc/shinichi/library/view/ImagePreviewAdapter$case;-><init>(Lcc/shinichi/library/view/ImagePreviewAdapter;)V

    .line 56
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/else;->j0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 57
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

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

.method public new()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v2}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->T()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8
    iput-object v1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->for:Ljava/util/HashMap;

    .line 9
    :cond_2
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    .line 12
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/shinichi/library/view/photoview/PhotoView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/shinichi/library/view/photoview/PhotoView;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 16
    iput-object v1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter;->new:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
