.class public Landroid/support/v4/sv;
.super Ljava/security/spec/ECParameterSpec;
.source "SourceFile"


# instance fields
.field private final do:[B

.field private final if:Landroid/support/v4/e40;


# direct methods
.method public constructor <init>(Landroid/support/v4/e40;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v4/t30;->this(Landroid/support/v4/e40;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {}, Landroid/support/v4/uv;->try()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/sv;-><init>(Landroid/support/v4/e40;Ljava/security/spec/ECParameterSpec;[B)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/e40;Ljava/security/spec/ECParameterSpec;[B)V
    .locals 3

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p2

    invoke-direct {p0, v0, v1, v2, p2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Landroid/support/v4/sv;->if:Landroid/support/v4/e40;

    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/sv;->do:[B

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/sv;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v4/sv;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/sv;

    iget-object v0, p0, Landroid/support/v4/sv;->if:Landroid/support/v4/e40;

    iget-object p1, p1, Landroid/support/v4/sv;->if:Landroid/support/v4/e40;

    invoke-virtual {v0, p1}, Landroid/support/v4/e40;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/sv;->if:Landroid/support/v4/e40;

    invoke-virtual {v0}, Landroid/support/v4/e40;->hashCode()I

    move-result v0

    return v0
.end method
