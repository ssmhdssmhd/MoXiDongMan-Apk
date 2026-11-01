.class public Landroid/support/v4/rh1;
.super Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/rh1$do;
    }
.end annotation


# static fields
.field public static final abstract:I = 0x0

.field public static final continue:I = 0x1

.field public static final extends:I = 0x1

.field public static final finally:I = 0x2

.field public static final package:I = 0x3

.field public static final private:I = 0x4

.field public static final strictfp:I = 0x2


# instance fields
.field public const:Landroid/widget/ImageView;

.field private default:I

.field public final:Landroid/widget/ImageView;

.field public import:I

.field public native:I

.field private public:I

.field private return:I

.field private static:I

.field public super:I

.field private switch:I

.field public throw:I

.field private throws:I

.field public while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/rh1;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroid/support/v4/rh1;->while:I

    .line 4
    iput p1, p0, Landroid/support/v4/rh1;->import:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/support/v4/rh1;->public:I

    .line 6
    iput p1, p0, Landroid/support/v4/rh1;->return:I

    .line 7
    iput p1, p0, Landroid/support/v4/rh1;->switch:I

    .line 8
    iput p1, p0, Landroid/support/v4/rh1;->throws:I

    .line 9
    iput p1, p0, Landroid/support/v4/rh1;->default:I

    const/4 p1, 0x4

    .line 10
    iput p1, p0, Landroid/support/v4/rh1;->super:I

    .line 11
    iput p2, p0, Landroid/support/v4/rh1;->static:I

    .line 12
    iput p2, p0, Landroid/support/v4/rh1;->throw:I

    return-void
.end method

