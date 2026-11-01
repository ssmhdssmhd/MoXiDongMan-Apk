.class public Lorg/bouncycastle/jcajce/spec/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/spec/do$if;
    }
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private final for:Ljava/security/spec/AlgorithmParameterSpec;

.field private final if:I

.field private final new:Landroid/support/v4/b1;

.field private try:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Landroid/support/v4/b1;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/do;->do:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/jcajce/spec/do;->if:I

    iput-object p3, p0, Lorg/bouncycastle/jcajce/spec/do;->for:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p4, p0, Lorg/bouncycastle/jcajce/spec/do;->new:Landroid/support/v4/b1;

    iput-object p5, p0, Lorg/bouncycastle/jcajce/spec/do;->try:[B

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Landroid/support/v4/b1;[BLorg/bouncycastle/jcajce/spec/do$do;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/jcajce/spec/do;-><init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Landroid/support/v4/b1;[B)V

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/do;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/spec/do;->if:I

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/do;->do:Ljava/lang/String;

    return-object v0
.end method

.method public new()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/do;->try:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/do;->for:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method
