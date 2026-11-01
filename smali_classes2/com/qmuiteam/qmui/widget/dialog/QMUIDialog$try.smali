.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder<",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;",
        ">;"
    }
.end annotation


# instance fields
.field private abstract:Ljava/lang/CharSequence;

.field public default:Landroid/text/method/TransformationMethod;

.field public extends:Landroid/widget/RelativeLayout;

.field public finally:Landroid/widget/EditText;

.field public package:Landroid/widget/ImageView;

.field private private:I

.field public throws:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->private:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->abstract:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->private:I

    return-object p0
.end method

.method public b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->final()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->c(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->throws:Ljava/lang/String;

    return-object p0
.end method

.method public d(Landroid/text/method/TransformationMethod;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->default:Landroid/text/method/TransformationMethod;

    return-object p0
.end method

.method public implements()Landroid/widget/EditText;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    return-object v0
.end method

.method public instanceof()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->package:Landroid/widget/ImageView;

    return-object v0
.end method

.method public native(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->native(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    const-string p2, "input_method"

    .line 2
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    new-instance p3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$do;

    invoke-direct {p3, p0, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$do;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    new-instance p3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$if;

    invoke-direct {p3, p0, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$if;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p3, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public protected()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->package:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object v0
.end method

.method public return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance p1, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {p1, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import()Z

    move-result v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_edit_content_style:I

    invoke-static {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;->protected(Landroid/widget/TextView;ZI)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_edit_input:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setId(I)V

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->abstract:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->abstract:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->package:Landroid/widget/ImageView;

    .line 10
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_edit_right_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 11
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->package:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->extends:Landroid/widget/RelativeLayout;

    .line 13
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 15
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 16
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 17
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 18
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->extends:Landroid/widget/RelativeLayout;

    sget v2, Lcom/qmuiteam/qmui/R$drawable;->qmui_edittext_bg_border_bottom:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 19
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->extends:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->default:Landroid/text/method/TransformationMethod;

    if-eqz p1, :cond_1

    .line 21
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->private:I

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 24
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/support/v4/ih1;->try(I)I

    move-result v2

    invoke-virtual {p1, v1, v1, v1, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 25
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 26
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->package:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    .line 27
    invoke-virtual {p1, v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 28
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->throws:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 29
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->extends:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->protected()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->extends:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->package:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->transient()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->extends:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public synchronized(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->abstract:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public transient()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    const/4 v2, -0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Landroid/support/v4/ih1;->try(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    return-object v0
.end method
