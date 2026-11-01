.class public final synthetic Landroid/support/v4/ii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

.field public final synthetic for:Ljava/util/List;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ii;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iput-object p2, p0, Landroid/support/v4/ii;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iput-object p3, p0, Landroid/support/v4/ii;->for:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/ii;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v1, p0, Landroid/support/v4/ii;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iget-object v2, p0, Landroid/support/v4/ii;->for:Ljava/util/List;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->s(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
