.class Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public do:Landroid/widget/ImageView;

.field public for:Landroid/widget/TextView;

.field public if:Landroid/widget/TextView;

.field public new:Landroid/widget/TextView;

.field public final synthetic try:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->try:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget p1, Lcom/luck/picture/lib/R$id;->first_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->do:Landroid/widget/ImageView;

    .line 4
    sget p1, Lcom/luck/picture/lib/R$id;->tv_folder_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->if:Landroid/widget/TextView;

    .line 5
    sget p1, Lcom/luck/picture/lib/R$id;->image_num:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->for:Landroid/widget/TextView;

    .line 6
    sget p1, Lcom/luck/picture/lib/R$id;->tv_sign:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->new:Landroid/widget/TextView;

    return-void
.end method
