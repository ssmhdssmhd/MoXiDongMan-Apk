.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder<",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;",
        ">;"
    }
.end annotation


# instance fields
.field public default:Ljava/lang/String;

.field private extends:Z

.field private finally:Landroid/graphics/drawable/Drawable;

.field private package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

.field private throws:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->extends:Z

    .line 3
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_s_checkbox:I

    invoke-static {p1, v0}, Landroid/support/v4/sh1;->try(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->finally:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic protected(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->extends:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->default:Ljava/lang/String;

    return-object p0
.end method

.method public implements()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->extends:Z

    return v0
.end method

.method public instanceof(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->extends:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->extends:Z

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-object p0
.end method

.method public return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->default:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->throws:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    .line 3
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    .line 4
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->if()V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import()Z

    move-result p3

    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_message_content_style:I

    invoke-static {p1, p3, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->protected(Landroid/widget/TextView;ZI)V

    .line 6
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getGravity()I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->throws:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-virtual {p3, v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->throws:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->throws:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->setMaxHeight(I)V

    .line 11
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->default:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->finally:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->finally:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, p3, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->finally:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, v0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    new-instance p3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if$do;

    invoke-direct {p3, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if$do;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    iget-boolean p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->extends:Z

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 16
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->throws:Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public synchronized(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->final()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;

    move-result-object p1

    return-object p1
.end method

.method public transient()Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->package:Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    return-object v0
.end method
