.class public final synthetic Landroid/support/v4/h81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

.field public final synthetic for:Ljava/util/List;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/h81;->do:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    iput-object p2, p0, Landroid/support/v4/h81;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iput-object p3, p0, Landroid/support/v4/h81;->for:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/h81;->do:Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    iget-object v1, p0, Landroid/support/v4/h81;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iget-object v2, p0, Landroid/support/v4/h81;->for:Ljava/util/List;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->new(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
