.class Lcom/google/android/material/button/MaterialButtonToggleGroup$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# static fields
.field private static final try:Lcom/google/android/material/shape/CornerSize;


# instance fields
.field public do:Lcom/google/android/material/shape/CornerSize;

.field public for:Lcom/google/android/material/shape/CornerSize;

.field public if:Lcom/google/android/material/shape/CornerSize;

.field public new:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/private;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/private;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->try:Lcom/google/android/material/shape/CornerSize;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->do:Lcom/google/android/material/shape/CornerSize;

    .line 3
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->if:Lcom/google/android/material/shape/CornerSize;

    .line 4
    iput-object p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->for:Lcom/google/android/material/shape/CornerSize;

    .line 5
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->new:Lcom/google/android/material/shape/CornerSize;

    return-void
.end method

.method public static case(Lcom/google/android/material/button/MaterialButtonToggleGroup$new;)Lcom/google/android/material/button/MaterialButtonToggleGroup$new;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->do:Lcom/google/android/material/shape/CornerSize;

    sget-object v2, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->try:Lcom/google/android/material/shape/CornerSize;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->if:Lcom/google/android/material/shape/CornerSize;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    return-object v0
.end method

.method public static do(Lcom/google/android/material/button/MaterialButtonToggleGroup$new;)Lcom/google/android/material/button/MaterialButtonToggleGroup$new;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->try:Lcom/google/android/material/shape/CornerSize;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->new:Lcom/google/android/material/shape/CornerSize;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->for:Lcom/google/android/material/shape/CornerSize;

    invoke-direct {v0, v1, v2, v1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    return-object v0
.end method

.method public static for(Lcom/google/android/material/button/MaterialButtonToggleGroup$new;)Lcom/google/android/material/button/MaterialButtonToggleGroup$new;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->do:Lcom/google/android/material/shape/CornerSize;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->new:Lcom/google/android/material/shape/CornerSize;

    sget-object v2, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->try:Lcom/google/android/material/shape/CornerSize;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    return-object v0
.end method

.method public static if(Lcom/google/android/material/button/MaterialButtonToggleGroup$new;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$new;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->break(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->for(Lcom/google/android/material/button/MaterialButtonToggleGroup$new;)Lcom/google/android/material/button/MaterialButtonToggleGroup$new;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->new(Lcom/google/android/material/button/MaterialButtonToggleGroup$new;)Lcom/google/android/material/button/MaterialButtonToggleGroup$new;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static new(Lcom/google/android/material/button/MaterialButtonToggleGroup$new;)Lcom/google/android/material/button/MaterialButtonToggleGroup$new;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->try:Lcom/google/android/material/shape/CornerSize;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->if:Lcom/google/android/material/shape/CornerSize;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->for:Lcom/google/android/material/shape/CornerSize;

    invoke-direct {v0, v1, v1, v2, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    return-object v0
.end method

.method public static try(Lcom/google/android/material/button/MaterialButtonToggleGroup$new;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$new;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->break(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->new(Lcom/google/android/material/button/MaterialButtonToggleGroup$new;)Lcom/google/android/material/button/MaterialButtonToggleGroup$new;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$new;->for(Lcom/google/android/material/button/MaterialButtonToggleGroup$new;)Lcom/google/android/material/button/MaterialButtonToggleGroup$new;

    move-result-object p0

    :goto_0
    return-object p0
.end method
