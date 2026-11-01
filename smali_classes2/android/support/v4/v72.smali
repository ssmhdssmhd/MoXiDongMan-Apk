.class public Landroid/support/v4/v72;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Landroid/view/LayoutInflater;

.field private static if:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(I)V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/Toast;

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Landroid/support/v4/v72;->do:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sput-object v1, Landroid/support/v4/v72;->do:Landroid/view/LayoutInflater;

    .line 4
    :cond_0
    sget-object v1, Landroid/support/v4/v72;->do:Landroid/view/LayoutInflater;

    const v2, 0x7f0c008e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Landroid/support/v4/v72;->if:Landroid/view/View;

    const v2, 0x7f0902cc

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0x11

    .line 7
    invoke-virtual {v0, p0, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 8
    sget-object p0, Landroid/support/v4/v72;->if:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 9
    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 10
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static if(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/Toast;

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v1, Landroid/support/v4/v72;->do:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sput-object v1, Landroid/support/v4/v72;->do:Landroid/view/LayoutInflater;

    .line 4
    :cond_0
    sget-object v1, Landroid/support/v4/v72;->do:Landroid/view/LayoutInflater;

    const v2, 0x7f0c008e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Landroid/support/v4/v72;->if:Landroid/view/View;

    const v2, 0x7f0902cc

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x11

    .line 6
    invoke-virtual {v0, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 7
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget-object p0, Landroid/support/v4/v72;->if:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 9
    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 10
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
