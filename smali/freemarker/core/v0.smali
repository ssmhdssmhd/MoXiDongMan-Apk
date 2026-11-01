.class Lfreemarker/core/v0;
.super Lfreemarker/core/t0;
.source "SourceFile"


# static fields
.field public static final for:Lfreemarker/core/v0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/v0;

    invoke-direct {v0}, Lfreemarker/core/v0;-><init>()V

    sput-object v0, Lfreemarker/core/v0;->for:Lfreemarker/core/v0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;ILjava/util/Locale;Ljava/util/TimeZone;ZLfreemarker/core/d0;)Lfreemarker/core/z3;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xb2;,
            Landroid/support/v4/vn0;
        }
    .end annotation

    .line 1
    new-instance p3, Lfreemarker/core/u0;

    const/4 v2, 0x3

    move-object v0, p3

    move-object v1, p1

    move v3, p2

    move v4, p5

    move-object v5, p4

    move-object v6, p0

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lfreemarker/core/u0;-><init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lfreemarker/core/t0;Lfreemarker/core/d0;)V

    return-object p3
.end method
