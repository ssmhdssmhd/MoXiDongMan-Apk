.class Lkotlin/native;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u001a\u0015\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\r\u0010\u0007\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\u0008\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\t\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\u000b\u001a\u00020\u0000*\u00020\nH\u0087\u0008\u001a\u0015\u0010\u000e\u001a\u00020\u0000*\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0087\u0008\u001a\r\u0010\u0010\u001a\u00020\u0000*\u00020\u000fH\u0087\u0008\u001a\u0015\u0010\u0011\u001a\u00020\u0000*\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000cH\u0087\u0008\u001a\r\u0010\u0013\u001a\u00020\u0000*\u00020\u0012H\u0087\u0008\u001a\u0015\u0010\u0014\u001a\u00020\u0000*\u00020\u00122\u0006\u0010\r\u001a\u00020\u000cH\u0087\u0008\u001a\r\u0010\u0016\u001a\u00020\u0000*\u00020\u0015H\u0087\u0008\u001a\u0015\u0010\u0017\u001a\u00020\u0000*\u00020\u00152\u0006\u0010\r\u001a\u00020\u000cH\u0087\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Ljava/math/BigDecimal;",
        "other",
        "try",
        "new",
        "else",
        "if",
        "case",
        "throw",
        "for",
        "do",
        "",
        "class",
        "Ljava/math/MathContext;",
        "mathContext",
        "const",
        "",
        "final",
        "super",
        "",
        "break",
        "catch",
        "",
        "goto",
        "this",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xs = "kotlin/NumbersKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final break(F)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final case(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$rem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "this.remainder(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final catch(FLjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    return-object v0
.end method

.method private static final class(I)Ljava/math/BigDecimal;
    .locals 2
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    const-string v0, "BigDecimal.valueOf(this.toLong())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final const(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(ILjava/math/MathContext;)V

    return-object v0
.end method

.method private static final do(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$dec"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string v0, "this.subtract(BigDecimal.ONE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final else(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$times"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "this.multiply(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final final(J)Ljava/math/BigDecimal;
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "BigDecimal.valueOf(this)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final for(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$inc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string v0, "this.add(BigDecimal.ONE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final goto(D)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final if(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$div"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "this.divide(other, RoundingMode.HALF_EVEN)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final new(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$minus"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "this.subtract(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final super(JLjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(JLjava/math/MathContext;)V

    return-object v0
.end method

.method private static final this(DLjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    return-object v0
.end method

.method private static final throw(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$unaryMinus"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    const-string v0, "this.negate()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final try(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$plus"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    const-string p1, "this.add(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
