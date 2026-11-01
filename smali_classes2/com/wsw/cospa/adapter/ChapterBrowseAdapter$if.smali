.class public Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;
.super Landroid/support/v4/ht;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ht<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private case:Lcom/wsw/cospa/bean/ComicContentImgBean;

.field public final synthetic else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

.field public new:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Lcom/wsw/cospa/bean/ComicContentImgBean;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-direct {p0}, Landroid/support/v4/ht;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->case:Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->new:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->new(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic for()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->new:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    .line 2
    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->new(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 9
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 13
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 15
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->for()V

    return-void
.end method

.method private synthetic new(Landroid/graphics/Bitmap;)V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->new:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    .line 2
    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->try(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;I)I

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->case(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;I)I

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->else(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->new(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->case:Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-static {v0, p1, v3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->goto(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Landroid/graphics/Bitmap;Lcom/wsw/cospa/bean/ComicContentImgBean;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->this(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->break(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 12
    :cond_1
    invoke-static {}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->catch()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " orientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v4}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->class(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/v4/j10;->goto()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->new(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)I

    move-result v0

    const/4 v3, 0x2

    const/16 v4, 0xf

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-ne v0, v2, :cond_3

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->class(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 17
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v3, v3, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/2addr v3, v9

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 18
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 19
    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v3, v3, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/2addr v3, v9

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 22
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 23
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 24
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 27
    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v2, v2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 29
    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v2, v2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object p1

    new-instance v3, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v3, v0, v4, v1}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v2, p1, v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 30
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v7}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    goto/16 :goto_0

    .line 31
    :cond_2
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 32
    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v2, v2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object v3

    new-instance v4, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v4, v0, v5, v1}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v2, v3, v4}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v7}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 34
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 35
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 36
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 40
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 41
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/2addr v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 43
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->class(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->transient(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 45
    iget-object v9, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v9, v9, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    if-eqz v0, :cond_4

    .line 46
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 47
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 48
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v1

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v1, v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 54
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 55
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 56
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 61
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->class(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->finally(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 62
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->class(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->extends(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 63
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->class(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->extends(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    .line 64
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;)V

    goto/16 :goto_0

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 66
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v9

    .line 67
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    iget-object v10, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v10}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v10

    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iget-object v10, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v9, v9, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/2addr v9, v10

    .line 73
    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 74
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 75
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    iget-object v4, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v4, v4, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 80
    iget-object v4, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v4, v4, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object p1

    new-instance v5, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v5, v0, v6, v1}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v4, p1, v5}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 81
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v7}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 82
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomStyle(I)V

    .line 83
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 84
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 85
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 86
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {p1, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setPanEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
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

    .line 2
    new-instance p1, Landroid/support/v4/ej;

    invoke-direct {p1, p0}, Landroid/support/v4/ej;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;)V

    invoke-static {p1}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/ht;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->new:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

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

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;->try(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

.method public try(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
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
    new-instance p2, Landroid/support/v4/fj;

    invoke-direct {p2, p0, p1}, Landroid/support/v4/fj;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$if;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    return-void
.end method
