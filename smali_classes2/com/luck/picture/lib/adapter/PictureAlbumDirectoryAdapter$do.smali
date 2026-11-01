.class Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$do;
.super Landroid/support/v4/j9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->case(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic catch:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;

.field public final synthetic class:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;Landroid/widget/ImageView;Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$do;->class:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    iput-object p3, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$do;->catch:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;

    invoke-direct {p0, p2}, Landroid/support/v4/j9;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic catch(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$do;->const(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public const(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$do;->class:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    .line 2
    invoke-static {v0}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->do(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    const/high16 v0, 0x41000000    # 8.0f

    .line 3
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$do;->catch:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;

    iget-object v0, v0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->do:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
