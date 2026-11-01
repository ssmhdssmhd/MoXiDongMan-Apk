.class public Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;,
        Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$HorizontalViewHolder;,
        Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$VerticalViewHolder;,
        Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;,
        Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$BrowseViewHolder;,
        Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;,
        Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final return:Ljava/lang/String; = "ChapterBrowseAdapter"

.field private static static:Lcom/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Cache<",
            "Ljava/lang/String;",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private break:Z

.field private case:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private catch:Z

.field private class:Z

.field private const:F

.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private else:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

.field private final:Z

.field private for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

.field private goto:I

.field private if:Landroid/content/Context;

.field private import:I

.field private native:I

.field private new:Landroid/view/LayoutInflater;

.field private public:I

.field private super:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private this:Z

.field public throw:I

.field private try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;"
        }
    .end annotation
.end field

.field private while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/cache/if;->abstract()Lcom/google/common/cache/if;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/if;->package(J)Lcom/google/common/cache/if;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/common/cache/if;->a()Lcom/google/common/cache/if;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/cache/if;->do()Lcom/google/common/cache/Cache;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->static:Lcom/google/common/cache/Cache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->goto:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->super:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->throw:I

    .line 6
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    .line 8
    iput p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->goto:I

    .line 9
    iput-object p3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->case:Lcom/wsw/cospa/bean/ComicSourceBean;

    const-string p2, "layout_inflater"

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->new:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic a(Landroid/graphics/Bitmap;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 9

    if-eqz p1, :cond_8

    .line 1
    :try_start_0
    iget-object v0, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    .line 6
    iget-boolean v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->this:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->goto:I

    if-ne v0, v2, :cond_0

    .line 8
    invoke-direct {p0, p1, p3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->j(Landroid/graphics/Bitmap;Lcom/wsw/cospa/bean/ComicContentImgBean;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 9
    :cond_0
    iget-boolean p3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->catch:Z

    if-eqz p3, :cond_1

    .line 10
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->k(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    const-string p3, "ImageRequestListener"

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " orientation : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " width : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Height : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/v4/j10;->goto()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget p3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->goto:I

    const/4 v0, 0x5

    const/4 v3, 0x2

    const/16 v4, 0xf

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/4 v7, 0x0

    if-ne p3, v2, :cond_3

    .line 13
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 14
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne p3, v3, :cond_2

    .line 15
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 16
    invoke-static {}, Landroid/support/v4/j10;->else()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v3, v3, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/2addr v3, v8

    iput v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 17
    invoke-static {}, Landroid/support/v4/j10;->else()I

    move-result v3

    iput v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 18
    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    invoke-static {}, Landroid/support/v4/j10;->else()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v3, v3, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/2addr v3, v8

    iput v3, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 21
    invoke-static {}, Landroid/support/v4/j10;->else()I

    move-result v3

    iput v3, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 22
    iput-boolean v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 23
    invoke-virtual {p3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 24
    invoke-virtual {p3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    invoke-virtual {p3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    iget-object v2, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-static {}, Landroid/support/v4/j10;->else()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p3, v2

    .line 28
    iget-object v2, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object p1

    new-instance v3, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v3, p3, v4, v1}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v2, p1, v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 29
    iget-object p1, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    goto/16 :goto_1

    .line 30
    :cond_2
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p3, v2

    .line 31
    iget-object v2, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object v3

    new-instance v4, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v4, p3, v5, v1}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v2, v3, v4}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 32
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 33
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 34
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    .line 35
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    .line 40
    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/2addr v0, p1

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 42
    iget-object p1, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 43
    :cond_3
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne p3, v3, :cond_4

    .line 44
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 45
    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v3

    iput v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 46
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v3

    iput v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 47
    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 49
    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v3

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int v3, v3, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/2addr v3, v8

    iput v3, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 51
    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v3

    iput v3, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 52
    iput-boolean v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 53
    invoke-virtual {p3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54
    invoke-virtual {p3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    invoke-virtual {p3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    iget-object v2, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p3, v2

    .line 58
    iget-object v2, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object p1

    new-instance v3, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v3, p3, v4, v1}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v2, p1, v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 59
    iget-object p1, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    goto/16 :goto_1

    .line 60
    :cond_4
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p3, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->transient(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p3

    .line 61
    iget-object v0, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    if-eqz p3, :cond_5

    .line 62
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 63
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    .line 64
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v0

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 70
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v0

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 71
    iput-boolean v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 72
    invoke-virtual {p3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    invoke-virtual {p3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    invoke-virtual {p3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    iget-object v0, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 77
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->finally(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 78
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->extends(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 79
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->extends(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    .line 80
    iget-object p2, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;)V

    goto/16 :goto_1

    .line 81
    :cond_5
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 82
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    .line 83
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    iget-object v8, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    invoke-static {v8}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v8

    iput v8, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    iget-object v8, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v0, v0, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/2addr v0, v8

    .line 89
    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 90
    iput-boolean v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 91
    invoke-virtual {p3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    invoke-virtual {p3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    invoke-virtual {p3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    iget-object v0, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p3, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->synchronized(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p3

    .line 96
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->implements(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz p3, :cond_6

    .line 97
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 98
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->final()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 99
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->class()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 100
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->volatile(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 101
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 102
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->continue(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 103
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->abstract(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 104
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->abstract(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    goto :goto_0

    .line 105
    :cond_7
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 106
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 107
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 108
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    .line 109
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3, v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomStyle(I)V

    .line 110
    :goto_0
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 111
    iget-object p3, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p3, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setPanEnabled(Z)V

    .line 112
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 113
    iget-object p2, p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, p3, v2, v1}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {p2, p1, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    return-void
.end method

.method public static abstract(Landroid/content/Context;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->continue(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p0, p0, p1

    return p0
.end method

.method private b()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    int-to-double v0, v0

    iget v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic break(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->k(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    iget v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    mul-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic case(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    return p1
.end method

.method public static synthetic catch()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->return:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic class(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Lcom/wsw/cospa/activity/ChapterBrowseActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    return-object p0
.end method

.method public static synthetic const(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->case:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object p0
.end method

.method public static continue(Landroid/content/Context;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jd1;->new(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method private d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p2, v2, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Landroid/graphics/Bitmap;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->a(Landroid/graphics/Bitmap;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->this:Z

    return p0
.end method

.method public static extends(Landroid/content/Context;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->finally(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p0, p0, p1

    return p0
.end method

.method public static synthetic final(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->native(Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static finally(Landroid/content/Context;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jd1;->new(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method public static synthetic for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic goto(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Landroid/graphics/Bitmap;Lcom/wsw/cospa/bean/ComicContentImgBean;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->j(Landroid/graphics/Bitmap;Lcom/wsw/cospa/bean/ComicContentImgBean;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private i([II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1
    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->instanceof(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static implements(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jd1;->new(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    sget-object p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->return:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSmallImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/if1;->do(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private instanceof(I)Z
    .locals 2

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v1, v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0xb

    add-int/2addr v0, p1

    const/16 p1, 0x53fc

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private j(Landroid/graphics/Bitmap;Lcom/wsw/cospa/bean/ComicContentImgBean;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getState()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->native:I

    .line 4
    iget p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    iget v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    invoke-static {p1, v1, v1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    iget v3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    invoke-static {p1, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    iget-boolean v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->break:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private k(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    iget v2, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-int/lit8 v1, v1, 0x14

    new-array v1, v1, [I

    .line 2
    iget v3, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->public:I

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    move v11, v3

    :goto_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v11, v2, :cond_3

    const/4 v5, 0x0

    .line 3
    iget v9, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    iget v7, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->native:I

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    move v8, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 4
    iget v3, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    invoke-direct {v0, v1, v3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->i([II)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v5, 0x0

    .line 5
    iget v9, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    const/4 v7, 0x0

    const/16 v10, 0xa

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    move v8, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 6
    iget v3, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    invoke-direct {v0, v1, v3, v12, v12}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->w([IIZZ)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x9

    :cond_2
    add-int/2addr v11, v13

    goto :goto_1

    .line 7
    :cond_3
    :goto_2
    iget v2, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->public:I

    iget v3, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    mul-int/lit8 v4, v3, 0x2

    div-int/lit8 v4, v4, 0x3

    add-int v14, v2, v4

    add-int/2addr v2, v3

    sub-int/2addr v2, v13

    :goto_3
    if-le v2, v14, :cond_6

    const/4 v5, 0x0

    .line 8
    iget v9, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    iget v7, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->native:I

    const/4 v10, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    move v8, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 9
    iget v3, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    invoke-direct {v0, v1, v3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->i([II)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v5, 0x0

    .line 10
    iget v9, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x9

    const/16 v10, 0xa

    move-object/from16 v3, p1

    move-object v4, v1

    move v6, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 11
    iget v3, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->w([IIZZ)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, -0x9

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    :goto_4
    sub-int/2addr v2, v11

    add-int/lit8 v14, v2, 0x1

    .line 12
    iget v3, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->native:I

    iget v4, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    div-int/lit8 v4, v4, 0x3

    add-int v15, v3, v4

    move v10, v3

    :goto_5
    if-ge v10, v15, :cond_9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    move v7, v10

    move v8, v11

    move/from16 v16, v10

    move v10, v14

    .line 13
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 14
    invoke-direct {v0, v1, v14}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->i([II)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/16 v9, 0xa

    move-object/from16 v3, p1

    move-object v4, v1

    move/from16 v7, v16

    move v8, v11

    move v10, v14

    .line 15
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 16
    invoke-direct {v0, v1, v14, v13, v12}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->w([IIZZ)Z

    move-result v3

    if-nez v3, :cond_7

    move/from16 v10, v16

    goto :goto_7

    :cond_7
    move/from16 v10, v16

    add-int/lit8 v10, v10, 0x9

    goto :goto_6

    :cond_8
    move/from16 v10, v16

    :goto_6
    add-int/2addr v10, v13

    goto :goto_5

    .line 17
    :cond_9
    :goto_7
    iget v3, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->native:I

    iget v4, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    mul-int/lit8 v5, v4, 0x2

    div-int/lit8 v5, v5, 0x3

    add-int v12, v3, v5

    add-int/2addr v3, v4

    sub-int/2addr v3, v13

    move v15, v3

    :goto_8
    if-le v15, v12, :cond_c

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object v4, v1

    move v7, v15

    move v8, v11

    move/from16 v17, v10

    move v10, v14

    .line 18
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 19
    invoke-direct {v0, v1, v14}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->i([II)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v5, 0x0

    const/16 v6, 0xa

    add-int/lit8 v7, v15, -0x9

    const/16 v9, 0xa

    move-object/from16 v3, p1

    move-object v4, v1

    move v8, v11

    move v10, v14

    .line 20
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 21
    invoke-direct {v0, v1, v14, v13, v13}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->w([IIZZ)Z

    move-result v3

    if-nez v3, :cond_a

    move/from16 v3, v17

    goto :goto_9

    :cond_a
    add-int/lit8 v15, v15, -0x9

    :cond_b
    add-int/lit8 v15, v15, -0x1

    move/from16 v10, v17

    goto :goto_8

    :cond_c
    move v3, v10

    :goto_9
    sub-int/2addr v15, v3

    .line 22
    iput v15, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    .line 23
    iput v2, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    .line 24
    iput v3, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->native:I

    .line 25
    iput v11, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->public:I

    return-object p1
.end method

.method public static n(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->static:Lcom/google/common/cache/Cache;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->static:Lcom/google/common/cache/Cache;

    invoke-interface {v0, p0}, Lcom/google/common/cache/Cache;->invalidate(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private native(Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-direct {v0, p5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1, p2, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setImgPage(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->case:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContentDecoder()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getBytes(Ljava/lang/String;Z)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/script/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic new(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->goto:I

    return p0
.end method

.method private protected(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private strictfp(ZZI)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x3

    const/4 v1, 0x2

    if-ge p3, v1, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    return v0

    :cond_2
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ge p3, v2, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_4
    const/16 v2, 0x8

    if-ge p3, v2, :cond_6

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x3

    :goto_1
    return v0
.end method

.method public static synchronized(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v0, p0, p1

    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-lez v2, :cond_0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    sget-object p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->return:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWideImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/if1;->do(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static synthetic this(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->catch:Z

    return p0
.end method

.method public static throws(Ljava/lang/String;)Lokhttp3/Headers;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->static:Lcom/google/common/cache/Cache;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/google/common/cache/Cache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Headers;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static transient(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v1, p1, v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jd1;->for(Landroid/content/Context;)F

    move-result p0

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr p0, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    sget-object p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->return:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLongImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/if1;->do(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static synthetic try(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    return p1
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static volatile(Landroid/content/Context;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jd1;->if(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    return p0
.end method

.method private w([IIZZ)Z
    .locals 8

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    return v1

    :cond_0
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_4

    const/16 v4, 0x3c

    if-le v3, v4, :cond_1

    return v1

    .line 1
    :cond_1
    rem-int/lit8 v4, v2, 0x14

    aget v5, v0, v4

    sub-int/2addr v3, v5

    .line 2
    aput v1, v0, v4

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0xa

    if-ge v5, v6, :cond_3

    if-eqz p3, :cond_2

    mul-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v5

    goto :goto_2

    :cond_2
    mul-int v6, v5, p2

    add-int/2addr v6, v2

    .line 3
    :goto_2
    aget v7, v0, v4

    aget v6, p1, v6

    invoke-direct {p0, v6}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->instanceof(I)Z

    move-result v6

    invoke-direct {p0, v6, p4, v5}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->strictfp(ZZI)I

    move-result v6

    add-int/2addr v7, v6

    aput v7, v0, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4
    :cond_3
    aget v4, v0, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public declared-synchronized default(I)Lcom/wsw/cospa/bean/ComicContentImgBean;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicContentImgBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;I)V
    .locals 10
    .param p1    # Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 2
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIsDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->static(Lcom/wsw/cospa/bean/ComicContentImgBean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->static(Lcom/wsw/cospa/bean/ComicContentImgBean;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 8
    sget-object v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->return:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder: url 111: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->goto:I

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setReadMode(I)V

    .line 10
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->goto:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    .line 14
    :try_start_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v6, -0x2

    .line 15
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v7

    .line 17
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    iget-object v7, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x4

    .line 19
    iget-object v8, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {v8}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->l0()I

    move-result v8

    neg-int v8, v8

    if-lt v8, v7, :cond_2

    add-int/lit8 v9, v8, 0x1

    .line 20
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 21
    :cond_2
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    :goto_1
    iget-object v9, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 24
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v6

    .line 26
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    iget-object v6, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    if-lt v8, v7, :cond_3

    add-int/2addr v8, v5

    .line 28
    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 29
    :cond_3
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    :goto_2
    iget-object v6, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 32
    :cond_4
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :goto_3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->super:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v6, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-direct {v1, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const v6, 0x7f090211

    if-eqz v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object v0

    iget-object v2, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/goto;->goto(Landroid/view/View;)V

    .line 36
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    .line 38
    :cond_5
    iget-object p2, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 39
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    .line 40
    :cond_6
    iget-object p2, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object p2, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p2, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 42
    :goto_4
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIsDownload()Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "null"

    if-eqz p2, :cond_b

    .line 43
    :try_start_2
    new-instance p2, Ljava/io/File;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 45
    invoke-virtual {p0, p1, v3, p2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->interface(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/io/File;)V

    goto/16 :goto_9

    .line 46
    :cond_7
    invoke-direct {p0, v4}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->protected(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 47
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->case:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContentDecoder()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 48
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v6, 0x1

    .line 49
    :goto_6
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    .line 50
    invoke-virtual/range {v1 .. v6}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->return(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_9

    .line 51
    :cond_a
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, p2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->interface(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/io/File;)V

    goto :goto_9

    .line 52
    :cond_b
    invoke-direct {p0, v4}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->protected(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 53
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->case:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContentDecoder()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v6, 0x1

    .line 55
    :goto_8
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    .line 56
    invoke-virtual/range {v1 .. v6}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->return(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_9

    .line 57
    :cond_e
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, p2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->interface(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    return-void
.end method

.method public f(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->e(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;I)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->goto:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const p2, 0x7f0c0056

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->new:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0057

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->new:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    :goto_0
    new-instance p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public declared-synchronized getItemCount()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemId(I)J
    .locals 2

    monitor-enter p0

    int-to-long v0, p1

    .line 1
    monitor-exit p0

    return-wide v0
.end method

.method public h(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;)V
    .locals 0
    .param p1    # Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public if(Landroid/graphics/Bitmap;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getState()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->native:I

    .line 4
    iget p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    iget v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    invoke-static {p1, v1, v1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while:I

    iget v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->import:I

    invoke-static {p1, p2, v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public declared-synchronized import(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->while(ILjava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public interface(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcc/shinichi/library/tool/image/if;->if(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 2
    new-instance v0, Landroid/support/v4/dj;

    invoke-direct {v0, p0, p3, p1, p2}, Landroid/support/v4/dj;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Landroid/graphics/Bitmap;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    invoke-static {v0}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->super:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x1a

    .line 6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v6, :cond_0

    .line 7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    :cond_0
    invoke-virtual {v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->recycle()V

    .line 9
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->super:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    iput-object v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->super:Ljava/util/ArrayList;

    .line 13
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public declared-synchronized m(ZLjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {p1, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->final:Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->e(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->f(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->g(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->h(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;)V

    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    return-void
.end method

.method public declared-synchronized package(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3
    monitor-exit p0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public private(IIZ)I
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v0

    if-eq v0, p2, :cond_1

    if-eqz p3, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public public(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    .line 4
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v5, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->class:Z

    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->this:Z

    return-void
.end method

.method public return(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance p4, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/lang/String;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Z)V

    invoke-static {p4}, Landroid/support/v4/wi0;->else(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->break:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public setTapGestureListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->else:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

    return-void
.end method

.method public static(Lcom/wsw/cospa/bean/ComicContentImgBean;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->if:Landroid/content/Context;

    invoke-static {v0, p1}, Lcc/shinichi/library/glide/do;->for(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "[\""

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "\"]"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "bnpic.comic123.net"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "res.333dm.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "www.6mh6.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "http"

    .line 10
    invoke-static {p1, v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method public declared-synchronized super(ILcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public switch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    return-object v0
.end method

.method public t(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->const:F

    return-void
.end method

.method public declared-synchronized throw(Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->catch:Z

    return-void
.end method

.method public while(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_0
    return-void
.end method
