.class public interface abstract Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;


# static fields
.field public static final HEIGHT_IS_ENOUGH_TO_SCROLL:I = -0x1


# virtual methods
.method public abstract consumeScroll(I)V
.end method

.method public abstract getContentHeight()I
.end method

.method public abstract getCurrentScroll()I
.end method

.method public abstract getScrollOffsetRange()I
.end method

.method public abstract smoothScrollYBy(II)V
.end method

.method public abstract stopScroll()V
.end method
