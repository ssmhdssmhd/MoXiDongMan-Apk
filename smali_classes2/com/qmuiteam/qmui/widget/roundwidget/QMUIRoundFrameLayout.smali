.class public Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundFrameLayout;->do(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundFrameLayout;->do(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundFrameLayout;->do(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private do(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/support/v4/th1;->do(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/support/v4/th1;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/for;->default(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
