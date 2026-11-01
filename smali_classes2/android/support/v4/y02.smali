.class public Landroid/support/v4/y02;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:Landroid/support/v4/y02;

.field public static final else:Landroid/support/v4/y02;

.field public static final goto:Landroid/support/v4/y02;

.field public static final new:Landroid/support/v4/y02;

.field public static final this:[Landroid/support/v4/y02;

.field public static final try:Landroid/support/v4/y02;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final do:I

.field public final for:Z

.field public final if:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroid/support/v4/y02;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroid/support/v4/y02;-><init>(IZZ)V

    sput-object v0, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    .line 2
    new-instance v3, Landroid/support/v4/y02;

    invoke-direct {v3, v2, v2, v2}, Landroid/support/v4/y02;-><init>(IZZ)V

    sput-object v3, Landroid/support/v4/y02;->try:Landroid/support/v4/y02;

    .line 3
    new-instance v4, Landroid/support/v4/y02;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v1, v1}, Landroid/support/v4/y02;-><init>(IZZ)V

    sput-object v4, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    .line 4
    new-instance v6, Landroid/support/v4/y02;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v2, v1}, Landroid/support/v4/y02;-><init>(IZZ)V

    sput-object v6, Landroid/support/v4/y02;->else:Landroid/support/v4/y02;

    .line 5
    new-instance v8, Landroid/support/v4/y02;

    const/4 v9, 0x4

    invoke-direct {v8, v9, v2, v1}, Landroid/support/v4/y02;-><init>(IZZ)V

    sput-object v8, Landroid/support/v4/y02;->goto:Landroid/support/v4/y02;

    const/4 v10, 0x5

    new-array v10, v10, [Landroid/support/v4/y02;

    aput-object v0, v10, v1

    aput-object v3, v10, v2

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 6
    sput-object v10, Landroid/support/v4/y02;->this:[Landroid/support/v4/y02;

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/y02;->do:I

    .line 3
    iput-boolean p2, p0, Landroid/support/v4/y02;->if:Z

    .line 4
    iput-boolean p3, p0, Landroid/support/v4/y02;->for:Z

    return-void
.end method
