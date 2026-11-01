.class public Landroid/support/v4/xh1$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/xh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private do:Landroid/content/Context;

.field private if:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/xh1$if;->do:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/xh1;
    .locals 5

    .line 1
    new-instance v0, Landroid/support/v4/xh1;

    iget-object v1, p0, Landroid/support/v4/xh1$if;->do:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/xh1;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$layout;->qmui_tip_dialog_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    sget v1, Lcom/qmuiteam/qmui/R$id;->contentWrap:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4
    iget-object v2, p0, Landroid/support/v4/xh1$if;->do:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Landroid/support/v4/xh1$if;->if:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object v0
.end method

.method public if(I)Landroid/support/v4/xh1$if;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroid/support/v4/xh1$if;->if:I

    return-object p0
.end method
