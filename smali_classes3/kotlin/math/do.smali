.class final Lkotlin/math/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0010\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0004R\u0016\u0010\r\u001a\u00020\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0004R\u0016\u0010\u000f\u001a\u00020\u00028\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0004\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/math/do;",
        "",
        "",
        "do",
        "D",
        "LN2",
        "if",
        "epsilon",
        "for",
        "taylor_2_bound",
        "new",
        "taylor_n_bound",
        "try",
        "upper_taylor_2_bound",
        "case",
        "upper_taylor_n_bound",
        "<init>",
        "()V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final case:D
    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field public static final do:D
    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field public static final else:Lkotlin/math/do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field public static final for:D
    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field public static final if:D
    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field public static final new:D
    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field public static final try:D
    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lkotlin/math/do;

    invoke-direct {v0}, Lkotlin/math/do;-><init>()V

    sput-object v0, Lkotlin/math/do;->else:Lkotlin/math/do;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/math/do;->do:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/math/do;->if:D

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lkotlin/math/do;->for:D

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sput-wide v2, Lkotlin/math/do;->new:D

    const/4 v4, 0x1

    int-to-double v4, v4

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v4, v0

    sput-wide v0, Lkotlin/math/do;->try:D

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    sput-wide v4, Lkotlin/math/do;->case:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
