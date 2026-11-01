.class public Lcom/qmuiteam/qmui/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:Landroid/view/animation/Interpolator;

.field public static final do:Landroid/view/animation/Interpolator;

.field public static final for:Landroid/view/animation/Interpolator;

.field public static final if:Landroid/view/animation/Interpolator;

.field public static final new:Landroid/view/animation/Interpolator;

.field public static final try:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/do;->do:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/do;->if:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/do;->for:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/do;->new:Landroid/view/animation/Interpolator;

    .line 5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/do;->try:Landroid/view/animation/Interpolator;

    .line 6
    new-instance v0, Lcom/qmuiteam/qmui/do$do;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/do$do;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/do;->case:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
