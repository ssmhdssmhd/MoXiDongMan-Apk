.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder<",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;",
        ">;"
    }
.end annotation


# instance fields
.field private default:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

.field private extends:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

.field public throws:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static protected(Landroid/widget/TextView;ZI)V
    .locals 5

    .line 1
    invoke-static {p0, p2}, Landroid/support/v4/sh1;->do(Landroid/widget/TextView;I)V

    if-nez p1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMessageTvCustomDef:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v2, p2, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 5
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMessageTvCustomDef_qmui_paddingTopWhenNotTitle:I

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 10
    invoke-virtual {p0, v1, v0, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method


# virtual methods
.method public implements(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->final()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->instanceof(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;

    move-result-object p1

    return-object p1
.end method

.method public instanceof(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->throws:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public public(Landroid/widget/TextView;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->public(Landroid/widget/TextView;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->throws:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogTitleTvCustomDef:[I

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_title_style:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    :goto_0
    if-ge v4, v1, :cond_2

    .line 5
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 6
    sget v3, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogTitleTvCustomDef_qmui_paddingBottomWhenNotContent:I

    if-ne v2, v3, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 11
    invoke-virtual {p1, v3, v5, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->throws:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->extends:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import()Z

    move-result v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_message_content_style:I

    invoke-static {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->protected(Landroid/widget/TextView;ZI)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->extends:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->throws:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->extends:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->if()V

    .line 6
    new-instance p1, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->default:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    .line 7
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->setMaxHeight(I)V

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->default:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->default:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->extends:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p1, p3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->default:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public transient()Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->extends:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    return-object v0
.end method
