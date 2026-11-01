.class Lcc/shinichi/library/view/ImagePreviewAdapter$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$if;->if:Lcc/shinichi/library/view/ImagePreviewAdapter;

    iput p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$if;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->import()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$if;->if:Lcc/shinichi/library/view/ImagePreviewAdapter;

    invoke-static {v0}, Lcc/shinichi/library/view/ImagePreviewAdapter;->do(Lcc/shinichi/library/view/ImagePreviewAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->do()Lcc/shinichi/library/view/listener/OnBigImageClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->do()Lcc/shinichi/library/view/listener/OnBigImageClickListener;

    move-result-object v0

    iget v1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$if;->do:I

    invoke-interface {v0, p1, v1}, Lcc/shinichi/library/view/listener/OnBigImageClickListener;->onClick(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
