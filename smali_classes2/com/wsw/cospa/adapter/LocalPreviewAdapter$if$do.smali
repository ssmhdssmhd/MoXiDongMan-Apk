.class Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->do(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/graphics/Bitmap;

.field public final synthetic if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->do:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->do:Landroid/graphics/Bitmap;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v1, v3}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->if(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;I)I

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->for(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;I)I

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->new(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1, v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->case(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->else(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1, v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->goto(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)I

    move-result v1

    const/4 v4, 0x2

    const/16 v5, 0xf

    const/16 v6, 0xe

    const/16 v7, 0xd

    const/4 v8, 0x0

    if-ne v1, v3, :cond_3

    .line 13
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 14
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->this(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Lcom/wsw/cospa/activity/LocalPreviewActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x5

    if-ne v1, v4, :cond_2

    .line 15
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 16
    invoke-static {}, Landroid/support/v4/j10;->else()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v4, v4, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/2addr v4, v10

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 17
    invoke-static {}, Landroid/support/v4/j10;->else()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 18
    iget-object v4, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v4, v4, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v4, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v4, v4, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v4, v4, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    invoke-static {}, Landroid/support/v4/j10;->else()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v10, v10, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/2addr v10, v11

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 21
    invoke-static {}, Landroid/support/v4/j10;->else()I

    move-result v10

    iput v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 22
    iput-boolean v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 23
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 24
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-static {}, Landroid/support/v4/j10;->else()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 28
    iget-object v3, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v3, v3, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v3, v3, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {v0}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object v0

    new-instance v4, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v4, v1, v5, v2}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v3, v0, v4}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v9}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    goto/16 :goto_0

    .line 30
    :cond_2
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 31
    iget-object v3, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v3, v3, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v3, v3, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {v0}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object v4

    new-instance v5, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v5, v1, v6, v2}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v3, v4, v5}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 32
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1, v9}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 33
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 34
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v2

    .line 35
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    iget-object v2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v2, v2, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v2

    .line 40
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 42
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 43
    :cond_3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->this(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Lcom/wsw/cospa/activity/LocalPreviewActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->native(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 44
    iget-object v9, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v9, v9, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v9, v9, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setOrientation(I)V

    if-eqz v1, :cond_4

    .line 45
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 46
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v2, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v2, v2, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->this(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Lcom/wsw/cospa/activity/LocalPreviewActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throw(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 47
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v2, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v2, v2, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->this(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Lcom/wsw/cospa/activity/LocalPreviewActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->super(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 48
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v2, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v2, v2, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->this(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Lcom/wsw/cospa/activity/LocalPreviewActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->super(Landroid/content/Context;Landroid/graphics/Bitmap;)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    .line 49
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {v0}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;)V

    .line 50
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 51
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v2

    .line 52
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    iget-object v2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v2, v2, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v2}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->do(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    iget-object v2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v2, v2, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    iget-object v2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v2, v2, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v2}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->do(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v2

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int v2, v2, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 58
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->do(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 59
    iput-boolean v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 60
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 64
    :cond_4
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v1, v9

    .line 65
    iget-object v9, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v9, v9, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v9, v9, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-static {v0}, Lcom/wsw/cospa/widget/subscaleview/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/widget/subscaleview/ImageSource;

    move-result-object v10

    new-instance v11, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v11, v1, v12, v2}, Lcom/wsw/cospa/widget/subscaleview/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v9, v10, v11}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/wsw/cospa/widget/subscaleview/ImageSource;Lcom/wsw/cospa/widget/subscaleview/ImageViewState;)V

    .line 66
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 67
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1, v4}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomStyle(I)V

    .line 68
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMinScale(F)V

    .line 69
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 70
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 71
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;->setPanEnabled(Z)V

    .line 72
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 73
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v2

    .line 74
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    iget-object v4, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v4, v4, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v4}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->do(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    iget-object v4, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v4, v4, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v2, v2, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v2, v0

    .line 80
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 81
    iput-boolean v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 82
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;->if:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
