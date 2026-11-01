.class public Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/ch1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getAlphaViewHelper()Landroid/support/v4/ch1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->do:Landroid/support/v4/ch1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/ch1;

    invoke-direct {v0, p0}, Landroid/support/v4/ch1;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->do:Landroid/support/v4/ch1;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->do:Landroid/support/v4/ch1;

    return-object v0
.end method


# virtual methods
.method public setChangeAlphaWhenDisable(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->getAlphaViewHelper()Landroid/support/v4/ch1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/ch1;->for(Z)V

    return-void
.end method

.method public setChangeAlphaWhenPress(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->getAlphaViewHelper()Landroid/support/v4/ch1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/ch1;->new(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->getAlphaViewHelper()Landroid/support/v4/ch1;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/ch1;->do(Landroid/view/View;Z)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->setPressed(Z)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->getAlphaViewHelper()Landroid/support/v4/ch1;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/ch1;->if(Landroid/view/View;Z)V

    return-void
.end method