.method private finally(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/rh1;->const:Landroid/widget/ImageView;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 3
    :cond_0
    iget v0, p0, Landroid/support/v4/rh1;->throw:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v3, p0, Landroid/support/v4/rh1;->super:I

    if-eq v3, v2, :cond_c

    if-eq v3, v1, :cond_a

    const/4 v1, 0x3

    if-eq v3, v1, :cond_8

    const/4 v2, 0x4

    if-eq v3, v2, :cond_2

    goto :goto_7

    .line 5
    :cond_2
    div-int/2addr p1, v2

    if-gt p2, p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Left:I

    goto :goto_1

    :cond_3
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Left:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    :cond_4
    if-le p2, p1, :cond_6

    mul-int/lit8 p1, p1, 0x3

    if-ge p2, p1, :cond_6

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Center:I

    goto :goto_2

    :cond_5
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Center:I

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    .line 8
    :cond_6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Right:I

    goto :goto_3

    :cond_7
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Right:I

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Center:I

    goto :goto_4

    :cond_9
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Center:I

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    .line 10
    :cond_a
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_b

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Right:I

    goto :goto_5

    :cond_b
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Right:I

    :goto_5
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_7

    .line 11
    :cond_c
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_d

    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopUpMenu_Left:I

    goto :goto_6

    :cond_d
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_Animation_PopDownMenu_Left:I

    :goto_6
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_7
    return-void
.end method

.method private interface(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private protected()V
    .locals 5

    .line 1
    iget v0, p0, Landroid/support/v4/rh1;->throw:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/rh1;->final:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Landroid/support/v4/rh1;->interface(Landroid/view/View;Z)V

    .line 3
    iget-object v0, p0, Landroid/support/v4/rh1;->const:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Landroid/support/v4/rh1;->interface(Landroid/view/View;Z)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v4/rh1;->const:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Landroid/support/v4/rh1;->interface(Landroid/view/View;Z)V

    .line 5
    iget-object v0, p0, Landroid/support/v4/rh1;->final:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Landroid/support/v4/rh1;->interface(Landroid/view/View;Z)V

    .line 6
    iget-object v0, p0, Landroid/support/v4/rh1;->const:Landroid/widget/ImageView;

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/support/v4/rh1;->final:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Landroid/support/v4/rh1;->interface(Landroid/view/View;Z)V

    .line 8
    iget-object v0, p0, Landroid/support/v4/rh1;->const:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Landroid/support/v4/rh1;->interface(Landroid/view/View;Z)V

    .line 9
    iget-object v0, p0, Landroid/support/v4/rh1;->final:Landroid/widget/ImageView;

    :goto_1
    if-eqz v0, :cond_3

    .line 10
    iget-object v2, p0, Landroid/support/v4/rh1;->const:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    iget v3, p0, Landroid/support/v4/rh1;->native:I

    iget v4, p0, Landroid/support/v4/rh1;->while:I

    sub-int/2addr v3, v4

    div-int/2addr v2, v1

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_3
    return-void
.end method

.method private static(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x2

    if-eqz p1, :cond_6

    new-array v1, v0, [I

    .line 1
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 2
    aget v3, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Landroid/support/v4/rh1;->native:I

    .line 3
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->this:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v4, 0x2

    if-ge v3, v5, :cond_1

    .line 4
    iget v4, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    iget v6, p0, Landroid/support/v4/rh1;->public:I

    if-le v5, v6, :cond_0

    .line 5
    div-int/2addr v4, v0

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/support/v4/rh1;->while:I

    goto :goto_0

    .line 6
    :cond_0
    iput v6, p0, Landroid/support/v4/rh1;->while:I

    goto :goto_0

    .line 7
    :cond_1
    iget v5, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    div-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v3

    iget v7, p0, Landroid/support/v4/rh1;->public:I

    sub-int v8, v4, v7

    if-ge v6, v8, :cond_2

    .line 8
    div-int/2addr v5, v0

    sub-int/2addr v3, v5

    iput v3, p0, Landroid/support/v4/rh1;->while:I

    goto :goto_0

    :cond_2
    sub-int/2addr v4, v7

    sub-int/2addr v4, v5

    .line 9
    iput v4, p0, Landroid/support/v4/rh1;->while:I

    .line 10
    :goto_0
    iget v3, p0, Landroid/support/v4/rh1;->static:I

    iput v3, p0, Landroid/support/v4/rh1;->throw:I

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    if-eq v3, v0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    aget p1, v1, v4

    iput p1, p0, Landroid/support/v4/rh1;->import:I

    goto :goto_1

    .line 12
    :cond_4
    aget v0, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/rh1;->import:I

    .line 13
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->this:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Landroid/support/v4/rh1;->return:I

    sub-int/2addr p1, v3

    iget v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    sub-int/2addr p1, v3

    if-le v0, p1, :cond_7

    .line 14
    aget p1, v1, v4

    sub-int/2addr p1, v3

    iput p1, p0, Landroid/support/v4/rh1;->import:I

    .line 15
    iput v2, p0, Landroid/support/v4/rh1;->throw:I

    goto :goto_1

    .line 16
    :cond_5
    aget v0, v1, v4

    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/support/v4/rh1;->import:I

    .line 17
    iget v2, p0, Landroid/support/v4/rh1;->return:I

    if-ge v0, v2, :cond_7

    .line 18
    aget v0, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/rh1;->import:I

    .line 19
    iput v4, p0, Landroid/support/v4/rh1;->throw:I

    goto :goto_1

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->this:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    iput v1, p0, Landroid/support/v4/rh1;->while:I

    .line 21
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/rh1;->import:I

    .line 22
    iput v0, p0, Landroid/support/v4/rh1;->throw:I

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/rh1;->switch:I

    return-void
.end method

.method public class(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Landroid/support/v4/rh1;->static(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Landroid/support/v4/rh1;->protected()V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->this:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p0, Landroid/support/v4/rh1;->native:I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/rh1;->finally(II)V

    .line 4
    iget p1, p0, Landroid/support/v4/rh1;->throw:I

    if-nez p1, :cond_0

    .line 5
    iget p1, p0, Landroid/support/v4/rh1;->throws:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 6
    iget p1, p0, Landroid/support/v4/rh1;->default:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_0
    new-instance p2, Landroid/graphics/Point;

    iget v0, p0, Landroid/support/v4/rh1;->while:I

    iget v1, p0, Landroid/support/v4/rh1;->switch:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/rh1;->import:I

    add-int/2addr v1, p1

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method public continue(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/rh1;->default:I

    return-void
.end method

.method public default(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {p1, v0}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public extends(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/rh1;->super:I

    return-void
.end method

.method public import(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/layout/IQMUILayout;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/support/v4/rh1;->default(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/layout/IQMUILayout;->setRadius(I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/support/v4/rh1;->default(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setRadius(I)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object p1, v0

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/rh1;->throws()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    sget v1, Lcom/qmuiteam/qmui/R$id;->arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v4/rh1;->final:Landroid/widget/ImageView;

    .line 10
    sget v1, Lcom/qmuiteam/qmui/R$id;->arrow_up:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/support/v4/rh1;->const:Landroid/widget/ImageView;

    .line 11
    sget v1, Lcom/qmuiteam/qmui/R$id;->box:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 13
    invoke-super {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->import(Landroid/view/View;)V

    return-void
.end method

.method public package(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/rh1;->public:I

    return-void
.end method

.method public private(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/rh1;->return:I

    return-void
.end method

.method public strictfp(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/rh1;->throws:I

    return-void
.end method

.method public super()V
    .locals 0

    return-void
.end method

.method public switch(II)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public throws()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$layout;->qmui_popup_layout:I

    return v0
.end method

.method public volatile(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/rh1;->static:I

    return-void
.end method
