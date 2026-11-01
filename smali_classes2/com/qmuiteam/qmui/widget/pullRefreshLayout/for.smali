.class public Lcom/qmuiteam/qmui/widget/pullRefreshLayout/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout$RefreshOffsetCalculator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateRefreshOffset(IIIIII)I
    .locals 0

    .line 1
    div-int/lit8 p6, p6, 0x2

    div-int/lit8 p1, p3, 0x2

    add-int/2addr p6, p1

    sub-int p1, p4, p3

    sub-int/2addr p4, p6

    .line 2
    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
