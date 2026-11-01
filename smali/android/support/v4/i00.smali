.class public final synthetic Landroid/support/v4/i00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;

.field public final synthetic if:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/i00;->do:Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;

    iput-object p2, p0, Landroid/support/v4/i00;->if:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/i00;->do:Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;

    iget-object v1, p0, Landroid/support/v4/i00;->if:Landroid/app/AlertDialog;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/wsw/cospa/utils/DialogTool;->new(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
