.class public final synthetic Landroid/support/v4/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

.field public final synthetic for:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

.field public final synthetic if:Landroid/graphics/Bitmap;

.field public final synthetic new:Lcom/wsw/cospa/bean/ComicContentImgBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Landroid/graphics/Bitmap;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/dj;->do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    iput-object p2, p0, Landroid/support/v4/dj;->if:Landroid/graphics/Bitmap;

    iput-object p3, p0, Landroid/support/v4/dj;->for:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iput-object p4, p0, Landroid/support/v4/dj;->new:Lcom/wsw/cospa/bean/ComicContentImgBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/dj;->do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    iget-object v1, p0, Landroid/support/v4/dj;->if:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/support/v4/dj;->for:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v3, p0, Landroid/support/v4/dj;->new:Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-static {v0, v1, v2, v3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->do(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Landroid/graphics/Bitmap;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    return-void
.end method
