.class public Landroid/support/v4/xf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final do:Lorg/bouncycastle/asn1/catch;

.field private final for:Lorg/bouncycastle/asn1/catch;

.field private final if:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v4/xf0;->new(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v4/xf0;->do(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/support/v4/xf0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/xf0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/xf0;->do:Lorg/bouncycastle/asn1/catch;

    iput-object p2, p0, Landroid/support/v4/xf0;->if:Lorg/bouncycastle/asn1/catch;

    iput-object p3, p0, Landroid/support/v4/xf0;->for:Lorg/bouncycastle/asn1/catch;

    return-void
.end method

.method private static do(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;
    .locals 1

    const-string v0, "12-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_512:Lorg/bouncycastle/asn1/catch;

    return-object p0

    :cond_0
    const-string v0, "12-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    sget-object p0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_256:Lorg/bouncycastle/asn1/catch;

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lorg/bouncycastle/asn1/catch;

    return-object p0
.end method

.method private static new(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;
    .locals 0

    invoke-static {p0}, Landroid/support/v4/j40;->try(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/xf0;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j40;->for(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public for()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xf0;->for:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public if()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xf0;->if:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xf0;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method
