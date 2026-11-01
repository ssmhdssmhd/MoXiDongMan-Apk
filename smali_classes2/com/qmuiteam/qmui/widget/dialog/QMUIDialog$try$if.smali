.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->native(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/widget/LinearLayout;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$if;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$if;->do:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$if;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$if;->do:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$if;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;

    iget-object v1, v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
