.class public Lcom/google/android/material/circularreveal/CircularRevealWidget$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/google/android/material/circularreveal/CircularRevealWidget$try;",
        ">;"
    }
.end annotation


# static fields
.field public static final if:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lcom/google/android/material/circularreveal/CircularRevealWidget$try;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final do:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$if;

    invoke-direct {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$if;-><init>()V

    sput-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$if;->if:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$do;)V

    iput-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$if;->do:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    return-void
.end method


# virtual methods
.method public do(FLcom/google/android/material/circularreveal/CircularRevealWidget$try;Lcom/google/android/material/circularreveal/CircularRevealWidget$try;)Lcom/google/android/material/circularreveal/CircularRevealWidget$try;
    .locals 4
    .param p2    # Lcom/google/android/material/circularreveal/CircularRevealWidget$try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/circularreveal/CircularRevealWidget$try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$if;->do:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    iget v1, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do:F

    iget v2, p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->do:F

    .line 2
    invoke-static {v1, v2, p1}, Landroid/support/v4/zx0;->case(FFF)F

    move-result v1

    iget v2, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->if:F

    iget v3, p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->if:F

    .line 3
    invoke-static {v2, v3, p1}, Landroid/support/v4/zx0;->case(FFF)F

    move-result v2

    iget p2, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for:F

    iget p3, p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->for:F

    .line 4
    invoke-static {p2, p3, p1}, Landroid/support/v4/zx0;->case(FFF)F

    move-result p1

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;->if(FFF)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$if;->do:Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    check-cast p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$if;->do(FLcom/google/android/material/circularreveal/CircularRevealWidget$try;Lcom/google/android/material/circularreveal/CircularRevealWidget$try;)Lcom/google/android/material/circularreveal/CircularRevealWidget$try;

    move-result-object p1

    return-object p1
.end method
