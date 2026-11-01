.class public interface abstract Lcom/google/android/material/circularreveal/CircularRevealWidget;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/CircularRevealWidget$new;,
        Lcom/google/android/material/circularreveal/CircularRevealWidget$if;,
        Lcom/google/android/material/circularreveal/CircularRevealWidget$for;,
        Lcom/google/android/material/circularreveal/CircularRevealWidget$try;
    }
.end annotation


# virtual methods
.method public abstract buildCircularRevealCache()V
.end method

.method public abstract destroyCircularRevealCache()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCircularRevealScrimColor()I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end method

.method public abstract getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$try;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCircularRevealScrimColor(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$try;)V
    .param p1    # Lcom/google/android/material/circularreveal/CircularRevealWidget$try;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
