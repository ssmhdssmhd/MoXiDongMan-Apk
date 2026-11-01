.class public final Landroid/support/v4/qc0;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Landroid/support/v4/qc0;",
        "",
        "",
        "for",
        "do",
        "this",
        "try",
        "else",
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
.field public static final case:I = 0x4

.field public static final do:F = 1.4E-45f

.field public static final else:I = 0x20

.field public static final for:F = Infinityf

.field public static final goto:Landroid/support/v4/qc0;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field public static final if:F = 3.4028235E38f

.field public static final new:F = -Infinityf

.field public static final try:F = NaNf


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/qc0;

    invoke-direct {v0}, Landroid/support/v4/qc0;-><init>()V

    sput-object v0, Landroid/support/v4/qc0;->goto:Landroid/support/v4/qc0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic break()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    return-void
.end method

.method public static synthetic case()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    return-void
.end method

.method public static synthetic catch()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    return-void
.end method

.method public static synthetic class()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    return-void
.end method

.method public static synthetic goto()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    return-void
.end method

.method public static synthetic if()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    return-void
.end method

.method public static synthetic new()V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.4"
    .end annotation

    return-void
.end method


# virtual methods
.method public final do()F
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0
.end method

.method public final else()F
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public final for()F
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final this()F
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0
.end method

.method public final try()F
    .locals 1

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    return v0
.end method
