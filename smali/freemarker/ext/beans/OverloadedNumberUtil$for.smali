.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$for;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "for"
.end annotation


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedNumberUtil$else;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$else;->n:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$else;->n:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method
