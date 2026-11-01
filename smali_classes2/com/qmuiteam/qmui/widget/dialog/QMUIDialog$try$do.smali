.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$do;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$do;->do:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$do;->do:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try$do;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;->finally:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
