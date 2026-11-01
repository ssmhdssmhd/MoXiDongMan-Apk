.class public Lorg/bouncycastle/jcajce/do$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private case:Z

.field private final do:Ljava/security/cert/CRLSelector;

.field private for:Z

.field private if:Z

.field private new:Ljava/math/BigInteger;

.field private try:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/CRLSelector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/do$if;->if:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/do$if;->for:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jcajce/do$if;->new:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/do$if;->try:[B

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/do$if;->case:Z

    invoke-interface {p1}, Ljava/security/cert/CRLSelector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CRLSelector;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/do$if;->do:Ljava/security/cert/CRLSelector;

    return-void
.end method

.method public static synthetic case(Lorg/bouncycastle/jcajce/do$if;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/do$if;->case:Z

    return p0
.end method

.method public static synthetic do(Lorg/bouncycastle/jcajce/do$if;)Ljava/security/cert/CRLSelector;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/do$if;->do:Ljava/security/cert/CRLSelector;

    return-object p0
.end method

.method public static synthetic for(Lorg/bouncycastle/jcajce/do$if;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/do$if;->for:Z

    return p0
.end method

.method public static synthetic if(Lorg/bouncycastle/jcajce/do$if;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/do$if;->if:Z

    return p0
.end method

.method public static synthetic new(Lorg/bouncycastle/jcajce/do$if;)Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/do$if;->new:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static synthetic try(Lorg/bouncycastle/jcajce/do$if;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/do$if;->try:[B

    return-object p0
.end method


# virtual methods
.method public break([B)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/do$if;->try:[B

    return-void
.end method

.method public catch(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/do$if;->case:Z

    return-void
.end method

.method public class(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/do$if;->new:Ljava/math/BigInteger;

    return-void
.end method

.method public else()Lorg/bouncycastle/jcajce/do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/jcajce/do<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jcajce/do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/do;-><init>(Lorg/bouncycastle/jcajce/do$if;Lorg/bouncycastle/jcajce/do$do;)V

    return-object v0
.end method

.method public goto(Z)Lorg/bouncycastle/jcajce/do$if;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/do$if;->for:Z

    return-object p0
.end method

.method public this(Z)Lorg/bouncycastle/jcajce/do$if;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/do$if;->if:Z

    return-object p0
.end method
