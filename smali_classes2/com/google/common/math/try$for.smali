.class final Lcom/google/common/math/try$for;
.super Lcom/google/common/math/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# static fields
.field public static final do:Lcom/google/common/math/try$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/math/try$for;

    invoke-direct {v0}, Lcom/google/common/math/try$for;-><init>()V

    sput-object v0, Lcom/google/common/math/try$for;->do:Lcom/google/common/math/try$for;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/math/try;-><init>()V

    return-void
.end method


# virtual methods
.method public else()D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public for()Lcom/google/common/math/try;
    .locals 0

    return-object p0
.end method

.method public goto(D)D
    .locals 0

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public new()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NaN"

    return-object v0
.end method

.method public try()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
