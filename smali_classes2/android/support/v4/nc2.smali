.class public final Landroid/support/v4/nc2;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/support/v4/nc2;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Landroid/support/v4/nc2;

.field public static final ONE:Landroid/support/v4/nc2;

.field public static final ZERO:Landroid/support/v4/nc2;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object v0

    sput-object v0, Landroid/support/v4/nc2;->ZERO:Landroid/support/v4/nc2;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object v0

    sput-object v0, Landroid/support/v4/nc2;->ONE:Landroid/support/v4/nc2;

    const/4 v0, -0x1

    .line 3
    invoke-static {v0}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object v0

    sput-object v0, Landroid/support/v4/nc2;->MAX_VALUE:Landroid/support/v4/nc2;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    and-int/lit8 p1, p1, -0x1

    .line 2
    iput p1, p0, Landroid/support/v4/nc2;->value:I

    return-void
.end method

.method public static fromIntBits(I)Landroid/support/v4/nc2;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/nc2;

    invoke-direct {v0, p0}, Landroid/support/v4/nc2;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(J)Landroid/support/v4/nc2;
    .locals 3

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned integer value"

    .line 1
    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/af1;->throw(ZLjava/lang/String;J)V

    long-to-int p1, p0

    .line 2
    invoke-static {p1}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/nc2;
    .locals 1

    const/16 v0, 0xa

    .line 7
    invoke-static {p0, v0}, Landroid/support/v4/nc2;->valueOf(Ljava/lang/String;I)Landroid/support/v4/nc2;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;I)Landroid/support/v4/nc2;
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/google/common/primitives/throw;->catch(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Landroid/support/v4/nc2;
    .locals 2

    .line 3
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned integer value"

    .line 5
    invoke-static {v0, v1, p0}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/nc2;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Landroid/support/v4/nc2;)I
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    iget p1, p1, Landroid/support/v4/nc2;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/throw;->if(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/nc2;

    invoke-virtual {p0, p1}, Landroid/support/v4/nc2;->compareTo(Landroid/support/v4/nc2;)I

    move-result p1

    return p1
.end method

.method public dividedBy(Landroid/support/v4/nc2;)Landroid/support/v4/nc2;
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/nc2;

    iget p1, p1, Landroid/support/v4/nc2;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/throw;->new(II)I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object p1

    return-object p1
.end method

.method public doubleValue()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/nc2;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroid/support/v4/nc2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/support/v4/nc2;

    .line 3
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    iget p1, p1, Landroid/support/v4/nc2;->value:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/nc2;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    invoke-static {v0}, Lcom/google/common/primitives/throw;->import(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public minus(Landroid/support/v4/nc2;)Landroid/support/v4/nc2;
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/nc2;

    iget p1, p1, Landroid/support/v4/nc2;->value:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object p1

    return-object p1
.end method

.method public mod(Landroid/support/v4/nc2;)Landroid/support/v4/nc2;
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/nc2;

    iget p1, p1, Landroid/support/v4/nc2;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/throw;->class(II)I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object p1

    return-object p1
.end method

.method public plus(Landroid/support/v4/nc2;)Landroid/support/v4/nc2;
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/nc2;

    iget p1, p1, Landroid/support/v4/nc2;->value:I

    add-int/2addr v0, p1

    invoke-static {v0}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object p1

    return-object p1
.end method

.method public times(Landroid/support/v4/nc2;)Landroid/support/v4/nc2;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/nc2;

    iget p1, p1, Landroid/support/v4/nc2;->value:I

    mul-int v0, v0, p1

    invoke-static {v0}, Landroid/support/v4/nc2;->fromIntBits(I)Landroid/support/v4/nc2;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/nc2;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget v0, p0, Landroid/support/v4/nc2;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/throw;->public(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
