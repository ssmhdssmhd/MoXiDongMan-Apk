.class public Lcom/qmuiteam/qmui/widget/pullRefreshLayout/do;
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

    if-ge p4, p3, :cond_0

    sub-int/2addr p4, p3

    return p4

    :cond_0
    sub-int/2addr p4, p3

    .line 1
    div-int/lit8 p4, p4, 0x2

    return p4
.end method
