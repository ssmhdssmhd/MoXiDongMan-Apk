.class public Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090491

    const-string v2, "field \'tv_item\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    .line 4
    const-class v0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const v1, 0x7f090235

    const-string v2, "field \'draweeView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090240

    const-string v2, "field \'iv_failure\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
