.class public Lcom/wsw/cospa/widget/view/OptionsMenuDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog_ViewBinding;-><init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog_ViewBinding;->target:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09046f

    const-string v2, "field \'tvComicName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvComicName:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090243

    const-string v2, "field \'ivModeImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->ivModeImage:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09046c

    const-string v2, "field \'tvClearShelf\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvClearShelf:Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090467

    const-string v2, "field \'tvChangeSource\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvChangeSource:Landroid/widget/LinearLayout;

    .line 8
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09047d

    const-string v2, "field \'tvDownloadComic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvDownloadComic:Landroid/widget/LinearLayout;

    .line 9
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090477

    const-string v2, "field \'tvDeleteComic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvDeleteComic:Landroid/widget/LinearLayout;

    .line 10
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090498

    const-string v2, "field \'tvManagerComic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvManagerComic:Landroid/widget/LinearLayout;

    .line 11
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090499

    const-string v2, "field \'tvMoveComic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvMoveComic:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog_ViewBinding;->target:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog_ViewBinding;->target:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvComicName:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->ivModeImage:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvClearShelf:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvChangeSource:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvDownloadComic:Landroid/widget/LinearLayout;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvDeleteComic:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvManagerComic:Landroid/widget/LinearLayout;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvMoveComic:Landroid/widget/LinearLayout;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
