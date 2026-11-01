.class public Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public case:Landroid/view/View;

.field public do:Landroid/widget/ImageView;

.field public else:Landroid/widget/LinearLayout;

.field public for:Landroid/widget/TextView;

.field public final synthetic goto:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

.field public if:Landroid/widget/TextView;

.field public new:Landroid/widget/TextView;

.field public try:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->goto:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->case:Landroid/view/View;

    .line 4
    sget p1, Lcom/luck/picture/lib/R$id;->iv_picture:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->do:Landroid/widget/ImageView;

    .line 5
    sget p1, Lcom/luck/picture/lib/R$id;->check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->if:Landroid/widget/TextView;

    .line 6
    sget p1, Lcom/luck/picture/lib/R$id;->ll_check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->else:Landroid/widget/LinearLayout;

    .line 7
    sget p1, Lcom/luck/picture/lib/R$id;->tv_duration:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->for:Landroid/widget/TextView;

    .line 8
    sget p1, Lcom/luck/picture/lib/R$id;->tv_isGif:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->new:Landroid/widget/TextView;

    .line 9
    sget p1, Lcom/luck/picture/lib/R$id;->tv_long_chart:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;->try:Landroid/widget/TextView;

    return-void
.end method
