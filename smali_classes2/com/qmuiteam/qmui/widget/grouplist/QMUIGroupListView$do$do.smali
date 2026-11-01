.class Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->new(Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$do;->if:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$do;->do:Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$do;->do:Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView;->getSwitch()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
