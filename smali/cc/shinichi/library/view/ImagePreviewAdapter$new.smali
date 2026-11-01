.class Lcc/shinichi/library/view/ImagePreviewAdapter$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/ImagePreviewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcc/shinichi/library/view/ImagePreviewAdapter;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/ImagePreviewAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$new;->if:Lcc/shinichi/library/view/ImagePreviewAdapter;

    iput p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$new;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->if()Lcc/shinichi/library/view/listener/OnBigImageLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->if()Lcc/shinichi/library/view/listener/OnBigImageLongClickListener;

    move-result-object v0

    iget v1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$new;->do:I

    invoke-interface {v0, p1, v1}, Lcc/shinichi/library/view/listener/OnBigImageLongClickListener;->onLongClick(Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
