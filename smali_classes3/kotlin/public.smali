.class Lkotlin/public;
.super Lkotlin/native;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0015\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u001a\r\u0010\u0007\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\u0008\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\t\u001a\u00020\u0000*\u00020\u0000H\u0087\n\u001a\r\u0010\n\u001a\u00020\u0000*\u00020\u0000H\u0087\u0008\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\u000c\u001a\u0015\u0010\u000c\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\u000c\u001a\u0015\u0010\r\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\u000c\u001a\u0015\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0087\u000c\u001a\u0015\u0010\u0011\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0087\u000c\u001a\r\u0010\u0012\u001a\u00020\u0000*\u00020\u000eH\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u0000*\u00020\u0013H\u0087\u0008\u001a\r\u0010\u0016\u001a\u00020\u0015*\u00020\u0000H\u0087\u0008\u001a!\u0010\u001a\u001a\u00020\u0015*\u00020\u00002\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0018H\u0087\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Ljava/math/BigInteger;",
        "other",
        "throws",
        "static",
        "package",
        "native",
        "default",
        "interface",
        "public",
        "import",
        "return",
        "while",
        "switch",
        "protected",
        "",
        "n",
        "extends",
        "finally",
        "strictfp",
        "",
        "volatile",
        "Ljava/math/BigDecimal;",
        "private",
        "scale",
        "Ljava/math/MathContext;",
        "mathContext",
        "abstract",
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

    invoke-direct {p0}, Lkotlin/native;-><init>()V

    return-void
.end method

.method private static final abstract(Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    return-object v0
.end method

.method public static synthetic continue(Ljava/math/BigInteger;ILjava/math/MathContext;ILjava/lang/Object;)Ljava/math/BigDecimal;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 1
    sget-object p2, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    const-string p3, "MathContext.UNLIMITED"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_1
    new-instance p3, Ljava/math/BigDecimal;

    invoke-direct {p3, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    return-object p3
.end method

.method private static final default(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.1"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$rem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "this.remainder(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final extends(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "this.shiftLeft(n)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final finally(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "this.shiftRight(n)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final import(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$dec"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string v0, "this.subtract(BigInteger.ONE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final interface(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$unaryMinus"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    const-string v0, "this.negate()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final native(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$div"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "this.divide(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final package(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$times"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "this.multiply(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final private(Ljava/math/BigInteger;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static final protected(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "this.xor(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final public(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$inc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string v0, "this.add(BigInteger.ONE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final return(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    const-string v0, "this.not()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final static(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$minus"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "this.subtract(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final strictfp(I)Ljava/math/BigInteger;
    .locals 2
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const-string v0, "BigInteger.valueOf(this.toLong())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final switch(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "this.or(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final throws(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    const-string v0, "$this$plus"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "this.add(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final volatile(J)Ljava/math/BigInteger;
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "BigInteger.valueOf(this)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final while(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-string p1, "this.and(other)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
