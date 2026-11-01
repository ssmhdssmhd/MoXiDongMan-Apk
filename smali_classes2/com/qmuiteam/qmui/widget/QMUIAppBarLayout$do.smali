.class Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout$do;
.super Landroidx/core/view/WindowInsetsCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout;->applySystemWindowInsets19(Landroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/graphics/Rect;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout$do;->if:Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout;

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout$do;->do:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method


# virtual methods
.method public getSystemWindowInsetTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAppBarLayout$do;->do:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method
