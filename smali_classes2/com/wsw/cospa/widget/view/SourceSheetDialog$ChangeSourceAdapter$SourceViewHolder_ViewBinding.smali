.class public Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder_ViewBinding;->target:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;

    .line 3
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090231

    const-string v2, "field \'item_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->item_view:Landroid/widget/LinearLayout;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0900f1

    const-string v2, "field \'checkbox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/ImageView;

    .line 5
    const-class v0, Lcom/wsw/cospa/widget/view/RoundImageView;

    const v1, 0x7f09023a

    const-string v2, "field \'ivCover\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/RoundImageView;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a0

    const-string v2, "field \'tvOrigin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->tvOrigin:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09046f

    const-string v2, "field \'tvComicName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->tvComicName:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090494

    const-string v2, "field \'tvLastChapter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->tvLastChapter:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder_ViewBinding;->target:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder_ViewBinding;->target:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->item_view:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->checkbox:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->tvOrigin:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->tvComicName:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter$SourceViewHolder;->tvLastChapter:Landroid/widget/TextView;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
