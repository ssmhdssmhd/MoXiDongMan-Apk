.class public interface abstract Lcom/qmuiteam/qmui/layout/IQMUILayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/layout/IQMUILayout$do;
    }
.end annotation


# static fields
.field public static final HIDE_RADIUS_SIDE_BOTTOM:I = 0x3

.field public static final HIDE_RADIUS_SIDE_LEFT:I = 0x4

.field public static final HIDE_RADIUS_SIDE_NONE:I = 0x0

.field public static final HIDE_RADIUS_SIDE_RIGHT:I = 0x2

.field public static final HIDE_RADIUS_SIDE_TOP:I = 0x1


# virtual methods
.method public abstract getHideRadiusSide()I
.end method

.method public abstract getRadius()I
.end method

.method public abstract getShadowAlpha()F
.end method

.method public abstract getShadowColor()I
.end method

.method public abstract getShadowElevation()I
.end method

.method public abstract onlyShowBottomDivider(IIII)V
.end method

.method public abstract onlyShowLeftDivider(IIII)V
.end method

.method public abstract onlyShowRightDivider(IIII)V
.end method

.method public abstract onlyShowTopDivider(IIII)V
.end method

.method public abstract setBorderColor(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setBorderWidth(I)V
.end method

.method public abstract setBottomDividerAlpha(I)V
.end method

.method public abstract setHeightLimit(I)Z
.end method

.method public abstract setHideRadiusSide(I)V
.end method

.method public abstract setLeftDividerAlpha(I)V
.end method

.method public abstract setOuterNormalColor(I)V
.end method

.method public abstract setOutlineExcludePadding(Z)V
.end method

.method public abstract setOutlineInset(IIII)V
.end method

.method public abstract setRadius(I)V
.end method

.method public abstract setRadius(II)V
.end method

.method public abstract setRadiusAndShadow(IIF)V
.end method

.method public abstract setRadiusAndShadow(IIIF)V
.end method

.method public abstract setRadiusAndShadow(IIIIF)V
.end method

.method public abstract setRightDividerAlpha(I)V
.end method

.method public abstract setShadowAlpha(F)V
.end method

.method public abstract setShadowColor(I)V
.end method

.method public abstract setShadowElevation(I)V
.end method

.method public abstract setShowBorderOnlyBeforeL(Z)V
.end method

.method public abstract setTopDividerAlpha(I)V
.end method

.method public abstract setUseThemeGeneralShadowElevation()V
.end method

.method public abstract setWidthLimit(I)Z
.end method

.method public abstract updateBottomDivider(IIII)V
.end method

.method public abstract updateLeftDivider(IIII)V
.end method

.method public abstract updateRightDivider(IIII)V
.end method

.method public abstract updateTopDivider(IIII)V
.end method
