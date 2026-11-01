.class public final Landroid/support/v4/pc2;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/v4/ki0;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/support/v4/pc2;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Landroid/support/v4/pc2;

.field public static final ONE:Landroid/support/v4/pc2;

.field public static final ZERO:Landroid/support/v4/pc2;

.field private static final do:J = 0x7fffffffffffffffL


# instance fields
.field private final value:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/pc2;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/pc2;-><init>(J)V

    sput-object v0, Landroid/support/v4/pc2;->ZERO:Landroid/support/v4/pc2;

    .line 2
    new-instance v0, Landroid/support/v4/pc2;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/pc2;-><init>(J)V

    sput-object v0, Landroid/support/v4/pc2;->ONE:Landroid/support/v4/pc2;

    .line 3
    new-instance v0, Landroid/support/v4/pc2;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/pc2;-><init>(J)V

    sput-object v0, Landroid/support/v4/pc2;->MAX_VALUE:Landroid/support/v4/pc2;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput-wide p1, p0, Landroid/support/v4/pc2;->value:J

    return-void
.end method

.method public static fromLongBits(J)Landroid/support/v4/pc2;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/pc2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/pc2;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(J)Landroid/support/v4/pc2;
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned long value"

    .line 1
    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/af1;->throw(ZLjava/lang/String;J)V

    .line 2
    invoke-static {p0, p1}, Landroid/support/v4/pc2;->fromLongBits(J)Landroid/support/v4/pc2;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/pc2;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    const/16 v0, 0xa

    .line 7
    invoke-static {p0, v0}, Landroid/support/v4/pc2;->valueOf(Ljava/lang/String;I)Landroid/support/v4/pc2;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;I)Landroid/support/v4/pc2;
    .locals 0
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 8
    invoke-static {p0, p1}, Lcom/google/common/primitives/while;->break(Ljava/lang/String;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/support/v4/pc2;->fromLongBits(J)Landroid/support/v4/pc2;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Landroid/support/v4/pc2;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 3
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned long value"

    .line 5
    invoke-static {v0, v1, p0}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v4/pc2;->fromLongBits(J)Landroid/support/v4/pc2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 6

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Landroid/support/v4/pc2;->value:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/16 v1, 0x3f

    .line 3
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public compareTo(Landroid/support/v4/pc2;)I
    .locals 4

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    iget-wide v2, p1, Landroid/support/v4/pc2;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/while;->do(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/pc2;

    invoke-virtual {p0, p1}, Landroid/support/v4/pc2;->compareTo(Landroid/support/v4/pc2;)I

    move-result p1

    return p1
.end method

.method public dividedBy(Landroid/support/v4/pc2;)Landroid/support/v4/pc2;
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/pc2;

    iget-wide v2, p1, Landroid/support/v4/pc2;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/while;->for(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v4/pc2;->fromLongBits(J)Landroid/support/v4/pc2;

    move-result-object p1

    return-object p1
.end method

.method public doubleValue()D
    .locals 7

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, v0

    long-to-double v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    :cond_0
    return-wide v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroid/support/v4/pc2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/support/v4/pc2;

    .line 3
    iget-wide v2, p0, Landroid/support/v4/pc2;->value:J

    iget-wide v4, p1, Landroid/support/v4/pc2;->value:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public floatValue()F
    .locals 6

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v2, v0

    long-to-float v2, v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    const/high16 v0, 0x5f000000

    add-float/2addr v2, v0

    :cond_0
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/break;->catch(J)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    return-wide v0
.end method

.method public minus(Landroid/support/v4/pc2;)Landroid/support/v4/pc2;
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/pc2;

    iget-wide v2, p1, Landroid/support/v4/pc2;->value:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/support/v4/pc2;->fromLongBits(J)Landroid/support/v4/pc2;

    move-result-object p1

    return-object p1
.end method

.method public mod(Landroid/support/v4/pc2;)Landroid/support/v4/pc2;
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/pc2;

    iget-wide v2, p1, Landroid/support/v4/pc2;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/while;->catch(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v4/pc2;->fromLongBits(J)Landroid/support/v4/pc2;

    move-result-object p1

    return-object p1
.end method

.method public plus(Landroid/support/v4/pc2;)Landroid/support/v4/pc2;
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/pc2;

    iget-wide v2, p1, Landroid/support/v4/pc2;->value:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/support/v4/pc2;->fromLongBits(J)Landroid/support/v4/pc2;

    move-result-object p1

    return-object p1
.end method

.method public times(Landroid/support/v4/pc2;)Landroid/support/v4/pc2;
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/pc2;

    iget-wide v2, p1, Landroid/support/v4/pc2;->value:J

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Landroid/support/v4/pc2;->fromLongBits(J)Landroid/support/v4/pc2;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/while;->throw(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget-wide v0, p0, Landroid/support/v4/pc2;->value:J

    invoke-static {v0, v1, p1}, Lcom/google/common/primitives/while;->while(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
