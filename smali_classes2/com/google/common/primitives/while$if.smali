.class final Lcom/google/common/primitives/while$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/while;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static final do:[J

.field public static final for:[I

.field public static final if:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x25

    new-array v1, v0, [J

    .line 1
    sput-object v1, Lcom/google/common/primitives/while$if;->do:[J

    new-array v1, v0, [I

    .line 2
    sput-object v1, Lcom/google/common/primitives/while$if;->if:[I

    new-array v0, v0, [I

    .line 3
    sput-object v0, Lcom/google/common/primitives/while$if;->for:[I

    .line 4
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    :goto_0
    const/16 v2, 0x24

    if-gt v1, v2, :cond_0

    .line 5
    sget-object v2, Lcom/google/common/primitives/while$if;->do:[J

    int-to-long v3, v1

    const-wide/16 v5, -0x1

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/while;->for(JJ)J

    move-result-wide v7

    aput-wide v7, v2, v1

    .line 6
    sget-object v2, Lcom/google/common/primitives/while$if;->if:[I

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/while;->catch(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    aput v4, v2, v1

    .line 7
    sget-object v2, Lcom/google/common/primitives/while$if;->for:[I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(JII)Z
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_3

    .line 1
    sget-object v1, Lcom/google/common/primitives/while$if;->do:[J

    aget-wide v2, v1, p3

    const/4 v4, 0x0

    cmp-long v5, p0, v2

    if-gez v5, :cond_0

    return v4

    .line 2
    :cond_0
    aget-wide v2, v1, p3

    cmp-long v1, p0, v2

    if-lez v1, :cond_1

    return v0

    .line 3
    :cond_1
    sget-object p0, Lcom/google/common/primitives/while$if;->if:[I

    aget p0, p0, p3

    if-le p2, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method
