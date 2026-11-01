.class Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/grouplist/QMUICommonListItemView$LayoutParamConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->try(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$if;->do:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$if;->do:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->do(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do$if;->do:Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;->if(Lcom/qmuiteam/qmui/widget/grouplist/QMUIGroupListView$do;)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    return-object p1
.end method
