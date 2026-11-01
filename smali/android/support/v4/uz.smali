.class public final synthetic Landroid/support/v4/uz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;

.field public final synthetic if:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/uz;->do:Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;

    iput-object p2, p0, Landroid/support/v4/uz;->if:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/uz;->do:Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;

    iget-object v1, p0, Landroid/support/v4/uz;->if:Landroid/app/AlertDialog;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/utils/DialogTool;->else(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
