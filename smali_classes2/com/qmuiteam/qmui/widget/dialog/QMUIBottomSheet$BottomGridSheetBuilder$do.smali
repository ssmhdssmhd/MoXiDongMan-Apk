.class Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$ItemViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;->case(Landroid/view/View;I)Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/View;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$do;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$do;->do:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet;IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheet$BottomGridSheetBuilder$do;->do:Landroid/view/View;

    return-object p1
.end method
