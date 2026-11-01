.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->f(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->do:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->c(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->c(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->implements(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->protected(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/graphics/Rect;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->implements(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->protected(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->protected(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p3

    .line 4
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->protected(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->do:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/ih1;->final(Landroid/content/Context;)I

    move-result p1

    .line 6
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->implements(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p1, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 7
    :goto_0
    iget-object p4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->instanceof(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)I

    move-result p4

    const/4 p5, -0x2

    const/4 p6, 0x1

    if-eq p3, p4, :cond_3

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p1, p6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->b(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;Z)Z

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p1, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->synchronized(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;I)I

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->instanceof(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)I

    move-result p3

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 12
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    iget-object p3, p3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->c(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->h()I

    move-result p3

    if-ne p3, p5, :cond_1

    .line 15
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->d(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)I

    move-result p4

    iget-object p5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->c(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/widget/ScrollView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-static {p3, p4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->e(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;I)I

    goto :goto_1

    .line 16
    :cond_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->h()I

    move-result p4

    invoke-static {p3, p4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->e(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;I)I

    .line 17
    :goto_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->instanceof(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)I

    move-result p3

    if-nez p3, :cond_2

    .line 18
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->d(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    .line 19
    :cond_2
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->c(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/widget/ScrollView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 20
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->d(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)I

    move-result p2

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->instanceof(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 21
    :goto_2
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->c(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 22
    :cond_3
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 23
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p2, p6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->b(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;Z)Z

    .line 24
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->h()I

    move-result p2

    if-ne p2, p5, :cond_6

    .line 25
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    iget-object p2, p2, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->else:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    iget p3, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, p3

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, p2

    .line 27
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 28
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    iget-object p2, p2, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->class:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 29
    :cond_4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    iget-object p2, p2, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    if-eqz p2, :cond_5

    .line 30
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->do:Landroid/content/Context;

    const/16 p3, 0x96

    invoke-static {p2, p3}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 31
    :cond_5
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->do()I

    move-result p2

    .line 32
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->e(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;I)I

    .line 33
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->c(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->d(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$new;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->c(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_3
    return-void
.end method
