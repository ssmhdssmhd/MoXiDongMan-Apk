.class public Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;

    .line 3
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f090241

    const-string v2, "field \'ivFileIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;->ivFileIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f090486

    const-string v2, "field \'tvFileName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;->tvFileName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f090487

    const-string v2, "field \'tvFilePath\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p1, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;->tvFilePath:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder_ViewBinding;->do:Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;->ivFileIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;->tvFileName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;->tvFilePath:Landroidx/appcompat/widget/AppCompatTextView;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
