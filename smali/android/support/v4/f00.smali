.class public final synthetic Landroid/support/v4/f00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;

.field public final synthetic for:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

.field public final synthetic if:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

.field public final synthetic new:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/f00;->do:Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;

    iput-object p2, p0, Landroid/support/v4/f00;->if:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object p3, p0, Landroid/support/v4/f00;->for:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object p4, p0, Landroid/support/v4/f00;->new:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/f00;->do:Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;

    iget-object v1, p0, Landroid/support/v4/f00;->if:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iget-object v2, p0, Landroid/support/v4/f00;->for:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iget-object v3, p0, Landroid/support/v4/f00;->new:Landroid/app/AlertDialog;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wsw/cospa/utils/DialogTool;->return(Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
