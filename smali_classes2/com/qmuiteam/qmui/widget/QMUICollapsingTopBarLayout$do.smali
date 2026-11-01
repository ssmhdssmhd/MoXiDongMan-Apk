.class Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$do;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$do;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->do(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
