.class public abstract Lcom/jcodecraeer/xrecyclerview/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcodecraeer/xrecyclerview/do$do;
    }
.end annotation


# instance fields
.field private do:Lcom/jcodecraeer/xrecyclerview/do$do;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/do$do;->IDLE:Lcom/jcodecraeer/xrecyclerview/do$do;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/do;->do:Lcom/jcodecraeer/xrecyclerview/do$do;

    return-void
.end method


# virtual methods
.method public abstract do(Lcom/google/android/material/appbar/AppBarLayout;Lcom/jcodecraeer/xrecyclerview/do$do;)V
.end method

.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/jcodecraeer/xrecyclerview/do;->do:Lcom/jcodecraeer/xrecyclerview/do$do;

    sget-object v0, Lcom/jcodecraeer/xrecyclerview/do$do;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/do$do;

    if-eq p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/jcodecraeer/xrecyclerview/do;->do(Lcom/google/android/material/appbar/AppBarLayout;Lcom/jcodecraeer/xrecyclerview/do$do;)V

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/do;->do:Lcom/jcodecraeer/xrecyclerview/do$do;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 5
    iget-object p2, p0, Lcom/jcodecraeer/xrecyclerview/do;->do:Lcom/jcodecraeer/xrecyclerview/do$do;

    sget-object v0, Lcom/jcodecraeer/xrecyclerview/do$do;->COLLAPSED:Lcom/jcodecraeer/xrecyclerview/do$do;

    if-eq p2, v0, :cond_2

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/jcodecraeer/xrecyclerview/do;->do(Lcom/google/android/material/appbar/AppBarLayout;Lcom/jcodecraeer/xrecyclerview/do$do;)V

    .line 7
    :cond_2
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/do;->do:Lcom/jcodecraeer/xrecyclerview/do$do;

    goto :goto_0

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/jcodecraeer/xrecyclerview/do;->do:Lcom/jcodecraeer/xrecyclerview/do$do;

    sget-object v0, Lcom/jcodecraeer/xrecyclerview/do$do;->IDLE:Lcom/jcodecraeer/xrecyclerview/do$do;

    if-eq p2, v0, :cond_4

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/jcodecraeer/xrecyclerview/do;->do(Lcom/google/android/material/appbar/AppBarLayout;Lcom/jcodecraeer/xrecyclerview/do$do;)V

    .line 10
    :cond_4
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/do;->do:Lcom/jcodecraeer/xrecyclerview/do$do;

    :goto_0
    return-void
.end method
