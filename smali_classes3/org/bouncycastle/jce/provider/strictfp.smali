.class Lorg/bouncycastle/jce/provider/strictfp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final if:Lorg/bouncycastle/jce/provider/strictfp;


# instance fields
.field private do:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/provider/strictfp;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/strictfp;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/jce/provider/strictfp;->if:Lorg/bouncycastle/jce/provider/strictfp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/strictfp;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jce/provider/strictfp;->do:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ll1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/if;->import()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jce/provider/strictfp;->do:I

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/jce/provider/strictfp;)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/strictfp;->do:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/strictfp;->if()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/jce/provider/strictfp;->do:I

    return-void
.end method

.method public for(Lorg/bouncycastle/jce/provider/strictfp;)Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/jce/provider/strictfp;->do:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/strictfp;->if()I

    move-result p1

    iget v1, p0, Lorg/bouncycastle/jce/provider/strictfp;->do:I

    xor-int/2addr p1, v1

    or-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public if()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/strictfp;->do:I

    return v0
.end method

.method public new(Lorg/bouncycastle/jce/provider/strictfp;)Lorg/bouncycastle/jce/provider/strictfp;
    .locals 3

    new-instance v0, Lorg/bouncycastle/jce/provider/strictfp;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/strictfp;-><init>()V

    new-instance v1, Lorg/bouncycastle/jce/provider/strictfp;

    iget v2, p0, Lorg/bouncycastle/jce/provider/strictfp;->do:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/strictfp;->if()I

    move-result p1

    and-int/2addr p1, v2

    invoke-direct {v1, p1}, Lorg/bouncycastle/jce/provider/strictfp;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/strictfp;->do(Lorg/bouncycastle/jce/provider/strictfp;)V

    return-object v0
.end method

.method public try()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/jce/provider/strictfp;->do:I

    sget-object v1, Lorg/bouncycastle/jce/provider/strictfp;->if:Lorg/bouncycastle/jce/provider/strictfp;

    iget v1, v1, Lorg/bouncycastle/jce/provider/strictfp;->do:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
