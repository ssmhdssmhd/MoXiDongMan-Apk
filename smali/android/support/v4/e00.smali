.class public final synthetic Landroid/support/v4/e00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;

.field public final synthetic for:Landroid/app/AlertDialog;

.field public final synthetic if:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/e00;->do:Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;

    iput-object p2, p0, Landroid/support/v4/e00;->if:Landroid/widget/EditText;

    iput-object p3, p0, Landroid/support/v4/e00;->for:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/e00;->do:Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;

    iget-object v1, p0, Landroid/support/v4/e00;->if:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/support/v4/e00;->for:Landroid/app/AlertDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/utils/DialogTool;->goto(Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
